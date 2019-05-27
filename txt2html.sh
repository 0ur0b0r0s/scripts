#!/bin/bash

echo '
<html>
<head>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>
</head>
<body>

<table>
  <tr>
    <th>URL</th>
  </tr>
' > lista.html
cat $1 | grep http > lista1.txt
cat $1 | grep -v http | sed 's/^/http:\/\//g' >> lista1.txt
cat lista1.txt | while read line; do echo "<tr><td><a href=$line>$line</td><td></td></tr>" | tee -a lista.html; done
