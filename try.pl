#!/bin/perl

use lib '/var/www/cgi-bin/proba/lib';

use My::Schema;


print "Content-Type: text/html\n\n";

print "<html> <head>\n";
print "<title>Hello, world!</title>";
print "</head>\n";
print "<body>\n";

# CONNECT WITH DB

my $driver = "mysql"; 
my $database = "NowaDB";
my $dsn = "dbi:mysql:database=NowaDB";
my $userid = "";
my $password = "";


my $schema = My::Schema->connection($dsn,$userid,$password) or die $DBIx::errorstr;


my $folks_rs = $schema->resultset('imie') or die $DBIx::errorstr;


while ($ludz = $folks_rs->next) {

	print $ludz->imie;

}

print "</body> </html>\n";

