package String::Wildcard::DOS;

use 5.010001;
use strict;
use warnings;

# VERSION

use Exporter;
our @ISA = qw(Exporter);
our @EXPORT_OK = qw(
                       contains_wildcard
               );

sub contains_wildcard {
    my $str = shift;

    $str =~ /[*?]/;
}

1;
# ABSTRACT: DOS wildcard string routines

=for Pod::Coverage ^(qqquote)$

=head1 SYNOPSIS

    use String::Wildcard::DOS qw(contains_wildcard);

    say 1 if contains_wildcard(""));      # -> 0
    say 1 if contains_wildcard("ab*"));   # -> 1
    say 1 if contains_wildcard("ab\\*")); # -> 1


=head1 DESCRIPTION


=head1 FUNCTIONS

=head2 contains_wildcard($str) => bool

Return true if C<$str> contains DOS wildcard pattern. Wildcard patterns include
C<*> (meaning zero or more characters), C<?> (exactly one character). There is
no backslash escaping mechanism.


=head1 TODO

See L<String::Wildcard::Bash>'s TODO for the types of other functions which I
plan to add to this module.


=head1 SEE ALSO

L<Regexp::Wildcards> to convert a string with wildcard pattern to equivalent
regexp pattern. Can handle Unix wildcards as well as SQL and DOS/Win32.

Other C<String::Wildcard::*> modules.

=cut
