#!/bin/bash
hostname=$(hostname -i)
idvar=$(cat /dev/urandom |tr -dc 'a-zA-Z' |head -c 3; cat /dev/urandom |tr -dc '0-9' |head -c 3)
bgc=$(cat /dev/urandom |tr -dc 'a-f0-9' |head -c 6)
cat <<EOF > /var/www/html/index.html
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
background: #$bgc;
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
text-align: center;
position: absolute;
left: 50%;
top: 50%;
transform: translate(-50%, -50%);
color: #000000;
text-shadow: 0 0 20px #7e7e7e, 0 0 20px rgba(10, 175, 230, 0);
}
table, th, td {
border: 1px solid #000000;
border-collapse: collapse;
margin: 0;
padding: 0;
letter-spacing: 0.1em;
font-size: 50px;
padding: 20px;
box-shadow: 0 0 5px #7e7e7e, 0 0 5px #232323;
}
</style>
</head>
<body>
<div id="text">
<table style="width:100%" class="text">
<tr>
<h1>Server Info</h1><br>
</tr>
<tr>
<th><b>Hostname</b></th>
<th><b>ID</b></th>
</tr>
<tr>
<td>$hostname</td>
<td>$idvar</td>
</tr>
</table>
</div>
</body>
</html>
EOF