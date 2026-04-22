# 📱 Attendance Manager

<div align="center">
  <a href="https://github.com/yashmakwana03/absent_message/releases/latest">
    <img src="https://img.shields.io/badge/Download_App_Demo-Android-3DDC84?style=for-the-badge&logo=android&logoColor=white" height="45" />
  </a>
</div>
<br>

> **Smart. Fast. Reliable.**
> An offline-first mobile application designed to streamline the attendance process for Class Representatives (CRs) and faculty. Built with Flutter & SQLite.

---

## 🚀 Overview & My Journey

**Attendance Manager** is a project born out of necessity.

As the **Class Representative (CR)** at RK University for the past four years, I have been responsible for taking attendance and generating absent messages for parent groups. Initially, I solved this by building a simple dosa  app using flutter and node js and mongodb. While it worked, it had limitations: no offline storage and no easy way to save datas.

In my **8th semester**, I learned Flutter as part of my curriculum and saw the perfect opportunity to upgrade my workflow. I built this app to replace my old app, adding **SQLite for offline access**, faster entry methods, and automated message generation.

Now, when faculty ask for attendance reviews, I can instantly provide HTML files or text summaries directly from my phone. This project reflects my journey from basic web development to full-stack mobile engineering.

## ✨ Key Features

- **⚡ Quick Actions:** Mark attendance for a whole class in seconds.
- **📊 Dashboard:** Real-time view of daily stats and shortcuts.
- **🔍 Smart Search:** Instantly find student records by name or ID.
- **📂 Local Database:** Powered by **SQLite** for instant loading and 100% offline access – a major upgrade from my previous web tool.
- **🛡️ Data Safety:** Built-in **Backup & Restore** functionality (`.db` files).
- **🎓 Student Management:** Add, edit, or delete student profiles and organize them by department.
- **📈 Analytics:** View attendance percentages per student or per class.
- **💬 Message Generation:** Auto-generate formatted absent messages for WhatsApp groups.
- **📤 Export Options:** Generate HTML files for faculty to fill online registers or text summaries for daily reviews.

---

## 📸 App Tour & Screenshots

### **1. Getting Started & Setup**
| **Splash Screen** | **Home Dashboard** | **1. Departments** | **2. Student Registry** |
|:---:|:---:|:---:|:---:|
| <img src="assets/screenshots/splash.jpeg" width="200" /> | <img src="assets/screenshots/home.jpeg" width="200" /> | <img src="assets/screenshots/1_dept.jpeg" width="200" /> | <img src="assets/screenshots/2_student.jpeg" width="200" /> |
| *App Entry* | *Main Hub & Actions* | *Setup Depts* | *Manage Students* |

<br>

### **2. Scheduling & Attendance**
| **3. Time Table** | **4. Elective Setup** | **5. Take Attendance** | **6. Daily Report** |
|:---:|:---:|:---:|:---:|
| <img src="assets/screenshots/3_timetable.jpeg" width="200" /> | <img src="assets/screenshots/4_elective.jpeg" width="200" /> | <img src="assets/screenshots/5_take_attendance.jpeg" width="200" /> | <img src="assets/screenshots/6_daily_dashboard.jpeg" width="200" /> |
| *Weekly Schedule* | *Elective Batches* | *Mark Absent/Present* | *Daily Stats View* |

<br>

### **3. Insights & Reports**
| **7. Analytics** | **8. View Logs** | **9. Share / Output** | **10. HTML Report** |
|:---:|:---:|:---:|:---:|
| <img src="assets/screenshots/7_analytics.jpeg" width="200" /> | <img src="assets/screenshots/8_view_log.jpeg" width="200" /> | <img src="assets/screenshots/9_share_output.jpeg" width="200" /> | <img src="assets/screenshots/10_html_report.jpeg" width="200" /> |
| *Defaulter Lists* | *Edit/Delete History* | *Auto-Message* | *Detailed Export* |

<br>

### **4. Data Safety**
| **11. Backup & Restore** | 
|:---:|
| <img src="assets/screenshots/11_backup.jpeg" width="200" /> | 
| *Secure Data Backup* | 

---

## 📂 Project Structure & File Guide

Here is a quick map of the codebase to help developers understand the purpose of each file:

### **Core**
- **`main.dart`**: The entry point. Sets up the app theme, routes, and initializes the root widget.
- **`database/database_helper.dart`**: The "brain" of the app. Handles all SQLite operations (CRUD), table creation, and complex queries for reports.

### **Screens (UI)**
- **`splash_screen.dart`**: The animated startup screen with the app logo.
- **`home_screen.dart`**: The main dashboard containing the "Take Attendance" button, daily summary widgets, and navigation grid.
- **`report_generator_v3.dart`**: The core screen for taking attendance. It allows CRs to toggle absentees and generate the final message.
- **`daily_report_screen.dart`**: Displays a visual summary of the day's attendance (Present vs Absent charts).
- **`search_screen.dart`**: A powerful analytics dashboard. Allows searching for students, sorting by "Defaulters" (low attendance), and viewing class performance.
- **`student_detail_screen.dart`**: Shows a 360° view of a specific student, including their overall percentage, subject-wise breakdown, and dates absent.
- **`custom_report_screen.dart`**: Allows users to select a date range and export detailed reports as HTML or Text.
- **`time_table_screen.dart`**: Manages the weekly class schedule and defines which subjects are Electives.
- **`manage_enrollment_screen.dart`**: Handles mapping students to specific elective subjects.
- **`student_input_screen.dart`**: Provides forms to add students manually or via a bulk text import feature.
- **`department_setup_screen.dart`**: A setup screen to configure department names (e.g., CE, IT) before adding students.
- **`backup_screen.dart`**: Interface for exporting the database file (`.db`) or restoring from a backup.
- **`about_me_screen.dart`**: A portfolio page displaying developer information and contact links.

### **Models**
- **`student.dart`**, **`department.dart`**: Data models representing the database entities.
- **`student_report_models.dart`**: Helper models used to calculate and pass analytics data between screens.

---

## 🛠️ Tech Stack

- **Framework:** [Flutter](https://flutter.dev/) (Dart)
- **Database:** SQLite (`sqflite`) – For offline attendance logs
- **State Management:** Native (`setState`) & MVC Pattern
- **Key Packages:**
  - `flutter_native_splash` (Branding)
  - `share_plus` (Sharing Messages & Exports)
  - `path_provider` (File System Access)
  - `intl` (Date Formatting)
  - `file_picker` (Restoring Backups)

---

## 📲 Installation & Setup

1.  **Clone the Repo**

    ```bash
    git clone [https://github.com/manavbavaliya97/absent_message/tree/main/absent_message-main](https://github.com/manavbavaliya97/absent_message/tree/main/absent_message-main)
    ```

2.  **Install Dependencies**

    ```bash
    flutter pub get
    ```

3.  **Run the App**
    ```bash
    flutter run
    ```

---

## 👨‍💻 Developer

**Manav Bavaliya**

- 🎓 4th Year Computer Engineering Student at RK University
- 💼 Class Representative (CR)
- 📧 [manavbavaliya97@gmail.com](mailto:manavbavaliya97@gmail.com)
- 🔗 [LinkedIn Profile](https://www.linkedin.com/in/manav-bavaliya-26610226b/)

> _This app is a result of my real-world responsibilities as a CR. What started as a simple website evolved into a full-fledged mobile app thanks to Flutter. I believe in creating tools that make life easier for students, faculty, and myself._

---

_⭐ If you find this project useful, please give it a star on GitHub!_
