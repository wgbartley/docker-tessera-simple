#!/bin/bash

if [ ! -f /opt/tessera/config.py ]; then
	mv /tessera-config.py /opt/tessera/config.py
	touch /opt/tessera/tessera.db

	cd /opt/tessera
	TESSERA_CONFIG=config.py /usr/local/bin/tessera-init
fi


/usr/bin/supervisord
