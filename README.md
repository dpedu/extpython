extpython
=========

Isolated python installations for Ubuntu

Extpython is a collection of tools for building installable packages containing various versions of Python. The
installations are isolated from the operating system's python such that modules may be added, removed, or upgraded
without risk of breaking. The builds are executed in Docker.

Example invocation:

```
./images.sh
./build.sh trusty-3.7.3.sh
```

The vars file - `trusty-3.7.3.sh` above - contains information about what python version will be built. See
`src/bionic-3.7.3.sh` for an annotated example.


TODO:

- Parameter for pre-loaded pip modules
