rm -rf /opt/PHANTX/nmap
rm -rf /opt/PHANTX/nmap

cd /opt/PHANTX

git clone --depth 1 https://github.com/nmap/nmap

cd /opt/PHANTX/nmap

./configure 

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Copy PACKAGE... PASS!"
else
  # houston we have a problem
  exit 1
fi

make
make install

chmod -R 755 /opt/PHANTX/bin
rm -rf /opt/PHOS/tool/nmap
rm -rf /opt/PHOS/tool/nmap