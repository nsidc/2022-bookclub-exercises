## Please keep this repo organized

The root directory will contain exercise names in the format `{name}-{number}`,
where `{number}` is a 0-prefixed two-digit number. E.g.:

* `euler-01` for [Euler Project problem #1](https://projecteuler.net/problem=1)


## Setup

### Shared coding environment

We're using VSCode. [Install VSCode following instructions for your
OS](https://code.visualstudio.com/).

Once VSCode is installed, install the Live Share extension by pressing CTRL+P
or COMMAND+P, then pasting:

```
ext install MS-vsliveshare.vsliveshare-pack
```


### Scheme runtime

We're using the Racket runtime for Scheme (what's the difference between Racket
and Scheme? How does Racket know to run a given file using the Scheme
"dialect"? Am I using the right word salad?)


#### Install Racket

Use the installer for your operating system: https://download.racket-lang.org/

Or use a PPA in Ubuntu:

```
sudo add-apt-repository ppa:plt/racket
sudo apt-get update
sudo apt-get install racket
```


### Configuration for editing Racket code

Install language server:

```
raco pkg install racket-langserver
raco pkg update racket-langserver
```

Install VSCode extensions by pressing CTRL+P or COMMAND+P, then pasting:

```
ext install evzen-wybitul.magic-racket
```
