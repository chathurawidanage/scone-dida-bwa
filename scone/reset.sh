#!/bin/ash
cd /data
rm *
scone fspf create fspf.pb
scone fspf addr fspf.pb / --kernel / --not-protected
scone fspf addr fspf.pb /data --encrypted --kernel /data
scone fspf addf fspf.pb /data /data-original /data
scone fspf encrypt fspf.pb > /data-original/keytag