#!/usr/bin/env perl
#==============================================================================#
# VIM_CTERM_TO_GUI
#------------------------------------------------------------------------------#
# Author:  Ed Higgins <ed.j.higgins@gmail.com>
#------------------------------------------------------------------------------#
# Version: 0.1.1, 2022-09-23
#------------------------------------------------------------------------------#
# This code is distributed under the MIT license.
#==============================================================================#
use v5.30;
use warnings;

sub main() {
    my @colors;
    open (my $xres, "<", "$ENV{HOME}/.Xresources") or die $!;
    while (my $line = <$xres>) {
        if ($line =~ /^\s*urxvt\*color(\d+):\s+(\S+)/i) {
            $colors[$1] = $2;
        }
    }
    close $xres;

    open (my $colorscheme, "<", $ARGV[0]) or die $!;
    while (my $line = <$colorscheme>) {
        $line =~ s{(ctermbg=(\d+))}{$1 guibg=$colors[$2]}ig;
        $line =~ s{(ctermfg=(\d+))}{$1 guifg=$colors[$2]}ig;
        print $line;
    }

    close $colorscheme;
}

&main();

__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

vim_cterm_to_gui - <short description of the program>

=head1 SYNOPSIS

<example usage>

=head1 BUGS

No known bugs

=head1 AUTHOR

Ed Higgins <ed.j.higgins@gmail.com>

=cut
