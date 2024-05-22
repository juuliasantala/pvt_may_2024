# IOS XE network as code

With attached scripts, you can retrieve and update CLI configuration on your IOS XE device using NETCONF RPC messages.

## Setup

1. Complete the `pip install -r requirements.txt` at the root of this repository
1. create a file `env` from the `env.template`
    ```bash
    cp env.template env
    ```

1. Fill in your IOS XE data to the `env`.

1. Export the Environment variables
    ```bash
    source env 
    ```

## Running the script

1. Run the `get_iosxe_config.py` script - this will change the current CLI configuration to a new file `ios_xe_golden_config.txt`
```bash
python get_iosxe_config.py
```

1. Update your preferred parts in the configuration. **Note: anything you remove from the configuration WILL BE REMOVED from the IOS XE**.

1. Run the `update_iosxe_config.py` to replace your current configuration with the updated from the file.
```bash
python update_iosxe_config.py
```
