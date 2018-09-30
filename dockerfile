FROM node:8-alpine

RUN  mkdir /userapp 
COPY . /userapp

RUN npm install \
    && npm install -g yarn \
    && npm install next \
    && yarn build 

EXPOSE 3000

CMD ["yarn" , "start"]
