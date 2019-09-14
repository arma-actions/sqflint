# GitHub Action for SQFLint

This action runs [sqflint](https://github.com/LordGolias/sqflint) on your code.

By default the program is run with following arguments:
  - `--exit e` - return 1 and exit on error
  - `--directory addons` - lint code in `addons` directory

## Example workflow

```yml
# main.yml
name: CI

on:
  push:
    branches:
      - master
  pull_request: ~

jobs:
  test-sqflint:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master

      - uses: arma-actions/sqflint@v1.0
        name: Validate with SQFLint
```

# Customizing arguments

If you want to customize the arguments given to `sqflint` binary you can do this by specifying the arguments in `jobs.<job>.steps.with.args`. *This will remove default arguments from this Action.

```yml
# main.yml
jobs:
  test-sqflint:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master

      - uses: arma-actions/sqflint@v1.0
        name: Validate with SQFLint with custom arguments
        with:
          args: --exit w --directory Missionframework
```