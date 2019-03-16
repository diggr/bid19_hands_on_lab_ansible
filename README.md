# BID Workshop Ansible Repository

For the BID Workshop the diggr team prepared a 2.5h introductory workshop 
for librarians about reasearch data management in a digital humanities 
research group. As the scientific libraries face new challenges in the 
21st century, as they are transforming from "just being libraries" to 
service centers of the digital age. To emporer the staff, we give insight
in our reasearch process, to help form a better understanding of our
work.

## Prequisites

As this is an ansible playbook, it is best to run it against a freshly 
installed Linux Mint 19.1. 

I wanted to use Ubuntu 18.04LTS or 18.10 as a host system, but unfortunately,
the laptops I had to use, were to new, and the chipset not supported by 
the kernel in 18.04 and crashed unreliable with 18.10. Even though Linux Mint 
19.1LTS is also using the older 4.15 Kernel (which didn't even bother to boot
when using the Ubuntu 18.04LTS version) it ran perfectly with Linux Mint. 
That is it why, I took the slightly obscure choice of using Linux Mint 
19.1LTS in this case here.

## Contents

The ansible playbook contains various roles which set up a freshly installed 
Linux Mint 19.1LTS, to be used in the "practical reasearch data workshop" by
the diggr team for the "BID Kongress 2019" in Leipzig.

## Installation

It is expected, that you either have a spare host to set up the research 
environment, e.g. a virtual machine. Please install Linux Mint 19.1LTS

Before you can run the ansible playbook, you have to install ansible. I use
Ansible 2.5.7, but most other 2.x versions should work fine as well.

## Getting Started

Boot up the computer an set up an openssh server. You can use the standard
settings. Connect this host to a network, where you can access it over the
network and put its ip address in the inventory file. 

## Running the playbook

Open a terminal on your computer, navigate to the directory, where this
README file is located, and run the following command:

```
$ make deploy
```

which will run

```
$ ansible-playbook -i inventory -l laptops diggr_bid_workshop.yml
```


## Youtube-API-Key

In order to run PYG, you need to put your API Key in the *config.yml* file
in the bid_raw_data directory in the bid users home dir. 

## Copyright

2019, Universitätsbibliothek Leipzig <info@ub.uni-leipzig.de>

## Author

F. Rämisch <raemisch@ub.uni-leipzig.de>
