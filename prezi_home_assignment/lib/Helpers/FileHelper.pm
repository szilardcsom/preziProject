#! /usr/bin/perl -w;

package Helpers::FileHelper;

sub BEGIN {
  @EXPORT_OK = qw( loadFromJSON );
}

use JSON;

sub loadFromJSON
{
  my $source = shift;
  
  local $/;
  open( my $fh, '<', $source ) or die "Cannot open file: $source ($!)";
  my $json_text   = <$fh>;
  close($fh) or die "Cannot close filehandle";
  
  return decode_json( $json_text );   
}

1;