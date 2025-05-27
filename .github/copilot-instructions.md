<!-- Use this file to provide workspace-specific custom instructions to Copilot. For more details, visit https://code.visualstudio.com/docs/copilot/copilot-customization#_use-a-githubcopilotinstructionsmd-file -->
# GitHub Copilot Instructions
## General Guidelines
- Use clear and concise comments to describe the purpose of the code.
- Write code that is easy to read and maintain.
- Follow the project's coding standards and conventions like industry best practices.
- Use meaningful variable and function names.
- use consistent formatting and indentation.
- Avoid unnecessary complexity; keep the code simple and straightforward.
- Use tqdm,logger for better insights and debugging.
- follow the DRY (Don't Repeat Yourself) principle to avoid code duplication.
- always use type hints and docstrings to improve code readability and maintainability.
- always run scripts in a virtual environment to avoid conflicts with system packages.

## Folder Structure

```
├───backup
├───data
├───logs
├───src
│   ├───__init__.py
│   └───utils.py
├───.env 
├───.env.sample
├───.gitignore
├───docker-composer.yml
├───LICENCE
├───README.md
└───requirements.txt
```
- Use a clear and logical folder structure to organize code files.
- Place related files in the same folder.
- store output csv  files in the data folder.
- store the logs in the logs folder.
- if any modular code is present, store it in the src folder.
- utilize the util.py file for utility functions that can be reused across the project.
- use the backup folder to store any backup files.

