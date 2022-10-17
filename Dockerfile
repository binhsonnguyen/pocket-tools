FROM debian:stable-slim
RUN apt-get update && \
  apt-get install -y curl && \
  apt-get install -y git && \
  apt-get install -y htop && \
  apt-get install -y unzip && \
  apt-get install -y vim && \
  apt-get install -y wget && \
  apt-get install -y zsh && \
  apt-get clean
RUN curl https://rclone.org/install.sh | bash
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true
RUN sed -i -e 's@^ZSH_THEME.*@ZSH_THEME="evan"@' ~/.zshrc
