Deb builder for extpython

Build process:

- ./build.sh to kick off the process, runs a docker image - docker run -it --rm -v $PWD:/src ubuntu:bionic bash
    - ./build-inner.sh called in the container, prepares the environment
    - ./build-inner.sh switches to an underpriv'd user and calls...
        - ./build-deb.sh - does the actual build

TODO:
- parameterize the build:
    - vars.sh needs to pass PYTHON_RELEASE down into the makefile
    - debian metadata files need to obey this too:
        - changelog: package name and version
        - control: package name
        - Makefile: a component of the --prefix path

TODO later:
- upload resulting deb to artifact
- support other than Bionic
- separate process into creating the builder image & building the deb itself
- parameter for pre-loaded pip modules
