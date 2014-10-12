#
# This is a SKELETON file and has been provided to enable you to get working on the
# first exercise more quickly.
#

package Bob;

use strict;
use Exporter;
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK %EXPORT_TAGS);

$VERSION = 1.00;
@ISA = qw(Exporter);
@EXPORT = ();
@EXPORT_OK = qw(hey);
%EXPORT_TAGS = ( DEFAULT => [qw(&hey)],
);

sub hey {
  my $what = shift;
  chomp($what);
  my $answer = 'Whatever.';
  if ( $what eq uc $what && $what  =~ /\p{Uppercase}/) {
    $answer = 'Whoa, chill out!';
  } elsif ( substr($what, -1) eq '?' ) {
    $answer = 'Sure.';
  } elsif ( $what =~ /^\s*$/ ) {
    $answer = 'Fine. Be that way!';
  }
  return $answer
}

1;
