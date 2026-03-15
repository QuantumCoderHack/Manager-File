@echo off
set "root_dir=%~dp0Manager Downloads Package"
set "dirs=Music File_Creating_Application_File Office_Applications_File List_Files Program Files Write_Files Read_For_Security Image_Files"

echo Creating directories...

for %%d in (%dirs%) do (
    mkdir "%root_dir%\%%d"
)

echo Directory structure created successfully.

echo Creating license file...

rem License content
set "license_content=\
This application is a fundamental framework for launching applications. The version of this application is 1.0.0.1. It provides a great infrastructure to open files in video, text, list, and visual formats individually, instead of requiring specific tools.\n\
\n\
Terms and Conditions:\n\
1. You may use this software for personal and commercial purposes.\n\
2. Redistribution and modification of the software are not allowed without permission.\n\
3. The software is provided 'as-is' without any warranties.\n\
\n\
By using this software, you agree to the terms and conditions stated above.\n\
"

rem Create and write license file
set "license_file=%root_dir%\LICENSE.txt"
(
    echo This application is a fundamental framework for launching applications. The version of this application is 1.0.0.1. It provides a great infrastructure to open files in video, text, list, and visual formats individually, instead of requiring specific tools.
    echo.
    echo Terms and Conditions:
    echo 1. You may use this software for personal and commercial purposes.
    echo 2. Redistribution and modification of the software are not allowed without permission.
    echo 3. The software is provided 'as-is' without any warranties.
    echo.
    echo By using this software, you agree to the terms and conditions stated above.
) > "%license_file%"

echo License file created successfully at %license_file%.

pause