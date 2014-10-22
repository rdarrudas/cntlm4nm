install :
	if [ $UID -eq 0 ]; then echo "Running as root."; else echo "You must 'make' this as root. ABORTING."; exit 1; fi;
	if [ -f /usr/sbin/cntlm ]; then echo "CNTLM found."; else echo "CNTLM not found. ABORTING"; exit 1; fi;
	mkdir -p /etc/cntlm.d
	mkdir -p /etc/NetworkManager/dispatcher.d
	cp README /etc/cntlm.d/
	cp dispatcher-hook /etc/NetworkManager/dispatcher.d/02cntlm

wipe :
	if [ $UID -eq 0 ]; then echo "Running as root."; else echo "You must 'make' this as root. ABORTING."; exit 1; fi;
	rm -rf /etc/cntlm.d
	rm -f /etc/NetworkManager/dispatcher.d/02cntlm

