# modular-build

Basically, a `Makefile` and some base things to do modular GNU Make
tasks for any project, because doing same things lots of times is
fucking boring and I hate this.

I originally created this here at [Fluig][0] with contributions of
[@lucasmerencia][1] to use with our project, but I decided that it
would be cool to share the structure with other people.

## Installation

Just run in your app root (with `wget`):

```sh
wget -qO- http://git.io/63HVSg | bash
```

or with `curl`:

```sh
curl -s http://git.io/63HVSg | bash
```

It will clone this repo in a `scripts` folder inside your app folder.

## Usage

Let's say you want to create a `test` task. We have to do 3 simple steps:

1. Run `make newtask` (inform name `test`);
1. Edit your script (`scripts/test.sh`);
1. Run `make test` and GNU Make will do the rest for you.

If you want to group a lot of tasks in one task, for example, `test` and
`anotherthing`:

```Makefile
all: test anotherthing
```

## Benefits

- You can call a lot of scripts once: `make one two three` (and with a custom order);
- Autocomplete in task names;
- Variables and functions sharing between scripts (`base.sh`), a good example is
that you can share a custom `$MAVEN_OPTS` between scripts;
- Easy to add new scripts (as described above).

## Pitfals

- If you already have a `scripts` folder, you will have some problems. You can just backup
your existent `scripts`, install this, and then copy back your old files, or simply
manually install modular-build;
- It will probably not work in NTFS filesystems due to NTFS file permissions.

## Help?

[twitter](http://twitter.com/caarlos0) |
[github](http://github.com/caarlos0) |
[site](http://carlosbecker.com)


[0]: http://www.fluig.com/
[1]: http://github.com/lucasmerencia
