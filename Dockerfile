FROM alpine:3

WORKDIR /app

RUN echo "Pinging..."
CMD sh -c 'echo "Pinging..."; ping -i 1 -c 5 www.reddit.com >> ./output/output.txt; echo "" >> ./output/output.txt'
  
