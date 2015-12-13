#Sweetscomplete

Every lab step is tagged in the git history.

##Install and configure phpmailer on ubuntu

###Install PHPMailer on ubuntu

Go to [PHP mailer on github](https://github.com/Synchro/PHPMailer) and download the zip package. Unzip and rename the
folder to PHPMailer. Transfer the folder to the linux box and copy the folder to the PEAR folder

    sudo cp -avr PHPMailer/ /usr/share/php/PEAR

You need to point PHP to the pear folder to avoid file not found errors. This is done with:

    ini_set('include_path', get_include_path() . PATH_SEPARATOR . '/usr/share/php/PEAR');

###Configure Postfix on ubuntu

Install necessary packages:

    sudo apt-get update
    sudo apt-get install postfix mailutils libsasl2-2 ca-certificates libsasl2-modules

Then open your postfix config file

    sudo nano /etc/postfix/main.cf

Make following changes:

    myhostname = www.eschool.be
    relayhost = mail1.infraxnet.be or relayhost = mail2.infraxnet.be

Save the file and update the php.ini ( /etc/php5/fpm/php.ini ) file with:

    sendmail_path = /usr/sbin/sendmail -t -i

Start postfix with:

    sudo /usr/sbin/postfix start

After this sending mail should work. You can tail the mail log with:

    tail -f /var/log/mail.log

**Note:** Every time the postfix config file is changed you need to reload postfix with:

    sudo /etc/init.d/postfix reload

You can test the mail server with:

    telnet mail1.infraxnet.be 25
