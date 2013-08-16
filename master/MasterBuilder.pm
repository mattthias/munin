package MasterBuilder;

# $Id$

use base qw(Module::Build);

use lib '../common/blib/lib';

use warnings;
use strict;


our %template_files = ();

# find all templates
foreach my $template (glob("www/*.tmpl www/partial/*.tmpl")) { 
    (my $target = $template) =~ s/www\///;
    $template_files{ $template } = 'templates/' . $target;
}

1;
