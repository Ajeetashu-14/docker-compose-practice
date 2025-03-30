FROM node:20-bullseye

WORKDIR /app

COPY ./package.json ./package.json
COPY ./package-lock.json ./package-lock.json

RUN npm install

COPY . .

RUN npx prisma generate 
RUN npm run build 

EXPOSE 3000

CMD ["npm", "run", "dev:docker"]