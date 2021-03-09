# Url-shortener

## Installation
1. [Install docker](https://docs.docker.com/docker-for-mac/install/)
1. [Install docker-compose](https://docs.docker.com/compose/install/)
1. [Install dip](https://github.com/bibendi/dip#installation)
    ```shell script
    brew tap bibendi/dip
    brew install dip
    ```
    or
    ```shell script
    curl -L https://github.com/bibendi/dip/releases/download/v6.1.0/dip-`uname -s`-`uname -m` > /usr/local/bin/dip
    chmod +x /usr/local/bin/dip
    ```
1. Use
   - bash command
    ```shell script
    eval "$(dip console)"
    ```
   - or use the prefix `dip` for the following console commands
   ###### It’s preferable to use the first option, it will add hints to your console
1. Run this command for build docker-compose and apply default setting
    ```shell script
    provision
    ```
1. For startup application use
    ```shell script
    up
    ```
1. Use default rails command using item 4 of this list
   - Example with `eval`
   ```shell script
   eval "$(dip console)"
   rails s
   RAILS_ENV=production rails c
   ```
   dip will auto provide all command to docker images with setting into dip.yml
   - Example with `dip` prefix
   ```shell script
   dip rails s
   dip RAILS_ENV=production rails c
   ```

## Development
1. Install [Lefthook](https://github.com/Arkweid/lefthook/blob/master/docs/full_guide.md#referencing-commands-from-lefthookyml)
    for apply git hooks
    ```shell script
    brew install Arkweid/lefthook/lefthook
    ```
    or other way from link
1. Use `lefthook run ${hook name}` for run hooks manual
1. Run `rubocop` to lint a ruby code
1. Run `fasterer` to link code by performance
1. Run `rubycritic` to check code small and test coverage
1. Run `crystalball` ro run all ruby spec using [Regression Test Selection mechanism](https://tenderlovemaking.com/2015/02/13/predicting-test-failues.html)
1. Run `database_consistency` ro check the consistency of the database constraints with the application validations.
1. Run `rspec` to run all ruby spec, and use `OPENAPI=1` env for generate openapi docs

###### You can see all supported commands in a `dip.yml`