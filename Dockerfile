FROM archlinux/base:latest

MAINTAINER Sofiane Hamlaoui <s0fianehaml40u1@gmail.com> <https://Github.com/SofianeHamlaoui>

ENV TERM xterm-256color

# Installing Blackarch
RUN sed -i "/\[multilib\]/,/Include/"'s/^#//' /etc/pacman.conf && \
    pacman -Syu --noconfirm && \
    pacman -S base base-devel --noconfirm && \
    curl -O https://blackarch.org/strap.sh && \
    chmod +x strap.sh && ./strap.sh && \
    pacman -Syyu  --noconfirm && \
    pacman -S blackarch --noconfirm --force && \
    rm strap.sh 
RUN echo "Blackarch is ready to use ! - Don't forget to give some feedback one github if you use this dockerfile"
