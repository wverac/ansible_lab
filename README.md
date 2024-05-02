# ansible_lab
Personal ansible lab with docker compose based on openSUSE Tumbleweed

# Usage
Pull the image
```bash
docker pull theovercloud/osuseansible
```
Clone this repo
```bash
git clone https://github.com/wverac/ansible_lab.git
```
Create a new pair of SSH Keys
```bash
cd ansible_lab
ssh-keygen -q -N '' -f files/ansiblelab
```
Start the lab
```bash
docker-compose up
```
Login into control node
```bash
docker exec -ti control /bin/bash
```
Test the initial configuration
```bash
ansible all -m ping -o
```
***Happy hacking!***

# Notes
## Scale nodes
This lab has 3 nodes in addition to the control node initially, but you can scale by editing (docker-compose.yml)[docker-compose.yml] file, e.g.
```bash
scale: 6
```
Or pass the parameter when starting the lab
```bash
docker-compose up --scale tumbleweed=6
```
Don't forget to add the new hosts to the inventory 
[files/inventory](files/inventory) 

## Docker image

I am using an image based on tumbleweed with the basic packages to run this lab, I did not install systemd (I started the SSH service old school style) so as not to make the image heavy.

You can find the image on Doccker HUB

https://hub.docker.com/r/theovercloud/osuseansible

You can also find the dockerfile in this repo

[image/Dockerfile](image/Dockerfile)

---

Contact:
[wv@linux.com](mailto:wv[NOSPAM]linux.com)

---

# TODO
- Create a dynamic inventory according to the number of nodes scaled
- Add a debian image as node option
- Add troubleshooting packages to the control image 
- Add screenshots
