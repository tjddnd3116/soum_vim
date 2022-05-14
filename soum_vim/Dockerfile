FROM debian:buster

ARG PATH=/home/linuxbrew/.linuxbrew/bin:/usr/local/sbin:/uer/local/bin:/usr/sbin:/usr/bin:/sbin/:/bin

RUN cd
# RUN apt-get update -y && apt-get upgrade -y && apt-get install ctags\
#     && apt-get install git -y && apt-get install curl -y && apt-get install build-essential -y && apt-get install valgrind -y
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install ctags git curl build-essential valgrind procps -y
RUN mkdir -p /root/.config/nvim
ADD ./config/init.vim /root/.config/nvim/
ADD ./config/config.sh /
ADD ./config/vim1.sh /
ADD ./config/vim2.sh /
ADD ./config/vim3.sh /
RUN chmod +x /config.sh
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
RUN sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
RUN /home/linuxbrew/.linuxbrew/bin/brew install neovim; exit 0
RUN /home/linuxbrew/.linuxbrew/bin/brew install nodejs; exit 0
RUN /home/linuxbrew/.linuxbrew/bin/brew install cppman; exit 0
# RUN /home/linuxbrew/.linuxbrew/bin/nvim -s /vim1.sh; exit 0
# WORKDIR /root/.vim/plugged/coc.nvim
# # RUN cd /root/.vim/plugged/coc.nvim && /home/linuxbrew/.linuxbrew/bin/npm install
# RUN /home/linuxbrew/.linuxbrew/bin/npm install; exit 0
# RUN /home/linuxbrew/.linuxbrew/bin/nvim -s /vim2.sh; exit 0
# RUN /home/linuxbrew/.linuxbrew/bin/pip3 install neovim
# RUN /home/linuxbrew/.linuxbrew/bin/nvim -s /vim3.sh; exit 0
# RUN rm /vim1.sh /vim2.sh /vim3.sh
# RUN cd /workspace
# WORKDIR /root/workspace

CMD /config.sh
