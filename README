## Synopsis

This project aim to provide script to generate certificate ssl files for request to Digicert CA.

##Usage script

Before to launch the script, please ensure you have the <domain.conf> in the same folder with the right parameters

After edit the conf file and modify 
  - default_keyfile = domain.key
  - DNS.1.default = domain_name

Usage: ./ssl-certificate-generator.sh
	After the script ask you the domain name and the password

At the end of the script, we should have 4 files in the folder : <domain>.conf, <domain>.csr (request file to send to DigiCert), <domain>.key (Public Key), <domain>.decrypt.key (Private key never forward)
## Files

Script : Use to generate certificate request and ssl files
domain.conf : contains all parameters to generate ssl conf files (hostname, key, dns entries)
