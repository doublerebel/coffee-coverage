Istanbul and JSCoverage-style instrumentation for Iced CoffeeScript files.

Benbria+Doublerebel IcedCoffeeCoverage
======================

[![Build Status](https://travis-ci.org/doublerebel/iced-coffee-coverage.svg?branch=master)](https://travis-ci.org/doublerebel/iced-coffee-coverage)
[![Coverage Status](https://coveralls.io/repos/doublerebel/iced-coffee-coverage/badge.svg?branch=master)](https://coveralls.io/r/doublerebel/iced-coffee-coverage?branch=master)
[![Dependency Status](https://david-dm.org/doublerebel/iced-coffee-coverage.svg)](https://david-dm.org/doublerebel/iced-coffee-coverage)
[![devDependency Status](https://david-dm.org/doublerebel/iced-coffee-coverage/dev-status.svg)](https://david-dm.org/doublerebel/iced-coffee-coverage#info=devDependencies)

Instruments Iced CoffeeScript files for code coverage.  Compiles (.iced|.coffee) files to .js files, and adds JSCoverage or Istanbul style instrumentation for the original iced coffee script source.

[![NPM](https://nodei.co/npm/iced-coffee-coverage.png?downloads=true&downloadRank=true&stars=true)](https://npmjs.org/package/iced-coffee-coverage)

Features
--------

* Native coffee-script instrumentation - [not based on source maps](./docs/comparison-to-ibrik.md)
* Conditional instrumentation with [pragmas](./docs/pragmas.md)
* Support for [Istanbul](./docs/HOWTO-istanbul.md) style instrumentation
* Support for [JSCoverage](./docs/HOWTO-jscoverage.md) style instrumentation
* Support for [Streamline compiler](./docs/streamline.md) style instrumentation
* Dynamic instrumentation - instrument your code at run time
* [Precompiled instrumentation](./docs/cli.md)

Quick Start
-----------

Assuming you have a folder named "test" full of mocha tests, which directly loads your (.iced|.coffee)
files, then from your project's folder, run:

```bash

$ npm install --save-dev iced-coffee-coverage
$ npm install --save-dev istanbul
$ mocha --recursive --compilers coffee:iced-coffee-script/register --require iced-coffee-coverage/register-istanbul test

$ ./node_modules/.bin/istanbul report
```

You should now have an Istanbul coverage report in ./coverage/lcov-report/index.html.

If this doesn't quite do what you're after, check out our tutorials below:

Tutorials:
----------

* [Mocha and Istanbul Guide](./docs/HOWTO-istanbul.md)
* [Mocha and JSCoverage Guide](./docs/HOWTO-jscoverage.md)
* [Istanbul and Tape Guide](./docs/HOWTO-tape-not-mocha.md) courtesy [@jessaustin](https://github.com/jessaustin).
* [Codeship and Coveralls](./docs/HOWTO-codeship-and-coveralls.md)
* [Travis-CI and Coveralls](./docs/HOWTO-travisci-and-coveralls.md)
* [Ignoring code with Pragmas](./docs/pragmas.md)

Have coffee-coverage working in a setup not described above?
[Raise an issue](https://github.com/doublerebel/iced-coffee-coverage/issues/new) and let us know how you're
using iced-coffee-coverage, so we can document it here.

What it Does
------------

Benbria+Doublerebel Iced CoffeeCoverage is a tool for determining the coverage of your unit tests.  It does this
by instrumenting (.iced|.coffee) files to see how often each line, branch, or function is executed.
Iced CoffeeCoverage is capable of producing both [Istanbul](./docs/HOWTO-istanbul.md) and
[JSCoverage](./docs/HOWTO-jscoverage.md) style instrumentation.
