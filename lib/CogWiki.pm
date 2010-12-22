package CogWiki;
use 5.008003;
use Mouse;
extends 'Cog::Plugin';

our $VERSION = '0.02';

sub url_map {
    [
        '()',
        ['/' => 'redirect', ('/pages/')],
        ['/home/?' => 'home_page'],
        ['/pages/?' => 'page_list'],
        ['/page/([A-Z0-9]{4})/?' => 'page_display', ('$1')],
        ['/page/name/([^/]+)/?' => 'page_by_name', ('$1')],
        ['/tags/' => 'tag_list' ],
        ['/tag/([^/]+)/?' => 'tag_page_list', ('$1')],
    ]
}

sub site_navigation {
    [
        '()',
        ['Home' => '/home/'],
        ['Recent Changes' => '/pages/'],
        ['Tags' => '/tags/'],
    ]
}

1;

=encoding utf8

=head1 NAME

CogWiki - Cog Based Wiki Framework

=head1 SYNOPSIS

    > cog init CogWiki
    > cog make
    > cog start

=head1 AUTHOR

Ingy döt Net <ingy@cpan.org>

=head1 COPYRIGHT

Copyright (c) 2010. Ingy döt Net.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

See http://www.perl.com/perl/misc/Artistic.html

=cut
