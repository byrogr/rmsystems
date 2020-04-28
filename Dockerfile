FROM node:lts

COPY ["package.json", "package-lock.json", "/usr/website/"]

WORKDIR "/usr/website"

RUN npm install

COPY [".", "/usr/website/"]

CMD ["npm run", "build"]