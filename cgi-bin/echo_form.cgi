#!/usr/bin/perl -w
use strict;
use CGI ':standard';
my @param = param();
print "Content-type: text/html\n\n";
foreach my $name (param()) {
    my @value = param($name);
    print "<p>The field with the NAME attribute equal to
           <b>$name</b> had a VALUE equal to 
           <b>@value</b></p>\n";
}
