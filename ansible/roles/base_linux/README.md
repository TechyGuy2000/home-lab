Role Name
=========

This Ansible role is used for setting up a base Linux environment. It includes tasks such as uninstalling unnecessary packages, cleaning up systemd service links, and other base configurations.

Requirements
------------

There are no specific requirements for this role outside of Ansible itself, but it is designed to be run on a system that uses the `dnf` package manager (such as Fedora, CentOS, or RHEL).

Role Variables
--------------

Variables related to this role are mostly set with defaults that you may want to override:

- `setroubleshoot_packages`: A list of setroubleshoot packages to be removed. Default is `setroubleshoot-plugins` and `setroubleshoot-server`.
- `setroubleshoot_service`: The name of the setroubleshoot service to disable and remove. Default is `setroubleshootd`.

The variables can be overridden by setting them in your playbook or in the `defaults/main.yml` file.

Dependencies
------------

This role does not have dependencies on other Galaxy roles.

Example Playbook
----------------

Below is an example of how to implement the base Linux role in a playbook:

```yaml
- hosts: all
  become: yes
  roles:
    - base_linux
```

This example assumes that the role is named `base_linux` and is located in the `roles/` directory at the root of your Ansible project.

License
-------

This project is licensed under the [MIT License](../../../LICENSE)

