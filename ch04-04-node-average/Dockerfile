FROM alpine
MAINTAINER Manu Phatak <bionikspoon@gmail.com>
RUN apk update && apk add nodejs
RUN mkdir average
ADD average.js average/
WORKDIR average
ENTRYPOINT ["node", "average.js"]
