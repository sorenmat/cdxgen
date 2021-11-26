FROM node:16
ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production
COPY . .
RUN npm link
ADD entrypoint.sh /
ENTRYPOINT [ "/entrypoint.sh"]