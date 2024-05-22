#!/usr/bin/env python
'''
Example script to get IOS XE CLI configuration using Netconf RPC messages.

#######################

Copyright (c) 2024 Cisco and/or its affiliates.
This software is licensed to you under the terms of the Cisco Sample
Code License, Version 1.1 (the "License"). You may obtain a copy of the
License at

               https://developer.cisco.com/docs/licenses

All use of the material herein must be in accordance with the terms of
the License. All rights not expressly granted by the License are
reserved. Unless required by applicable law or agreed to separately in
writing, software distributed under the License is distributed on an "AS
IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express
or implied.
'''

__copyright__ = "Copyright (c) 2024 Cisco and/or its affiliates."
__license__ = "Cisco Sample Code License, Version 1.1"
__author__ = "Juulia Santala"
__email__ = "jusantal@cisco.com"

import os
import lxml.etree as et
from ncclient import manager
import xmltodict

DEVICE = {
    "host": os.getenv("IOSXE_HOST") or None,
    "username": os.getenv("IOSXE_USERNAME") or None,
    "password": os.getenv("IOSXE_PASSWORD") or None
}

GET_CONFIG = '''
<get-modelled-config-clis xmlns="http://cisco.com/ns/yang/Cisco-IOS-XE-cli-rpc" />
'''

with manager.connect(
    host=DEVICE["host"],
    port=830,
    username=DEVICE["username"],
    password=DEVICE["password"],
    hostkey_verify=False,
    device_params={'name':'iosxe'}
    ) as connection:

    rpc_reply = connection.dispatch(et.fromstring(GET_CONFIG))
    parsed_reply = xmltodict.parse(rpc_reply.xml)
    configuration = parsed_reply["rpc-reply"]["result"]["#text"]

    with open("ios_xe_golden_config.txt", mode="w", encoding="utf-8") as file:
        file.write(configuration)
