function desktop
	if ssh alex@192.168.178.103
		echo "Connection successfull!"
	else
		cowsay -f cheese "Starting Computer and waiting 30 seconds until next connection"
		sleep 30
		echo "Connecting..."
		ssh alex@192.168.178.103
	end
end
