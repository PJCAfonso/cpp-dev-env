FROM ubuntu:20.04

# Run as Non Interactive

ENV DEBIAN_FRONTEND=noninteractive

# Set Timezone (needed for tzdata package)

ENV TZ=Europe/Lisbon
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Update SO and Install Packages

RUN apt update \
    && apt install -y build-essential gdb git
