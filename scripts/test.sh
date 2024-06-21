#! /bin/sh

function test {
result=0;
for i in $(ls data);
do  
echo -e "\n-------------------\n"; 
echo -e "$i\n\n"; 
xmllint --noout --schema http://www.da-ra.de/dara/schemadefinitions/dara.xsd  data/$i; 
ret=$?

if [ ! $ret -eq 0 ]
then
result=$ret;
fi

echo -e "-------------------\n";
done
return $result;
}

test