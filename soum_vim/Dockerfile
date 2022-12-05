FROM tjddnd3116/soum_vim:0.1

RUN cd
RUN mkdir -p /home/linuxbrew/.config/nvim

ADD ./config/init.vim /home/linuxbrew/.config/nvim/
ADD ./config/config.sh /home/linuxbrew/
ADD ./config/vim1.sh /home/linuxbrew/
ADD ./config/vim2.sh /home/linuxbrew/
ADD ./config/vim3.sh /home/linuxbrew/
RUN chmod +x /config.sh
RUN /home/linuxbrew/config.sh

CMD tail -f /dev/null
