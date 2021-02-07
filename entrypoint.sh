#!/bin/bash
chown -R tor:tor /var/log/tor
su-exec tor tor 2>&1
