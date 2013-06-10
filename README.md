# modular-build

Basically, a `Makefile` and some base things to do modular GNU Make
tasks for any project, because doing same things lots of times is
fucking boring and I hate this.

I originally created this here at [Fluig][0] with contributions of
[@lucasmerencia][1] to use with our project, but I decided that it
would be cool to share the structure with other people.

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

## Usage

Let's say you want to create a `test` task. We have to do 3 simple steps:

1. `make newtask`;
1. Inform the task name as `test`;
1. Edit your script (`scripts/test.sh`);

Then you can call `make test` and GNU Make will do the rest.

If you want to group a lot of tasks in one task, for example, `test` and
`anotherthing`:

```Makefile
all: test anotherthing
```

## Pitfals

- If you already have a `scripts` folder, you will have some problems. You can just backup
your existent `scripts`, install this, and then copy back your old files, or simply
manually install modular-build.

## Help?

[twitter](http://twitter.com/caarlos0) |
[github](http://github.com/caarlos0) |
[site](http://carlosbecker.com)


[0]: http://www.fluig.com/
[1]: http://github.com/lucasmerencia
