# ============================================================
# Title:     Cyclistic Bike Share Data Analysis
# Author:    Gabrielius Ulanovas
# Date:      2025-04-15
# Purpose:   Load, clean, and analyse Cyclistic trip data
# ============================================================

# -----------------------------
# Setup
# -----------------------------

# Required packages
required_packages <- c("tidyverse", "janitor", "data.table", "lubridate", 
                       "readr", "DescTools", "stringr", "ggplot2")

# Install missing packages
install_missing <- required_packages[!required_packages %in% installed.packages()]
if (length(install_missing)) {
  install.packages(install_missing, repos = "https://cloud.r-project.org/")
}

# Load packages
invisible(lapply(required_packages, library, character.only = TRUE, quietly = TRUE))


# -----------------------------
# Load Data
# -----------------------------

# List all raw data files
all_files <- list.files("~/Case Study/csv/raw_data", full.names = TRUE)
print(all_files)

# Load only 2024 trip data files
trip_data_files <- list.files(
  path = "file - path", 
  pattern = "2024.*-divvy-tripdata\\.csv",
  full.names = TRUE
)

# Merge all data using data.table for performance
all_trips <- rbindlist(lapply(trip_data_files, fread))


# -----------------------------
# Initial Inspection
# -----------------------------

str(all_trips)
colnames(all_trips)


# -----------------------------
# Data Cleaning
# -----------------------------

# Rename columns for readability
all_trips <- all_trips %>%
  rename(
    trip_id = ride_id,
    bike_id = rideable_type,
    start_time = started_at,
    end_time = ended_at,
    from_station_name = start_station_name,
    from_station_id = start_station_id,
    to_station_name = end_station_name,
    to_station_id = end_station_id,
    usertype = member_casual
  )

# Check new column names
colnames(all_trips)

# Explore missing values in end_lat
all_trips %>%
  filter(is.na(end_lat)) %>%
  count(bike_id) %>%
  mutate(percent = round(n / nrow(all_trips) * 100, 2))

# Remove rows with missing end coordinates
cleaned_data <- all_trips %>%
  filter(!is.na(end_lat) & !is.na(end_lng))

# Confirm NA removal
sum(is.na(cleaned_data$end_lat))  # Should be 0
sum(is.na(cleaned_data$end_lng))  # Should be 0

# Rows removed due to missing data
rows_removed <- nrow(all_trips) - nrow(cleaned_data)
print(paste("Rows removed:", rows_removed))

# Update working dataset
all_trips <- cleaned_data

# Filter out rows with invalid time data
all_trips <- all_trips %>%
  filter(end_time > start_time)

# Verify dataset shape
dim(all_trips)


# -----------------------------
# Feature Engineering
# -----------------------------

# Create ride_length column (in minutes)
all_trips <- all_trips %>%
  mutate(
    ride_length = as.numeric(difftime(end_time, start_time, units = "mins")),
    ride_length = round(ride_length, 2)
  )

# Preview ride_length values
head(all_trips$ride_length)

# Summary statistics
max(all_trips$ride_length)
min(all_trips$ride_length)
mean(all_trips$ride_length)

# Remove entries with ride_length = 0
all_trips <- all_trips %>%
  filter(ride_length > 0)

# Create day_of_week column
all_trips <- all_trips %>%
  mutate(day_of_week = wday(start_time))

# Check day_of_week
head(all_trips$day_of_week)


# -----------------------------
# Basic Analysis
# -----------------------------

# Find most common day of week
mode_value <- Mode(all_trips$day_of_week)
print(paste("Most common ride day (1=Sunday):", mode_value))

# Percentage of rides on that day
percentage_on_mode_day <- all_trips %>%
  filter(day_of_week == mode_value) %>%
  summarise(percentage = round(n() / nrow(all_trips) * 100, 2)) %>%
  pull(percentage)

print(paste("Percentage on mode day:", percentage_on_mode_day, "%"))

# Breakdown by usertype on Saturday (7)
all_trips %>%
  filter(day_of_week == 7) %>%
  group_by(usertype) %>%
  summarise(
    percentage = round(n() / nrow(all_trips) * 100, 2),
    .groups = "drop"
  ) %>%
  mutate(percentage = paste0(percentage, "%")) %>%
  print()


# -----------------------------
# Save Cleaned Data
# -----------------------------

write_csv(
  all_trips,
  file = "path"
)