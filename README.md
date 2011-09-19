#grepedit

* [grepedit - github](http://github.com/nanki/grepedit)

## DESCRIPTION:

Just grep and edit. Enjoy poor man's AOP.

## FEATURES/PROBLEMS:

* Edit the results from a grep command.
* Gorgeous vim syntax file.

## SYNOPSIS:

The command is similar to grep

    $ grepedit word . -r

Then the editor launches,

    # ===(snip)=== public/javascripts/application.js
      format:'json',
      tags: keyword
    };

    # ===(snip)=== ...

Edit and save it.

## REQUIREMENTS:

* Ruby

## INSTALL:

    $ git clone git://github.com/nanki/grepedit

  and add `bin/grepedit` to your search path.


## LICENSE:

(The MIT License)

Copyright (c) 2011 NANKI Haruo

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
