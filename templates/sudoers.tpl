{# example sudoers for `aegir` user #}
Defaults:{{ user_name }}  !requiretty
{{ user_name }} ALL=NOPASSWD: /usr/sbin/apachectl
{{ user_name }} ALL=NOPASSWD: /etc/init.d/hosting-queued

{# if you want the user to have full sudo rights without password remove the
   lines above and uncomment the following line #}
{# {{ user_name }} ALL=(ALL) NOPASSWD: ALL #}
