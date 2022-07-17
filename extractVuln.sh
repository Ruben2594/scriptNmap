rm vuln.csv;
printf "IP,FQDN,PORT,PROTOCOL,SERVICE,VERSION,OS \n" > vuln.csv;
for f in *.txt
do
 echo "Processing $f"
 nmaptocsv -i "$f" -f ip-fqdn-port-protocol-service-version-os -d ',' | awk '(NR>1)' | sed -e "$ d" >> extract_vuln.csv
done