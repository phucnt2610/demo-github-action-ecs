#buld stage
FROM public.ecr.aws/docker/library/node:22 AS build

WORKDIR /srv
COPY package*.json ./

# Install dependencies based on the `package.json` and `package-lock.json`
# files in the host folder
RUN npm ci --omit=dev

COPY . .
# Specify the command to run when launching the container
EXPOSE 4000
CMD ["node", "index.js"]