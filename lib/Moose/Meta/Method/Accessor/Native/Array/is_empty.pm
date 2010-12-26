package Moose::Meta::Method::Accessor::Native::Array::is_empty;

use strict;
use warnings;

our $AUTHORITY = 'cpan:STEVAN';

use Moose::Role;

with 'Moose::Meta::Method::Accessor::Native::Reader' =>
    { -excludes => ['_maximum_arguments'] };

sub _maximum_arguments { 0 }

sub _return_value {
    my $self = shift;
    my ($slot_access) = @_;

    return '@{ (' . $slot_access . ') } ? 0 : 1';
}

no Moose::Role;

1;
