Role Name
=========

**ansible-role-redhat_localrepo**

Requirements
------------

None

Role Variables
--------------

The role variables below are default. You can change any of them according your requirements.

```yaml
redhat_localrepo:
  # Red Hat Portal username
  rhn_username: "{{ lookup('env', 'RHN_USERNAME') }}"
  # Red Hat Portal password
  rhn_password: "{{ lookup('env', 'RHN_PASSWORD') }}"
  # Whether or not to autosubscibe to available repositories.
  autosubscribe: true
  # repositories to mirror
  repos:
    - "rhel-7-server-rpms"
    - "rhel-7-server-extras-rpms"
  # root directory for storing packages
  web_root_dir: '/var/www/html'
  # port to listen
  web_server_port: 80
  # execution time of daily cron job
  daily_sync_hour: 22
  daily_sync_minute: 0
```

Dependencies
------------

None

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
        - { role: ansible-role-redhat_localrepo }

License
-------

MIT

Author Information
------------------

**Leon Tseng** 

-  [godleon@GitHub](https://github.com/godleon)
