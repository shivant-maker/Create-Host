FROM ubuntu:20.04
LABEL maintainer="wingnut0310 <wingnut0310@gmail.com>"



# Install dependencies and application-specific packages
RUN apt-get update && \
    apt-get install -y package1 package2 package3 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Add application-specific files and directories (e.g., the application code, configuration files, etc.)


# Expose ports and define the default command
EXPOSE 8080
CMD ["/bin/bash", "start_app.sh"]
