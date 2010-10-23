use strict;
use Test::More tests => 1;

BEGIN { use_ok 'Furl' }
diag "Furl/$Furl::VERSION";

for my $optional(qw( Net::IDN::Encde IO::Socket::SSL Compress::Raw::Zlib )) {
    eval qq{ require $optional };
    diag $optional . '/' . ($optional->VERSION || '(not installed)');
}
