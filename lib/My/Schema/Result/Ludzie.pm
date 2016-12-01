use utf8;
package My::Schema::Result::Ludzie;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

My::Schema::Result::Ludzie

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<Ludzie>

=cut

__PACKAGE__->table("Ludzie");

=head1 ACCESSORS

=head2 imie

  data_type: 'varchar'
  is_nullable: 0
  size: 30

=head2 nazwisko

  data_type: 'varchar'
  is_nullable: 0
  size: 30

=head2 wiek

  data_type: 'integer'
  is_nullable: 0

=head2 numer

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "imie",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "nazwisko",
  { data_type => "varchar", is_nullable => 0, size => 30 },
  "wiek",
  { data_type => "integer", is_nullable => 0 },
  "numer",
  { data_type => "integer", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</numer>

=back

=cut

__PACKAGE__->set_primary_key("numer");


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2016-10-21 23:13:09
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:A/zoZ8Y/qRVwXCp5SuWVIA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
