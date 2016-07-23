# grip-docker
Run [grip](https://github.com/joeyespo/grip) Markdown renderer in a docker container

<!-- BEGIN-MARKDOWN-TOC -->
* [Why](#why)
* [Installation](#installation)
* [Usage](#usage)
	* [docker run](#docker-run)
	* [grip-docker](#grip-docker)
* [License](#license)

<!-- END-MARKDOWN-TOC -->

## Why

[grip](https://github.com/joeyespo/grip) is a very useful tool to locally render
README.md and other markdown content just as it appears on Github.

This project bundles grip, along with text mode browsers
[lynx](http://lynx.invisible-island.net/current/index.html) and
[elinks](https://github.com/nabetaro/elinks) in a relatively small,
[Alpine Linux](https://www.alpinelinux.org/) based Docker container.

## Installation

For basic usage, no installation is necessary, the container is
available from [Docker
Hub](https://hub.docker.com/r/kbai/grip-docker/).

To use the [`grip-docker`](#grip-docker) shell script, copy it to a
folder within your `$PATH`:

```bash
cp grip-docker ~/bin/
```

Or use the Makefile:

* `make install` to install to `/usr/local/bin/grip-docker`
* `make install PREFIX=$HOME/.local` to install to `$HOME/.local/bin/grip-docker`
* `make uninstall` to uninstall

## Usage

You can run it as a docker container or use the `./grip-docker` bash script:

### docker run

```
docker run -v 'path/to/project' kbai/grip
```

### grip-docker

`grip-docker --elinks README.md` opens the rendered README.md in the
elinks browser in the container and set up the terminal correctly.

`grip-docker -b README.md` opens the rendered README.md in a web
browser on the host.

In addition to the option `grip` supports, `grip-docker` has these
additional options:

```
  --lynx            Use lynx text browser
  --elinks          Use elinks text browser
  --ports=FROM:TO   Use first free port in range. Default: '6419:6429'
  -d --detach       Run in background
```

## License

<!-- BEGIN-INCLUDE LICENSE -->
The MIT License (MIT)

Copyright (c) 2016 Konstantin Baierer

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

<!-- END-INCLUDE -->
