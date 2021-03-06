install-with-test-support:
	cabal install --enable-tests
	cabal test

test:
	cabal clean
	cabal test

build:
	cabal build

test-repl:
	cabal repl tests

repl:
	cabal repl

reset:
	rm -rf .cabal-sandbox
	cabal sandbox init


haddock:
	gen-docs.sh

# export BTVER=0.1.0.1

# upload:
# 	cabal sdist
# 	cabal upload dist/blacktip-$BTVER.tar.gz

# Make docs
# Invoke haddock
# cp -R ./dist/doc/html/blacktip/ blacktip-$BTVER-docs
# tar cvz --format=ustar -f blacktip-$BTVER-docs.tar.gz blacktip-$BTVER-docs
# curl -X PUT -H 'Content-Type: application/x-tar' -H 'Content-Encoding: gzip' --data-binary "@blacktip-$BTVER-docs.tar.gz" "https://bitemyapp:$PASSWORD@hackage.haskell.org/package/blacktip-$BTVER/docs"
