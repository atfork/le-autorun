# LE-AUTORUN
This is a simple bash script for auto-renewing LetsEncrypt certificates using acme.sh. It forces acme.sh to perform a renewal on the specified domain, checks that the certificate is not expired, and then outputs the date/time the certificate is valid for based on an openssl check. All in a nicely formatted and colourful response in your terminal window. 

### How to Use:
1. Download the file and upload it to your server or copy/paste the code into a new file in a directory of your choice
2. Modify the `DOMAIN` and `DOMAIN_SSL` lines to match the domain you are renewing
3. Modify the path where you want your files to be installed to. Defaults to my standard `/etc/nginx-acme.sh`
4. Run the script by typing `sudo sh le-autorun.sh`
5. Check for any errors outputted by acme.sh

### Future Improvements:
1. Verify the acme.sh outputs to do more vigourous checking for failed recertications. Currently just using openssl to check the validity status of the certificate currently installed, but this doesn't help if it fails to renew entirely (ie: you type the domain in wrong into the script). Old certificate is still likely to be valid and you would assume so for another 3 months if it had failed but given the SUCCESS response.

2. Print all successful and failed certificate renewals from the script to a log file.
