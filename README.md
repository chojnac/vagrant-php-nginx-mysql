vagrant php nginx mysql box
------------------------
Simple vagrant Ubuntu 14 box with latest php, php-fpm, nginx, mysql.

Dependencies
------------

* Ruby 1.9.2
* Vagrant 1.6+
* librarian-chef
* VirtualBox 4.3.14+


Install vagrant plugins (if not instaled)
-----------------------

```
$ vagrant plugin install vagrant-cachier
$ vagrant plugin install vagrant-omnibus

```

Install librarian
----------------------

```
$ gem install librarian-chef
```

Install chef cookbooks
----------------------

```
$ cd chef
$ librarian-chef install
```

Run vagrant
------------------
```
vagrant up
```

Done
-------------------

Open in browser [http://192.168.33.10]()

Problems
------------
* compile/install problems with Virtualbox Guest Additions  - upgrade VirtualBox [ticket](https://www.virtualbox.org/ticket/12638)
