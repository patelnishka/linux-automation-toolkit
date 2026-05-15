# Linux Automation Toolkit

A Bash-based Linux automation toolkit designed to simplify system administration tasks such as user management, directory backups, and activity logging.

This project demonstrates Linux administration, shell scripting, automation workflows, and basic DevOps concepts.

---

## Features

- Add Linux users
- Delete Linux users
- Backup directories using `tar`
- Logging system for all operations
- Menu-driven command-line interface
- Simple and lightweight automation toolkit

---

## Technologies Used

- Linux (Ubuntu)
- Bash Scripting
- Git & GitHub
- tar utility
- Linux user management commands

---

## Project Structure

```bash
linux-automation-toolkit/
├── backups/
├── logs/
│   └── system.log
├── screenshots/
├── scripts/
│   └── toolkit.sh
└── README.md
```

---

## How To Run

### Clone Repository

```bash
git clone https://github.com/patelnishka/linux-automation-toolkit.git
```

### Navigate To Project

```bash
cd linux-automation-toolkit/scripts
```

### Make Script Executable

```bash
chmod +x toolkit.sh
```

### Run Script

```bash
./toolkit.sh
```

---

## Menu Options

The toolkit provides the following options:

1. Add User
2. Delete User
3. Backup Directory
4. View Logs
5. Exit

---

## Sample Features

### User Management
- Create Linux users
- Delete existing users

### Backup System
- Compress directories using tar
- Store backups in backup folder

### Logging
- Store operation logs inside:
```bash
logs/system.log
```

---

## Learning Outcomes

Through this project, I improved my understanding of:

- Linux administration
- Bash scripting
- Automation workflows
- Backup management
- Logging systems
- Git & GitHub workflow

---

## Future Improvements

- Group management support
- Scheduled backups using cron jobs
- Backup encryption using gpg
- AWS S3 backup integration
- Docker containerization

---

## Author

Nishka Patel

GitHub:
https://github.com/patelnishka
