#!/bin/sh

echo "Mirroring files..."
rsync -azv -e ssh --delete . eechris@cpjobling.org.uk:/home/eechris/public_html/teaching/modules/EG-146

