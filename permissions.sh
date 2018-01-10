#!/bin/sh

# Change permissions for web delivery of content

echo "Changing permissions for web delivery"
find . -type d -exec chmod 755 "{}" \;
find . -type f -exec chmod 644 "{}" \;
chmod 755 *.sh
cd cgi-bin; chmod 755 *.cgi
