# modular-build

Basically a `Makefile` with a lot of modular tasks, because doing the same
thing lot of times is so fucking boring and I hate it.

## Installation

Just run in your app root:

```sh
wget -qO- http://git.io/63HVSg | sh
```

or with `curl`:

```sh
curl -s http://git.io/63HVSg | sh
```

It will clone this repo in a `scripts` folder inside your repository folder.

## How to use

Let's say you want to create a `test` task. We have to do 3 simple steps:

1. `cp scripts/{example.sh,test.sh}`;
1. Edit your script (`scripts/test.sh`);
1. Add "test" task to Makefile:

```Makefile
test:
  $(call script,test)
```

Then you can call `make test` and GNU Make will do the rest.

If you want to group a lot of tasks in one task, for example, `test` and
`anotherthing`:

```Makefile
all: test anotherthing
```

## HALP?

[twitter](http://twitter.com/caarlos0) |
[github](http://github.com/caarlos0) |
[site](http://carlosbecker.com)

