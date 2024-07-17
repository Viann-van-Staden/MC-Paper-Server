FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

# Create Minecraft directory and set as working directory
RUN mkdir -p /minecraft/plugins
WORKDIR /minecraft

# Install necessary packages
RUN apt-get update && apt-get install -y \
    screen \
    openjdk-21-jdk \
    wget \
    && rm -rf /var/lib/apt/lists/*

# Download Paper server jar
RUN wget -O server.jar https://api.papermc.io/v2/projects/paper/versions/1.21/builds/81/downloads/paper-1.21-81.jar

# Accept the Minecraft EULA
RUN echo "eula=true" > eula.txt

# Copy plugins into the container
COPY plugins /minecraft/plugins

# Expose the default Minecraft port
EXPOSE 25565

# Start the server within a screen session
CMD ["sh", "-c", "screen -S minecraft -dm java -Xmx1024M -Xms1024M -jar server.jar --nogui && tail -f /dev/null"]
