#!/bin/sh -l

# Parameters
#
# $1 - python-root-list
# $2 - use-pylint
# $3 - use-pycodestyle
# $4 - use-flake8
# $5 - use-black
# $8 - extra-pylint-options 6
# $9 - extra-pycodestyle-options 7
# ${10} - extra-flake8-options 8
# ${11} - extra-black-options 9

if [ "$2" = true ] ; then

    echo Running: pylint $6 $1

    pylint $6 $1
    exit_code=$?

    if [ "$exit_code" = "0" ]; then
        echo "Pylint ok"
    else
        echo "Pylint error"
        exit $exit_code
    fi

fi


if [ "$3" = true ] ; then

    echo Running: pycodestyle $7 $1

    pycodestyle $7 $1
    exit_code=$?

    if [ "$exit_code" = "0" ]; then
        echo "pycodestyle ok"
    else
        echo "pycodestyle error"
        exit $exit_code
    fi

fi

if [ "$4" = true ] ; then

    echo Running: flake8 $8 $1

    flake8 $8 $1
    exit_code=$?

    if [ "$exit_code" = "0" ]; then
        echo "Flake8 ok"
    else
        echo "Flake8 error"
        exit $exit_code
    fi

fi

if [ "$5" = true ] ; then

    echo Running: black --check $9 $1

    black --check $9 $1
    exit_code=$?

    if [ "$exit_code" = "0" ]; then
        echo "Black ok"
    else
        echo "Black error"
        exit $exit_code
    fi

fi
