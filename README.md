# Bash Script Collection

Welcome to My Bash Script Collection repository! This repository contains a collection of useful Bash scripts that I have created for various purposes. These scripts are designed to automate tasks, simplify workflows, and improve productivity in a Linux environment.

Feel free to explore the scripts and use them according to your needs. Each script is self-contained and focuses on a specific task. You can find detailed information about each script within the script files themselves.

## Table of Contents

- [Scripts](#scripts)
- [Quick Setup](#quick-setup)
- [Manual Setup](#manual-setup)
- [Contributing](#contributing)
- [License](#license)

## Scripts

Here's a list of scripts available in this repository:

1. powersave - Power saving tweaks
2. 0x0 - Command-line tool for uploading file/url/standard-output to 0x0.st
3. jpg2heic - Script that converts all .jpg format in current directory to .heic format.
4. heic2jpg - Script that converts all .heic format in current directory to .jpg format.
5. set-tdp - Script that sets tdp for ryzen processors using ryzenadj.
6. copy - Script that copies the input which is passed through pipe.
7. extract - Script that extracts various archive file formats based on their extension.
8. extract-audio - Script that extracts audio from video using ffmpeg.
9. add-ssh-key - Script that add public SSH key to authorized_keys for SSH key-based authentication.
10. compress - script that highly compresses files and folders using 7z.

Please refer to the comments within each script file for a detailed explanation of its purpose, usage, and any requirements or dependencies.

## Quick Setup
1. Clone the repository to your local machine using the following command:

   ```bash
   git clone https://github.com/jothi-prasath/bash-scripts.git
   ```
2. Navigate to the script's directory:
    ```bash
    cd bash-scripts
    ```
3. Symbolic link all the scripts into your system:
    ```bash
    sudo ./linker.sh
    ```
    The linker.sh script creates symbolic links from the current folder's scripts to the /usr/local/bin directory, allowing you to execute the scripts from anywhere in the terminal by simply typing their names. This method enables easy upgrades using git pull in the future.

## Manual Setup

To use any of the scripts in this repository, follow these steps:

1. Clone the repository to your local machine using the following command:

   ```bash
   git clone https://github.com/jothi-prasath/bash-scripts.git
   ```
2. Navigate to the script's directory:
    ```bash
    cd bash-scripts
    ```
3. Run the script:
    ```bash
    ./script-name
    ```
4. (optional) If you want you can directly copy these scripts to your system
    ```bash
    sudo cp -pv !(.git|.gitignore|README.md|LICENSE|*.sh) /usr/local/bin
    ```
    After completing this steps, you should be able to execute the scripts from anywhere in the terminal by simply typing their names.

    Please make sure to read the comments within the script file for any additional requirements or instructions specific to that script.

## Dependency
Some of the scripts in this repository may have dependencies on external tools or packages. Before running these scripts, make sure you have the necessary dependencies installed on your system. The specific dependencies required for each script can be found within the individual script files themselves.

In future I will try to make these scripts to auto install the required dependencies when needed. 

## Contributing
Contributions to this repository are welcome! If you have a useful Bash script that you would like to share, feel free to open a pull request. Before submitting a pull request, make sure to:

* Provide a clear description of the script's purpose and functionality.
* Follow consistent coding conventions and style guidelines.
* Test the script thoroughly to ensure it works as expected.
* Update the README file with the necessary details about the new script.
Together, we can expand the collection and make it even more useful for the community!

## License
This repository is licensed under the MIT License. You are free to modify, distribute, and use the scripts in this repository in accordance with the terms of the license.
