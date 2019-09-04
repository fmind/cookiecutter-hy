#!/bin/sh

chmod u+x {{cookiecutter.name}}.hy
mv {{cookiecutter.name}}.hy ../

cd ..; rmdir {{cookiecutter.name}}
