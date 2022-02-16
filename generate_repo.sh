#!/bin/bash
repos=$( cat ./repos.txt) 
for repo in $repos 
do 
gh repo create ${2}/${repo} --public --template ${1}/${repo} 
done

#  $ gh repo create ZCW-Java8-0/Kafka3-Data --public --template ZipCodeCore/Kafka3-Data
#  $ gh repo create ${2}/${repo} --public --template ${1}/${repo}
# worked(!).
# so,
# bash ./generate_repo.sh ZipCodeCore ZCW-Java8-0