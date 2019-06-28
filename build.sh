#!/bin/bash
cd /paper

if [ ! -L src ]; then
	exit 1
fi

cd src
{
	make
} 1>/tmp/stdout 2>/tmp/stderr
exit 0
