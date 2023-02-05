#!/bin/bash

echo "${SSH_KEY}" > /root/.ssh/id_rsa
chmod 600 /root/.ssh/id_rsa

/bin/bash