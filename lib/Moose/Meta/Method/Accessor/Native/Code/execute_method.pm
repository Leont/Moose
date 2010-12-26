package Moose::Meta::Method::Accessor::Native::Code::execute_method;

use strict;
use warnings;

our $AUTHORITY = 'cpan:STEVAN';

use Moose::Role;

with 'Moose::Meta::Method::Accessor::Native::Reader';

sub _return_value {
    my $self = shift;
    my ($slot_access) = @_;

    return $slot_access . '->($self, @_)';
}

no Moose::Role;

1;
