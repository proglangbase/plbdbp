#!/usr/bin/env perl
#*******************************************************************************
# Takes PLB data as CSV from stdin and generates the HTML page to stdout.
#*******************************************************************************
use Data::Dumper;

#*-----------------------------------------------------------------------*
#* Regex to parse a line of CSV. Groups 1 and 2 are text within quotes   *
#* and without quotes, respectively, and only one will be defined. Group *
#* 1 may include escaped characters. Also, this RE always produces an    *
#* extra match with group 2 as the empty string and should be discarded. *
#*                                                                       *
#* $parseCSV parses the line, removes undefined groups, trims each       *
#* value, and drops the extra value.                                     *
#*-----------------------------------------------------------------------*
my $csvRegex = qr/(?:(?:"([^\"\\]*(?:\\.[^\"\\]*)*)")|([^,]*)),?/;

my $parseCSV = sub { 
  my @data = map { s/(^\s+)|(\s+$)|\\//gr } grep { defined } ($_[0] =~ /$csvRegex/g);
  @data[0..$#data-1]; 
};

#*-----------------------------------------------------------------*
#* Read and trim all lines and drop any empty lines. Parse the top *
#* line to column headings and all remaining lines to row data.    *
#*-----------------------------------------------------------------*
my @lines     = grep { length($_) } map { s/(^\s+)|(\s+$)//gr } <>;
my @headCols  = &$parseCSV(shift @lines); # Mutation
my @dataCols  = map { [ &$parseCSV($_) ] } @lines;

#*-------------------------------*
#* Generate HTML page to stdout. *
#*-------------------------------*
my $htmlCell  = sub { qq|<$_[0]>$_[1]</$_[0]>| };
my $htmlRow   = sub { qq|<tr>$_[0]</tr>| };

my $headCells = join("", map { &$htmlCell('th', $_) } @headCols);
my $header    = &$htmlRow($headCells);

my @dataCells = map { join("", map { &$htmlCell('td', $_) } @{$_}) } @dataCols;
my @dataRows  = map { &$htmlRow($_) } @dataCells;
my $rows      = join("\n", @dataRows);

print <<"END_HTML"
<!DOCTYPE html>
<html>
<head>
  <title>proglangbase</title>
  <style>
    th, td { border: 1px solid lightgray }
    th     { text-align: left }
  </style>
<body>
  <h1>proglangbase</h1>
  <table>
    $header
    $rows
  </table>
</body>
</html>
END_HTML

