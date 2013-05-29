#!/usr/bin/perl
#
# EXECUTABLE_NAME - One-line synopsis goes here.
#
use strict;
use File::Basename;
use Getopt::Long;

# Version information
my $EXECUTABLE_NAME = basename( $0 );
my $VERSION_STRING = $EXECUTABLE_NAME . " v0.0.1 YYYY-MM-DD\n";

my %options;
Getopt::Long::Configure ("bundling");
GetOptions (
  "help|h",            \$options{'help'},
  "version|v",         \$options{'version'},
);

# Print version/help information if requested
if ( $options{'help'}    ) { help();    exit 0; }
if ( $options{'version'} ) { version(); exit 0; }

# Print usage message
sub usage {
  print <<END;

$EXECUTABLE_NAME - One-line synopsis goes here.

Usage: $EXECUTABLE_NAME [-hv]

A longer explanation of what the script does goes here.

Other Options:
--help, -h                           Print this message and exit.
--version, -v                        Print version string and exit.

END
}

# Print version string
sub version {
  print $VERSION_STRING;
}

# Print help message
sub help {
  version (); usage();
}
