package URI::httpunixsocket;

use strict;
use warnings;

use base qw( URI::http );

sub socket_path {
    URI->new(shift->fragment)->path;
}
1;
