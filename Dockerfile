FROM node:20-alpine           

WORKDIR /app                                                                                                                                                                                                                                    

COPY package*.json ./                                                                                                                                                                                                                          

RUN npm install                                                                                                                                                                                                                               

COPY . .                                                                                                                                                                                                                                      

EXPOSE 3000                                                                                                                                                                                                                                   

ENV NODE_ENV = production
ENV PORT = 3000 

CMD ["node", "app.js"]
