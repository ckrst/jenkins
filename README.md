# jenkins
A jenkins server for local development

[![Build Status](https://travis-ci.org/vinik/jenkins.svg?branch=master)](https://travis-ci.org/vinik/jenkins)

```
git clone https://github.com/vinik/jenkins.git
cd jenkins
vagrant up
```

A few jenkins plugins (like git) don't show up the first time we run it, so
```
vagrant halt
vagrant up
```
