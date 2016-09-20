{# example sudoers for `aegir` user #}
Defaults:{{ user_name }}  !requiretty

{% if not user_passwordless_sudo %}
{{ user_name }} ALL=NOPASSWD: /usr/sbin/apachectl
{{ user_name }} ALL=NOPASSWD: /etc/init.d/hosting-queued
{% endif %}

{% if user_passwordless_sudo %}
{{ user_name }} ALL=(ALL) NOPASSWD: ALL
{% endif %}
