#!/bin/bash
cat <<EOF > $HOME/template.txt
<!DOCTYPE html>
<!--
Template to run in a ec2 example
By Kevin J. Figueroa M
-->
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Minimal Application</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Share+Tech+Mono'>
<style>
html, body {
height: 100%;
}
body {
background: #0011ae;
}
h1 {
margin: 0;
padding: 0;
letter-spacing: 0.1em;
font-size: 70px;
padding: 20px 0 0;
}
#text {
font-family: "Share Tech Mono", monospace;
color: #ffffff;
text-align: center;
position: absolute;
left: 50%;
top: 50%;
transform: translate(-50%, -50%);
color: #daf6ff;
text-shadow: 0 0 20px #0aafe6, 0 0 20px rgba(10, 175, 230, 0);
}
table, th, td {
border: 1px solid #ffffff;
border-collapse: collapse;
margin: 0;
padding: 0;
letter-spacing: 0.1em;
font-size: 50px;
padding: 20px;
box-shadow: 0 0 5px #0aafe6, 0 0 5px #ffffff;
}
</style>
</head>
<body>
<div id="text">
<table style="width:100%" class="text">
<tr>
<h1>Server Response</h1><br>
</tr>
<tr>
<th><b>Hostname</b></th>
<th><b>ID</b></th>
</tr>
<tr>
<td>HOSTNAMESTRING</td>
<td>IDSTRING</td>
</tr>
</table>
</div>
</body>
</html>
EOF
# hostname info
while read line; do
    if [[ $line == "<td>HOSTNAMESTRING</td>" ]]; then
        echo "<td>$(hostname -i)</td>" >> /var/www/html/index.html
        elif [[ $line != "<td>IDSTRING</td>" ]]; then
            echo "<td>$(cat /dev/urandom |tr -dc 'a-zA-Z' |head -c 3; cat /dev/urandom |tr -dc '0-9' |head -c 3)</td>" >> /var/www/html/index.html
            else
                echo $line >> /var/www/html/index.html
    fi
done < $HOME/template.txt
rm -f $HOME/template.txt               