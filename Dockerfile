FROM            docker.io/node
RUN             mkdir/app
COPY            *.json package.json /app/
WORKDIR         /app
RUN             npm install
COPY            run.sh /app/run.sh
ENTRYPOINT      run.sh
