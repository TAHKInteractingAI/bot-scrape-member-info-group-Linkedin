# LinkedIn Group Scrapper
This script will scrape the Profile of users from the groups.

### Project Setup
* Download and install Git - [Official Download Link](https://git-scm.com/downloads)
* Install Python 3 - [Official Download Link](https://www.python.org/downloads/)
```bash
# Clone the Project
git clone https://github.com/ThanhNguyen03/Scrape_memIn4_in_LinkedInGroup.git
# Get into project directory
cd linkedin-profile-scrapper
# Make Virtual Env with python 3
python3 -m venv
# Activate Virtual Env
source venv/bin/activate
# Install requirements
pip install -r requirements.txt
# Update WebDriver
pip install webdriver-manager
``` 

### Scrape
<<<<<<< HEAD
Run with command
```bash
python src/scrape_profiles.py --email=enteryouremail --password=enteryourpassword --group_ids=entergroupid 
```
=======
Run logic code with command
```bash
python src/scrape_profiles.py --email=enteryouremail --password=enteryourpassword --group_ids=entergroupid 
```
Run the interface of application with command
```bash
python src/loginHandle.py 
```
Step 1: Open application and sign in your Linked Account
Step 2: Insert id group that you want to scrape information
Step 3: Your results will be saved in folder that you save this application, and that file name "Profiles + day_you_do_scrape".csv
>>>>>>> bc358eeda66562e8cfbb183804fa60a68e1e4cee

### Common Issues
Make sure you have compatible chrome driver version with installed chrome on your machine.
Link to Driver is [https://chromedriver.chromium.org/downloads](https://chromedriver.chromium.org/downloads)
<<<<<<< HEAD


### Known Issues:
* Initial 20 members of groups are going to scrape (Scroll pagination is pending)
* Generate separate file for each group
* Add option to don't scrape already scraped profiles
=======
>>>>>>> bc358eeda66562e8cfbb183804fa60a68e1e4cee
