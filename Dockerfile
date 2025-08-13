FROM alpine:3

WORKDIR /app
RUN mkdir output

RUN echo "Pinging..."
CMD sh -c 'echo "Pinging..."; ping -i 10 -c 5 www.reddit.com >> ./output/output.txt; echo "" >> ./output/output.txt'
  
