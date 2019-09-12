#!/bin/sh

sh -c "echo Running sqflint with arguments:"
sh -c "echo $*"
sh -c "sqflint $*"
