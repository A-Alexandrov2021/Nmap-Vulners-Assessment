# Nmap-Vulners-Assessment

WebShot_AA

Install Required Gems:
Make sure you have the selenium-webdriver gem installed. If not, you can install it using:

gem install selenium-webdriver

To install Google Chrome and the Chrome WebDriver on Kali Linux, you can follow these steps:

Install Google Chrome:
Open a terminal and run the following commands to download and install Google Chrome:

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install -f


You'll also need the WebDriver for Google Chrome, which allows Selenium to control a Chrome browser instance. You can download the appropriate WebDriver for your Chrome version from the official website: https://sites.google.com/chromium.org/driver/

Install Chrome WebDriver:

Choose the version of the WebDriver that matches your installed version of Google Chrome.

Download the appropriate WebDriver executable.

Place the WebDriver executable in a directory that's included in your system's PATH. For example, you can copy it to /usr/local/bin:

sudo cp /path/to/chromedriver /usr/local/bin/
sudo chmod +x /usr/local/bin/chromedriver





