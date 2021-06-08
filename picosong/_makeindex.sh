#!/bin/sh

ls | egrep '(mp3|mp4|wav)' | perl -e 'print "<html><body><h1>Picosong</h1><ul>"; while(<>) { chop $_; print "<p><a href=\"./$_\">/$_</a></p>";} print "</ul></body></html>"' > index.html