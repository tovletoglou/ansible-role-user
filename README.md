# Ansible Role: Aegir User

Installs the "aegir" user and prepares for use as a remote server.

## Requirements

Tested CentOS 7

## Role Variables

Available variables are listed below, along with default values `defaults/main.yml`

The default variables was defined in order to create the `aegir` user.

This role can create any type of users but it was initially designed to create the `aegir`user that is needed by the: [Aegir hosting system](http://www.aegirproject.org/)

Define the user's name.

    user_name: aegir

User's ID (UID). If you leave it empty the OS will pick one for the user.

    user_uid:

User's shell.

    user_shell: /bin/bash

User's home directory. Usually it's `/home/{{ user_name }}`

    user_home: "/var/{{ user_name }}"

Define the group name. Usually it's same with the user's name.
If you don't need the corresponding group just leave it empty.
This is not the variable you define the user's groups.

    user_group_name: "{{ user_name }}"

User's group ID (GID). If you leave it empty the OS will pick one for the group.

    user_group_gid:

List with groups that user belongs. String separated with commas and **no** spaces (string,string,...).
If you defined a `{{ user_group_name }}` you should add it in the list bellow otherwise it will not assigned automatically.

    user_group_list: "{{ user_group_name }},apache"

Give `sudo` privilages to the user (true | false).
Edit the `templates/sudoers.tpl` accordingly.

    user_sudo: true

Add passwordless sudo (true | false).

    user_passwordless_sudo: false

Add the URL of your public keys, like: `user_authorized_keys: "https://github.com/USERNAME.keys"`
or add a local file, like: `user_authorized_keys: "{{ lookup('file', '/root/.ssh/id_rsa.pub') }}"`

    user_authorized_keys: ""

## Dependencies

None

# License

MIT

# Author Information

Apostolos Tovletoglou [ansible-role-user](https://github.com/tovletoglou/ansible-role-user)
