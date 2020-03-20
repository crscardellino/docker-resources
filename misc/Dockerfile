FROM ubuntu:bionic

RUN apt-get update && apt-get install -y haskell-platform libasound2-dev

RUN cabal update && cabal install Euterpea

RUN mkdir ds
VOLUME /lab
WORKDIR /lab

ENTRYPOINT ["ghci"]
