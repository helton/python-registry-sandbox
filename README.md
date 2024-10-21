# python-registry-sandbox

Development environment for testing local registries for Python packages.

## Usage

1) Setup the virtual environment via poetry: `poetry install`
2) Run `poetry run task start`
3) Create a simple project and install the libs from the local pypi-server:
```sh
$ mkdir -p /tmp/test-libs
$ cd /tmp/test-libs
$ python -m venv .venv
$ source .venv/bin/activate
$ pip install --trusted-host localhost:8888 --index-url http://localhost:8888/simple mylib1==0.1.0 mylib2==0.1.0
Looking in indexes: http://localhost:8888/simple
Collecting mylib1==0.1.0
  Downloading http://localhost:8888/packages/mylib1-0.1.0-py3-none-any.whl (1.5 kB)
Collecting mylib2==0.1.0
  Downloading http://localhost:8888/packages/mylib2-0.1.0-py3-none-any.whl (1.5 kB)
Installing collected packages: mylib2, mylib1
Successfully installed mylib1-0.1.0 mylib2-0.1.0
$ python
Python 3.12.6 (main, Sep  8 2024, 13:18:56) [GCC 14.2.1 20240805] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> from mylib1.hello import say_hello
>>> from mylib2.hello import say_hi
>>> say_hello()
Hello from MyLib1!
>>> say_hi()
Hi from MyLib2!
>>>
```
