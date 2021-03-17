#! /bin/bash 

cd wp-content/plugins

apt update
apt install wget zip


#installs the wp-cli tool for easy wp management 
wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod u+x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

#installs the Contact Form 7 plugin
wget https://github.com/takayukister/contact-form-7/archive/v5.1.6.zip
#installs the plugin
mv v5.1.6.zip contact-form-7.zip
wp plugin install contact-form-7.zip --allow-root --activate

#installs powerpress plugin
wget https://downloads.wordpress.org/plugin/powerpress.8.1.zip
wp plugin install powerpress.8.1.zip --allow-root --activate

#duplicator plugin/ arbitrary file download
wget https://downloads.wordpress.org/plugin/duplicator.1.3.26.zip
wp plugin install duplicator.1.3.26.zip --allow-root --activate

#woocommerce, user creation
wget https://downloads.wordpress.org/plugin/woocommerce.3.4.5.zip
wp plugin install woocommerce.3.4.5.zip --allow-root --activate

#Modern Events Calendar Lite
wget https://downloads.wordpress.org/plugin/modern-events-calendar-lite.5.0.2.zip
wp plugin install modern-events-calendar-lite.5.0.2.zip --allow-root --activate

#Ninja forms, many vulns in this one
wget https://downloads.wordpress.org/plugin/ninja-forms.2.9.58.zip
wp plugin install ninja-forms.2.9.58.zip --allow-root --activate

#install the newspaper x theme
wget https://downloads.wordpress.org/theme/newspaper-x.1.3.1.zip
wp theme install newspaper-x.1.3.1.zip --allow-root --activate
