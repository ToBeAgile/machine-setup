# This script
# iwr -useb https://raw.githubusercontent.com/ToBeAgile/machine-setup/main/java.ps1 | iex
# Set up base Windows machine
iwr -useb https://raw.githubusercontent.com/ToBeAgile/machine-setup/main/windows.ps1 | iex

#install project specific tools 
choco install -y notepadplusplus beyondcompare openjdk intellijidea maven eclipse

# Done
cls
echo "Done! Please reboot."
