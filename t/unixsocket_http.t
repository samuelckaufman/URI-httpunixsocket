use strict;
use warnings;
use URI;
use Data::Dumper::Concise;
use Test::More;
my $u = URI->new("httpunixsocket://localhost/RPC3?hey=you#/tmp/floops.sock");

is $u->authority,'localhost','authority is from fragment';
is $u->path,"/RPC3",'path is from fragment';
is $u->socket_path,"/tmp/floops.sock";
