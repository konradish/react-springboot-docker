FROM node
WORKDIR /app
EXPOSE 8080
RUN cd /app && \
    yarn global add create-react-app && \
    create-react-app .
CMD ["yarn", "start"]