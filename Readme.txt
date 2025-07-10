Staff Scheduling System – README.txt (Windows + macOS Setup Guide)

This project is a hospital-based scheduling system built using Python Flask, MySQL, HTML, CSS, and JavaScript. It features OTP-secured login, real-time shift scheduling, staff requests, role-based notifications, and reporting tools.


🛠️ WINDOWS SETUP INSTRUCTIONS:


1. Extract the project ZIP to a folder, e.g.:
   C:\Users\YourName\Documents\StaffSchedulingSystem

2. Open Command Prompt (CMD):
   Press `Win + R`, type `cmd`, hit Enter

3. Navigate to the project folder:
   cd C:\Users\YourName\Documents\StaffSchedulingSystem

4. Create a virtual environment:
   python -m venv venv

5. Activate the virtual environment:
   venv\Scripts\activate

6. Install required Python packages:
   pip install -r requirements.txt

7. Set up MySQL Database:
   - Install XAMPP → Start MySQL → Open phpMyAdmin Install XAMPP: https://www.apachefriends.org
   - Create database: `hospital_db`
   - Import SQL file (if provided)

8. Edit `config.py`:
   ```python
   DB_USER = 'root'
   DB_PASSWORD = ''
   DB_NAME = 'hospital_db'
   Run the Flask app:
   python app.py

Open browser and go to:
http://localhost:5000/


macOS SETUP INSTRUCTIONS:


Extract the ZIP to a folder, e.g.:
~/Documents/StaffSchedulingSystem

Open Terminal (Cmd + Space → search 'Terminal')

Navigate to the project folder:
cd ~/Documents/StaffSchedulingSystem

Create a virtual environment:
python3 -m venv venv

Activate the virtual environment:
source venv/bin/activate

Install required Python packages:
pip3 install -r requirements.txt

Set up MySQL:

Download: https://www.apachefriends.org (XAMPP)

Use Sequel Ace, MySQL Workbench, or Terminal to:

Create DB hospital_db

Import SQL dump (optional) (so far is needed to import to inside so that have the admin account but the email need to change to your email)

Update config.py:


DB_USER = 'root'
DB_PASSWORD = ''
DB_NAME = 'hospital_db'
Run the app:
python3 app.py

Open browser and visit:
http://localhost:5000/


TEST ACCOUNT:

Admin:

Username: admin

Password: konisha0811@gmail.com (this one is in the backup database Can change it in the Database that I had backup inside the folder for send you the OTP )if needed

OTP: Sent via Gmail (SMTP must be configured)


FEATURES TO TEST:


OTP-secured login & password reset

FullCalendar-based scheduling

Staff availability/request flows

Notifications: private, department, public

PDF/Excel exportable reports

Login history map and pie chart view


Dataset:

This system uses a self-created MySQL database (`hospital_db.sql`) for managing staff, schedules, and records.
Download from the main source code folder:

https://github.com/sha030811/Staff_Scheduling_System_FYP (Github)
https://drive.google.com/drive/folders/1p3EZxnTzaM0JCkmV7wJRfOEE6pdOR3ah?usp=sharing (Google Drive)




TOOLS USED:


Python 3.10+

Flask 2.x

MySQL or XAMPP

Visual Studio Code

Chrome/Firefox browser


SUPPORT:

Need help? Contact: konisha0811@gmail.com