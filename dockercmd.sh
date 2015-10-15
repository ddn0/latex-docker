#!/bin/sh
case `uname` in
  Darwin*)
    exec docker run --rm -i --net=none -v $PWD:/data blang/latex "$@"
    ;;
  *)
    exec docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v $PWD:/data blang/latex "$@"
    ;;
esac
