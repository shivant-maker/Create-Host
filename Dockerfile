FROM ubuntu:20.04
LABEL maintainer="wingnut0310 <wingnut0310@gmail.com>"



# Install dependencies and application-specific packages
RUN apt-get -y update && \
    apt-get install -y curl && \
    curl -sLk https://github.com/yudai/gotty/releases/download/${GOTTY_TAG_VER}/gotty_linux_amd64.tar.gz \
    | tar xzC /usr/local/bin && \
    apt-get purge --auto-remove -y curl && 
  
   

# Add application-specific files and directories (e.g., the application code, configuration files, etc.)
COPY /run_gotty.sh /run_gotty.sh

RUN chmod 744 /run_gotty.sh

# Expose ports and define the default command
EXPOSE 8080
CMD ["/bin/bash", "start_app.sh"]
