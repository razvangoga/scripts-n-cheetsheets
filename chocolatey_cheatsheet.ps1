#view all packages installed via choco
choco list --local-only

#view packages with pending updates
choco upgrade all --noop

choco upgrade all -y

#upgrade just the choco tracked version, if the package makes an auto update
choco upgrade {{package_name}} -y -n

#freeze package to specific version
choco pin
choco pin list
choco pin add --name=git --version=1.2.3
choco pin remove --name git

#wsl
wsl --update
wsl -d "{dist_name}" -u root -e apt update && wsl -d "{dist_name}" -u root -e apt upgrade -y

#reset imaage
wsl --unregister Ubuntu; wsl --install -d Ubuntu; wsl -s Ubuntu

#shrink wsl ext4.vhdx
#https://stephenreescarter.net/how-to-shrink-a-wsl2-virtual-disk/

#wsl config https://docs.microsoft.com/en-us/windows/wsl/wsl-config#configure-global-options-with-wslconfig