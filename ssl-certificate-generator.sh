#!/bin/bash

# Bash shell script for generating self-signed certs.

echo "Please enter domain, followed by [ENTER]:"
read domain

echo "Please enter password, followed by [ENTER]:"
read -s pass

export PASSPHRASE=$pass

# Generate the CSR
openssl req \
    -new \
    -batch \
    -out $domain.csr \
    -config $domain.conf \
    -passout env:PASSPHRASE

#Generate the server private key
openssl rsa -in $domain.key -passin env:PASSPHRASE -out $domain.decrypt.key -passout env:PASSPHRASE

unset PASSPHRASE

