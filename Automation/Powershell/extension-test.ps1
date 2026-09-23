# Transcribed from the script shown with its test output in screenshot #31.
# Historical lab source only. Running this writes a local directory and file.
new-item -path "C:\AZ104-Lab" -ItemType Directory -Force
set-content -Path "C:\AZ104-Lab\extension-test.txt" -Value "Created by Azure VM Custom script"
