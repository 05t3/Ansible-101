# Installation

Verify you have pip installed:

```bash
dev@master:~$ python3 -m pip -V
/usr/bin/python3: No module named pip
dev@master:~$ curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 2518k  100 2518k    0     0   568k      0  0:00:04  0:00:04 --:--:--  568k
dev@master:~$ python3 get-pip.py --user

Collecting pip
  Downloading pip-23.1.2-py3-none-any.whl (2.1 MB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 2.1/2.1 MB 700.2 kB/s eta 0:00:00
Collecting wheel
  Downloading wheel-0.40.0-py3-none-any.whl (64 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 64.5/64.5 kB 1.4 MB/s eta 0:00:00
Installing collected packages: wheel, pip
  WARNING: The script wheel is installed in '/home/dev/.local/bin' which is not on PATH.
  Consider adding this directory to PATH or, if you prefer to suppress this warning, use --no-warn-script-location.
  WARNING: The scripts pip, pip3 and pip3.8 are installed in '/home/dev/.local/bin' which is not on PATH.
  Consider adding this directory to PATH or, if you prefer to suppress this warning, use --no-warn-script-location.
Successfully installed pip-23.1.2 wheel-0.40.0
dev@master:~$ python3 -m pip -V
pip 23.1.2 from /home/dev/.local/lib/python3.8/site-packages/pip (python 3.8)
```

## Installing Ansible using pip

```bash
dev@master:~$ python3 -m pip install --user ansible
Collecting ansible

  Downloading ansible-6.7.0-py3-none-any.whl (42.8 MB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 42.8/42.8 MB 1.2 MB/s eta 0:00:00
Collecting ansible-core~=2.13.7 (from ansible)
  Downloading ansible_core-2.13.10-py3-none-any.whl (2.1 MB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 2.1/2.1 MB 1.4 MB/s eta 0:00:00
Collecting jinja2>=3.0.0 (from ansible-core~=2.13.7->ansible)
  Downloading Jinja2-3.1.2-py3-none-any.whl (133 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 133.1/133.1 kB 1.7 MB/s eta 0:00:00
Requirement already satisfied: PyYAML>=5.1 in /usr/lib/python3/dist-packages (from ansible-core~=2.13.7->ansible) (5.3.1)
Requirement already satisfied: cryptography in /usr/lib/python3/dist-packages (from ansible-core~=2.13.7->ansible) (2.8)
Collecting packaging (from ansible-core~=2.13.7->ansible)
  Downloading packaging-23.1-py3-none-any.whl (48 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 48.9/48.9 kB 71.2 kB/s eta 0:00:00
Collecting resolvelib<0.9.0,>=0.5.3 (from ansible-core~=2.13.7->ansible)
  Downloading resolvelib-0.8.1-py2.py3-none-any.whl (16 kB)
Collecting MarkupSafe>=2.0 (from jinja2>=3.0.0->ansible-core~=2.13.7->ansible)
  Downloading MarkupSafe-2.1.3-cp38-cp38-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (25 kB)
Installing collected packages: resolvelib, packaging, MarkupSafe, jinja2, ansible-core, ansible
  WARNING: The scripts ansible, ansible-config, ansible-connection, ansible-console, ansible-doc, ansible-galaxy, ansible-inventory, ansible-playbook, ansible-pull and ansible-vault are installed in '/home/dev/.local/bin' which is not on PATH.
  Consider adding this directory to PATH or, if you prefer to suppress this warning, use --no-warn-script-location.
  WARNING: The script ansible-community is installed in '/home/dev/.local/bin' which is not on PATH.
  Consider adding this directory to PATH or, if you prefer to suppress this warning, use --no-warn-script-location.
Successfully installed MarkupSafe-2.1.3 ansible-6.7.0 ansible-core-2.13.10 jinja2-3.1.2 packaging-23.1 resolvelib-0.8.1
dev@master:~$ export PATH=$PATH:/home/dev/.local/bin
dev@master:~$ source ~/.profile
dev@master:~$ ansible --version
ansible [core 2.13.10]
  config file = None
  configured module search path = ['/home/dev/.ansible/plugins/modules', '/usr/share/ansible/plugins/modules']
  ansible python module location = /home/dev/.local/lib/python3.8/site-packages/ansible
  ansible collection location = /home/dev/.ansible/collections:/usr/share/ansible/collections
  executable location = /home/dev/.local/bin/ansible
  python version = 3.8.10 (default, May 26 2023, 14:05:08) [GCC 9.4.0]
  jinja version = 3.1.2
  libyaml = True
dev@master:~$ python3 -m pip show ansible
Name: ansible
Version: 6.7.0
Summary: Radically simple IT automation
Home-page: https://ansible.com/
Author: Ansible, Inc.
Author-email: info@ansible.com
License: GPLv3+
Location: /home/dev/.local/lib/python3.8/site-packages
Requires: ansible-core
Required-by:
dev@master:~$ python3 -m pip install --user argcomplete
Collecting argcomplete
  Downloading argcomplete-3.1.1-py3-none-any.whl (41 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 41.5/41.5 kB 123.3 kB/s eta 0:00:00
Installing collected packages: argcomplete
Successfully installed argcomplete-3.1.1
dev@master:~$ activate-global-python-argcomplete --user
Argcomplete was installed in the user site local directory. Defaulting to user installation.
Adding shellcode to /home/dev/.zshenv...
Added.
Adding shellcode to /home/dev/.bash_completion...
Added.
Please restart your shell or source the installed file to activate it.
dev@master:~$ source ~/.profile
```


## Craeting Working Directory for our ansible projects

```bash
mkdir automation
cd automation/
mkdir ansible
cd ansible/
```

Craeting hosts file

```bash
nano hosts
cat hosts
```

```ini
[master]
192.168.1.7

[nodes]
192.168.1.8
192.168.1.9
192.168.1.10

[master:vars]
ansible_ssh_user=dev
ansible_ssh_pass=ne.11.88

[nodes:vars]
ansible_ssh_user=dev
ansible_ssh_pass=ne.11.88
```

Create ansible configuration file

```bash
nano ansible.cfg
cat ansible.cfg
```

```bash
[defaults]
inventory = /home/dev/automation/ansible/hosts
```

Ping hosts

![image](https://user-images.githubusercontent.com/58165365/246692396-04af9ae6-10ce-44b0-8598-cf1500065b2d.png)

Install the `sshpass program`

`sudo apt-get install sshpass`

Run again:

![image](https://user-images.githubusercontent.com/58165365/246692471-52e758d1-c150-48ab-aca5-25cd8a633af7.png)

add this setting to your `ansible.cfg` file:

`host_key_checking = False`

![image](https://user-images.githubusercontent.com/58165365/246692540-e7104e5d-7615-4255-af38-b7a3bdc5c984.png)

Viola!


To ping a specific group, run as follows:


![image](https://user-images.githubusercontent.com/58165365/246692857-fcf0756f-5698-49be-984f-9012dfcf5877.png)

To execute shell commands on a specific group:

![image](https://user-images.githubusercontent.com/58165365/246693265-87819051-45d4-47ed-a2cd-5e65ee2505e0.png)

# Playbooks

I've always wanted a quick way to install mutliple tools, all at one go in different servers. With ansible we can use playbooks and tasks.

For instance, lets create a playbook to install some basic tools on a newly provisioned server.

The playbooks use the `yaml` syntax such as shown below:

```yaml
---
- hosts: nodes
  become: yes
  tasks:
    - name: Install net-tools
      apt:
        name: git
```

Once this is run, it will install the tool on all servers in this group as shown below.

![image](https://user-images.githubusercontent.com/58165365/246693700-8916ac5e-0e4f-4f1b-b7f6-e3d04e51a175.png)



```bash
dev@master:~/automation/ansible$ ansible-playbook Playbooks/tools.yaml -K
BECOME password: 

PLAY [master] *****************************************************************************************************************************************************************************************************************************************************************************

TASK [Gathering Facts] ********************************************************************************************************************************************************************************************************************************************************************
ok: [192.168.1.7]

TASK [Installing Git] *************************************************************************************************************************************************************************************************************************************************************
changed: [192.168.1.7]

PLAY [nodes] ******************************************************************************************************************************************************************************************************************************************************************************

TASK [Gathering Facts] ********************************************************************************************************************************************************************************************************************************************************************
ok: [192.168.1.9]
ok: [192.168.1.8]
ok: [192.168.1.10]

TASK [Installing Git] *************************************************************************************************************************************************************************************************************************************************************
changed: [192.168.1.9]
changed: [192.168.1.8]
changed: [192.168.1.10]

PLAY RECAP ********************************************************************************************************************************************************************************************************************************************************************************
192.168.1.10               : ok=2    changed=1    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   
192.168.1.7                : ok=2    changed=1    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   
192.168.1.8                : ok=2    changed=1    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   
192.168.1.9                : ok=2    changed=1    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   
```

Running again:

![image](https://user-images.githubusercontent.com/58165365/246693916-418f77da-51ed-4476-9019-5065352d0365.png)

## Authentication

If you don't want to keep inputing your password everytime on the cli, you can specify the become password on the `hosts` file as follows:

```bash
[master]
192.168.1.7

[nodes]
192.168.1.8
192.168.1.9
192.168.1.10

[master:vars]
ansible_ssh_user=dev
ansible_ssh_pass=ne.11.88
ansible_become_pass=ne.11.88

[nodes:vars]
ansible_ssh_user=dev
ansible_ssh_pass=ne.11.88
ansible_become_pass=ne.11.88
```

This way, when we execute the playbook, we dont require to sepcify the password as shown.

![image](https://user-images.githubusercontent.com/58165365/246694109-2dd57366-b262-4368-932f-434899efb4dc.png)

Alternatively we can use ssh keys to securely authenticate to the servers.

First, we need to generate public and private keys on  our master control node server using `ssh-keygen` called ansible.

This simple bash script i created will be of great help.

```bash
#!/bin/bash

# Define the directory and key names
SSH_DIR="$HOME/.ssh"
PRIVATE_KEY="$SSH_DIR/ansible"
PUBLIC_KEY="$PRIVATE_KEY.pub"

# Create the .ssh directory if it doesn't exist (does nothing if it already exists)
mkdir -p "$SSH_DIR"

# Set the correct permissions for the .ssh directory
chmod 700 "$SSH_DIR"

# Generate the SSH key pair if it doesn't exist
if [ ! -f "$PRIVATE_KEY" ]; then
    ssh-keygen -t rsa -b 4096 -C "ansible" -f "$PRIVATE_KEY" -N ""
    echo "SSH key pair generated successfully."
else
    echo "SSH key pair already exists."
fi

# Set the correct permissions for the keys
chmod 600 "$PRIVATE_KEY"
chmod 644 "$PUBLIC_KEY"
```

next, make it executable by running `chmod +x keygen.sh`. Execute by running `./keygen.sh` as shown:

![image](https://user-images.githubusercontent.com/58165365/246694266-91461b8c-d000-4959-b210-a46ff3988497.png)

Next step is to create a playbook that will transfer the public keys to the authorized file of the respective serves.

The playbook used is:

```yaml
---
- hosts: master
  become: yes
  tasks:
    - name: Transfer public keys
      ansible.posix.authorized_key:
        user: dev
        state: present
        key: "{{ lookup('file', '~/.ssh/ansible.pub') }}"
    - name: Changing sudoers file
      lineinfile:
        path: /etc/sudoers
        state: present
        regexp: '^%sudo'
        line: '%sudo ALL=(ALL) NOPASSWD: ALL'
        validate: /usr/sbin/visudo -cf %s
- hosts: nodes
  become: yes
  tasks:
    - name: Transfer public keys
      ansible.posix.authorized_key:
        user: dev
        state: present
        key: "{{ lookup('file', '~/.ssh/ansible.pub') }}"
    - name: Changing sudoers file
      lineinfile:
        path: /etc/sudoers
        state: present
        regexp: '^%sudo'
        line: '%sudo ALL=(ALL) NOPASSWD: ALL'
        validate: /usr/sbin/visudo -cf %s
```


```bash
dev@master:~/automation/ansible$ ansible-galaxy collection install ansible.posix
Starting galaxy collection install process
Process install dependency map
Starting collection install process
Downloading https://galaxy.ansible.com/download/ansible-posix-1.5.4.tar.gz to /home/dev/.ansible/tmp/ansible-local-9832wrs3lnua/tmpln5mwnlt/ansible-posix-1.5.4-wlix0qqx
Installing 'ansible.posix:1.5.4' to '/home/dev/.ansible/collections/ansible_collections/ansible/posix'
ansible.posix:1.5.4 was installed successfully
```


![image](https://user-images.githubusercontent.com/58165365/246694376-1e89707a-3fe8-4cac-a366-5b0920718fa3.png)

![image](https://user-images.githubusercontent.com/58165365/246694407-3c66f7a8-f2fc-4eb1-8812-12773d9e7804.png)


![image](https://user-images.githubusercontent.com/58165365/246694505-5c36e688-c0b9-4bc3-8599-fa04fe508b3d.png)

![image](https://user-images.githubusercontent.com/58165365/246694531-c6788d37-5182-47ae-8907-f39c410f1d69.png)


Therefore, we neeed to remove `host_key_checking = False` from the `ansible.cfg` file and have it remain as:

```bash
[defaults]
inventory = /home/dev/automation/ansible/hosts
```

Also, you need to remove the `ansible_ssh_pass` & `ansible_become_pass` entries from the `hosts` file. However, we now need to specify the location of our private key, which is :

```yaml
[master]
192.168.1.7

[nodes]
192.168.1.8
192.168.1.9
192.168.1.10

[master:vars]
ansible_ssh_user=dev
ansible_ssh_private_key_file=~/.ssh/ansible

[nodes:vars]
ansible_ssh_user=dev
ansible_ssh_private_key_file=~/.ssh/ansible
```

![image](https://user-images.githubusercontent.com/58165365/246694913-e083b916-ae5f-457a-be03-1334df5168ea.png)