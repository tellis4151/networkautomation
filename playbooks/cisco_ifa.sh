#!/bin/bash

rtr_file1=/var/lib/awx/projects/playbooks/cisco_facts_rtr1.html
rtr_file2=/var/lib/awx/projects/playbooks/cisco_facts_rtr2.html
output=/var/lib/awx/projects/playbooks/cisco_facts.html

echo "Merging HTML Files"

sed -n 1,19p $rtr_file1 > $output
sed -n 13,22p $rtr_file2 >> $output
