#! /bin/bash

awk -F "/" '/^\/usr/{print $4}' /etc/shells