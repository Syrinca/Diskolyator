# Diskolyator
<p align="center">
  <img src="https://github.com/Syrinca/Diskolyator/assets/165695271/38391f5f-a6d7-4e93-95fb-15cff529e338" alt="Logo">

### Purpose
This script is designed to automatically remove all partitions on each disk in the system using the diskpart tool in the Windows operating system command line.

### Usage
1. Run the script via bat or exe.
2. The script will automatically detect all disks in the system and remove all their partitions.

### Detailed Operation Description
1. The script starts by turning off command output in the command line using the `@echo off` command to provide a cleaner output.

2. Then the script initiates a `for` loop that performs the following actions:
   - It sends the `list disk` command to `diskpart` and filters the output using `findstr` to find lines containing disk information.
   - For each line with disk information, the script extracts the disk number and saves it in the variable `%%a`.

3. For each found disk, the script performs the following actions:
   - Selects the disk using the `select disk %%a` command, where `%%a` is the disk number.
   - Deletes all partitions on the selected disk using the `clean` command.
   - Exits `diskpart` using the `exit` command.

4. After completing operations on all disks, the script terminates its execution.

### Notes
- Please be cautious when using this script as it will lead to the deletion of all partitions on each disk.
- It is recommended to create a backup of important data before running this script.

### Requirements
- Windows operating system.

### Author
Script developed by Syrinca.

### License
This script is distributed under The GNU General Public License v3.0.
