# scripts/application_stop.sh
#!/bin/bash
echo "Stopping application..."
pm2 stop all || echo "No process running"