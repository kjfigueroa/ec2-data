#!/bin/bash
while read line; do
    if [[ $line != "<td>CODEHERE</td>" ]]
        then
            echo $line >> /var/www/html/index.html
        else
            echo "<td>$(hostname -i)</td>" >> /var/www/html/index.html
        fi
done < template.html
rm -rf $HOME/userdata-00               