#!/bin/sh

if [[ $COMPILERS_ACTIVATED ]]; then
    echo "Already activated!"
    exit 1;
fi

DIR=$(dirname "$0")

! [[ -d "$DIR/cs143" ]] && tar zxvf "$DIR/student-dist.tar.gz"

echo "Adding $DIR/cs143/bin/ to PATH..."
export PATH="$DIR"/cs143/bin/:$PATH
export PS1="<compilers>:$PS1"
export COMPILERS_ACTIVATED=1
