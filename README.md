# Code from Amsterdam PVT May 2024

This repository is used to share code examples presented in the Amsterdam PVT in May 2024.

## Before you start
If you do not have programming experience before hand, there are couple of steps you will need to cover before you can start trying the examples out.

### Prepare your developer environment
- Install Python version 3 for Python related code
- Install Terraform for Terraform related code
- Install Git
- Install a code editor, for example Visual Studio Code

### Clone the repository and install required libraries
When you have your developer environment up and running, make sure you install all libraries and modules required for your scripts. To keep your developer environment tidy, make sure to activate your virtual environment before installing the libraries.

Clone this repository to the environment in which your are working:
```bash
git clone https://github.com/juuliasantala/pvt_may_2024.git
```

Install the requirements to have all the necessary libraries for the code examples to work.

```bash
pip install -r requirements.txt 
```

### Set up environment variables

1. Create a file `env` from the `env.template`
    ```bash
    cp env.template env
    ```

1. Fill in the data to the `env` **based on which code examples you want to use**. For example, if you only use Meraki examples, then you can leave IOS XE and Catalyst Center blank.

1. Export the Environment variables
    ```bash
    source env 
    ```

## Authors & Maintainers
* Juulia Santala jusantal@cisco.com

## License
This project is licensed to you under the terms of the [Cisco Sample Code License](LICENSE).

