
#!/bin/bash
docker compose down -v
docker compose up --build --no-cache
docker compose up -d 
#docker exec -it splunk /bin/bash