FROM base/archlinux
MAINTAINER obed.n.munoz@gmail.com

# Update all
RUN pacman -Sc --noconfirm
RUN pacman-key --refresh-keys 
RUN pacman -Syu --noconfirm

# Cleanup
RUN pacman-db-upgrade
RUN pacman -Sc --noconfirm