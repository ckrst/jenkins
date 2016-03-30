# Jenkins
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

Your jenkins server should be available at http://localhost:8080

# Creating builds

Create your builds like the example job at `chef/cookbooks/myjenkins/recipes/hello_world.rb`
Add the line `chef.add_recipe 'myjenkins::my_job'` to the chef provision block in Vagrantfile and run

```
vagrant provision
```


# Testing (requires chefdk)

```
chef exec rspec chef/cookbooks/myjenkins
```
