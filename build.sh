mvn clean install
docker build -t="apimonitor:20220421" .
docker run -d --name apimonitor -p 3003:8080 --restart always apimonitor:20220421