#!/bin/bash
while read line; do
    if [[ $line != "<td>CODEHERE</td>" ]]
        then
            echo $line >> /var/www/html/index.html
        else
            echo "<td>$(hostname -i)</td>" >> /var/www/html/index.html
        fi
done < template.html
rm -f template.html               