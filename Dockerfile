FROM mcr.microsoft.com/devcontainers/python:0-3.11

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get upgrade -y

RUN apt install -y `sudo apt --assume-no install texlive-full | \
		awk '/The following additional packages will be installed/{f=1;next} /Suggested packages/{f=0} f' | \
		tr ' ' '\n' | \
        grep -vP 'texlive-lang' | \
        grep -vP 'latex-cjk' | \
        tr '\n' ' '`
RUN apt install texlive-lang-english texlive-lang-german

RUN apt-get install -y python3-pygments

# Upgrade pip
RUN pip install --upgrade pip