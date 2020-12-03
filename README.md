# SoundBar
## Description
A private marketplace for instrument sales.

## Install

### Clone the repository

```shell
git clone git@github.com:jackismoe/SoundBar.git
```
#### If using VSCode, open directory with:
```shell
code SoundBar
```

### Check your Ruby version
#### This project uses Ruby 2.6.1 & Rails 6.0.3.2

```shell
ruby -v
rails -v
```

The ouput should start with something like `ruby 2.6.1` & `Rails 6.0.3.2`

If not, install the right ruby or rails version (it could take a while):

```shell
rbenv install 2.6.1
gem install rails -v 6.0.3.2
```

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler):

```shell
bundle install
```

### Initialize the database

```shell
rails db:migrate && rails db:seed
```

## Serve

```shell
rails s
```
### If attempting to log in via Twitter, make sure `gem 'thin'` is not commented out in the gemfile line: 46, and add https:// to the beginning of your url

```shell
thin start --ssl

# https://localhost:3000 or https://127.0.0.1:3000
```