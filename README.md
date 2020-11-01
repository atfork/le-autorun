# LE-AUTORUN
This is a simple bash script for auto-renewing LetsEncrypt certificates using acme.sh. It forces acme.sh to perform a renewal on the specified domain, checks that the certificate is not expired, and then outputs the date/time the certificate is valid for based on an openssl check. All in a nicely formatted and colourful response in your terminal window. 

### How to Use:
1. Download the file and upload it to your server or copy/paste the code into a new file in a directory of your choice
2. Modify the `DOMAIN` and `DOMAIN_SSL` lines to match the domain you are renewing
3. Modify the location of the installation of acme.sh. Defaults to `/home/example/`
4. Modify the path where you want your files to be installed to. Defaults to my standard `/etc/nginx-acme.sh`
5. Run the script by typing `sh le-autorun.sh`
6. Check for any errors outputted by acme.sh

### Future Improvements:
1. Verify the acme.sh outputs to do more vigourous checking for failed recertications. 
2. Print all successful and failed certificate renewals from the script to a log file.
