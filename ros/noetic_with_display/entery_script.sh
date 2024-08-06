#!/bin/bash
USERNAME=MJavadZallaghi

# Start the VS Code during the entery point
cd /home/${USERNAME}/
echo "Srarting VS Code: " /home/${USERNAME}/.vscode
echo ${pwd}
code --no-sandbox --user-data-dir=/home/${USERNAME}/.vscode