package Lingua::JA::Romaji::Valid::Rule::ISO3602Loose;

use strict;
use warnings;
use base qw( Lingua::JA::Romaji::Valid::Rule );

__PACKAGE__->valid_consonants(qw(
  k s t n h m y r g z d b p
  ky sy ty ny hy my ry gy zy by py
  sh ch j dy
));

__PACKAGE__->should_delete(qw());
__PACKAGE__->should_add(qw( wa wo shi chi tsu ji kwa gwa fu ));

__PACKAGE__->filters(qw(
  normalize_n_with_apostrophe
  normalize_syllabic_n
  normalize_geminate_tch
));

1;

__END__

=head1 NAME

Lingua::JA::Romaji::Valid::Rule::ISO3602Loose

=head1 DESCRIPTION

So-called 'Kunrei' romanization rules (ISO 3602) with
permitted exceptions from other systems. This is the 
default rule set Lingua::LA::Romaji::Valid uses.

=head1 SEE ALSO

L<Lingua::JA::Romaji::Valid::Rule>, L<http://en.wikipedia.org/wiki/Kunrei-shiki>, L<http://www.halcat.com/roomazi/doc/sisinkakikata.html>

=head1 AUTHOR

Kenichi Ishigaki, E<lt>ishigaki at cpan.orgE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2007 by Kenichi Ishigaki.

This program is free software; you can redistribute it and/or
modify it under the same terms as Perl itself.

