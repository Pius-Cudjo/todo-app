dockerfile

FROM public.ecr.aws/docker/library/node:25-alpine
WORKDIR .
COPY package*.json ./
RUN npm ci --omit=dev
COPY . .
EXPOSE 3000
CMD ["node", "server.js"]