FROM alpine:3

WORKDIR /app
RUN mkdir output

CMD ["ping", "-c", "4", "ediv.xyz", ">> ./output/output.txt"]

  
