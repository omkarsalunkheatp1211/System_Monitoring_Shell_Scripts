# System Monitoring Scripts

This repository contains two bash scripts for monitoring system resources on a Linux system.

## Introduction

The scripts `fs_status.sh` and `ram_status.sh` monitor filesystem disk space and RAM usage, respectively, and send email alerts if certain thresholds are exceeded.

## Features

- `fs_status.sh`:
  - Monitors free filesystem space on the disk.
  - Sends email alerts if disk space falls below a certain threshold.

- `ram_status.sh`:
  - Monitors free RAM space.
  - Sends email alerts if RAM usage exceeds a certain threshold.

## Getting Started

Instructions on how to use the scripts.

### Prerequisites

- Bash shell
- Mail utility (e.g., `mailutils` package on Debian-based systems)

### Installation

1. Clone the repository to your local machine.
2. Ensure execute permissions for the scripts (`chmod +x fs_status.sh ram_status.sh`).

### Usage

#### `fs_status.sh`

1. Run `./fs_status.sh` to monitor filesystem disk space.
2. Adjust the threshold in the script as needed.
3. Ensure proper configuration of the email recipient.

#### `ram_status.sh`

1. Run `./ram_status.sh` to monitor RAM usage.
2. Adjust the threshold in the script as needed.
3. Ensure proper configuration of the email recipient.

Make sure both scripts are set up in cron jobs or scheduled tasks for periodic monitoring.

For any further customization or automation, feel free to modify the scripts according to your requirements.

If you have any questions or need assistance, please refer to the script documentation or open an issue in the repository.
