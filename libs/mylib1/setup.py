from setuptools import setup, find_packages

setup(
    name='mylib1',
    version='0.1.0',
    description='A sample Python library for testing pypiserver',
    author='Helton Carlos de Souza',
    author_email='heltoncarlossouzal@gmail.com',
    url='https://github.com/helton/mylib1',
    packages=find_packages(),
    classifiers=[
        'Programming Language :: Python :: 3',
        'License :: OSI Approved :: MIT License',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
