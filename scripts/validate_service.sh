# scripts/validate_service.sh
#!/bin/bash
curl -I http://localhost:3000 || exit 1