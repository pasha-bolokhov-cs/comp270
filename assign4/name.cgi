#!/usr/bin/env perl
#

use strict;

print <<END;
Content-type: text/html\n
<html>
  <head>
    <title>Environment</title>
  </head>
  <body>
    <pre>
END

if ($#ARGV < 0) {
  print "You should have written 'name=SomeName' in the request\n";
} else {
  print <<END;
<p>
The name $ARGV[0] is very rare
</p>
END
}

print <<END;
    </pre>
  </body>
</html>
END

