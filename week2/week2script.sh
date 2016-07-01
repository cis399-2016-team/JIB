#!/bin/sh

DIR=$(pwd)/

#aws ec2 describe-instances --filters "Name=instance-type,Values=t2.micro" | grep -m 1 "PrivateIpAddress" > "$DIR"PrivateIpAddress.txt
#echo "========================="
#echo "Private IP Address"
#echo "========================="
#cat "$DIR"PrivateIpAddress.txt
#echo " "

#aws ec2 describe-instances --filters "Name=instance-type,Values=t2.micro" | grep "PublicIpAddress" > "$DIR"PublicIpAddress.txt
echo "JIB-jbrodnax1 Public IP Address: 52.36.245.52" > "$DIR"PublicIpAddress.txt
echo "JIB-jbrodnax2 Public IP Address: 52.37.36.132" >> "$DIR"PublicIpAddress.txt
echo "JIB-bheng1 Public IP Address: 52.37.2.182" >> "$DIR"PublicIpAddress.txt
echo "=========================" >> "$DIR"PublicIpAddress.txt
echo "Public IP Address" >> "$DIR"PublicIpAddress.txt
echo "=========================" >> "$DIR"PublicIpAddress.txt
echo "The public IP address of a given EC2 instance can be found under the description tab of the selected instance on the EC2 console." >> "$DIR"PublicIpAddress.txt
cat "$DIR"PublicIpAddress.txt
echo " "

#aws ec2 describe-instances --filters "Name=instance-type,Values=t2.micro" | grep "InstanceId" > "$DIR"InstanceId.txt
echo "JIB-jbrodnax1 Instance ID: i-9da07d32" > "$DIR"InstanceId.txt
echo "JIB-jbrodnax2 Instance ID: i-e23ae74d" >> "$DIR"InstanceId.txt
echo "JIB-bheng1 Instance ID: i-2fdf5bf2" >> "$DIR"InstanceId.txt
echo "=========================" >> "$DIR"InstanceId.txt
echo "Instance ID" >> "$DIR"InstanceId.txt
echo "=========================" >> "$DIR"InstanceId.txt
cat "$DIR"InstanceId.txt
echo " "

df -ah > "$DIR"DiskSpace.txt
echo "=========================" >> "$DIR"DiskSpace.txt
echo "Instance Disk Space" >> "$DIR"DiskSpace.txt
echo "=========================" >> "$DIR"DiskSpace.txt
echo "Command Used: df -ah" >> "$DIR"DiskSpace.txt
cat "$DIR"DiskSpace.txt
echo " "

free -m > "$DIR"MemInfo.txt
echo "=========================" >> "$DIR"MemInfo.txt
echo "Instance Memory Information" >> "$DIR"MemInfo.txt
echo "=========================" >> "$DIR"MemInfo.txt
echo "Command Used: free -m" >> "$DIR"MemInfo.txt
cat "$DIR"MemInfo.txt
echo " "

ps aux > "$DIR"CurrentProcs.txt
echo "=========================" >> "$DIR"CurrentProcs.txt
echo "Running Processes" >> "$DIR"CurrentProcs.txt
echo "=========================" >> "$DIR"CurrentProcs.txt
echo "Command Used: ps aux" >> "$DIR"CurrentProcs.txt
cat "$DIR"CurrentProcs.txt
echo " "

ifconfig eth0 > "$DIR"NetConfigInfo.txt
echo "=========================" >> "$DIR"NetConfigInfo.txt
echo "Network Configuration" >> "$DIR"NetConfigInfo.txt
echo "=========================" >> "$DIR"NetConfigInfo.txt
echo "Command Used: ifconfig eth0" >> "$DIR"NetConfigInfo.txt
cat "$DIR"NetConfigInfo.txt
echo " "

route -n > "$DIR"RoutingTable.txt
echo "=========================" >> "$DIR"RoutingTable.txt
echo "Routing Table" >> "$DIR"RoutingTable.txt
echo "=========================" >> "$DIR"RoutingTable.txt
echo "Command Used: route -n" >> "$DIR"RoutingTable.txt
cat "$DIR"RoutingTable.txt
echo " "

netstat -nat > "$DIR"ConnectionsAndPorts.txt
echo "=========================" >> "$DIR"ConnectionsAndPorts.txt
echo "Connections and Open Ports" >> "$DIR"ConnectionsAndPorts.txt
echo "=========================" >> "$DIR"ConnectionsAndPorts.txt
echo "Command Used: netstat -nat" >> "$DIR"ConnectionAndPorts.txt
cat "$DIR"ConnectionsAndPorts.txt
echo " "

rpm -qa > "$DIR"InstalledSoftware.txt
echo "=========================" >> "$DIR"InstalledSoftware.txt
echo "Installed Software Packages" >> "$DIR"InstalledSoftware.txt
echo "=========================" >> "$DIR"InstalledSoftware.txt
echo "Command Used: rpm -qa" >> "$DIR"InstalledSoftware.txt
cat "$DIR"InstalledSoftware.txt
echo " "

sudo yum update > "$DIR"DpkgUpdate.txt
echo "=========================" >> "$DIR"DpkgUpdate.txt
echo "Package Update Output" >> "$DIR"DpkgUpdate.txt
echo "=========================" >> "$DIR"DpkgUpdate.txt
echo "Command Used: yum update" >> "$DIR"DpkgUpdate.txt
cat "$DIR"DpkgUpdate.txt
echo " "

sudo yum upgrade > "$DIR"DpkgUpgrade.txt
echo "=========================" >> "$DIR"DpkgUpgrade.txt
echo "Package Upgrade Output" >> "$DIR"DpkgUpgrade.txt
echo "=========================" >> "$DIR"DpkgUpgrade.txt
echo "Command Used: yum upgrade" >> "$DIR"DpkgUpgrade.txt
cat "$DIR"DpkgUpgrade.txt
echo " "





