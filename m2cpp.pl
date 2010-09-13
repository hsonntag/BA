#!/usr/bin/perl
if ($#ARGV != 0)
{
  die "Argument must contain filename $#ARGV"
}
else
{
  $fname=$ARGV[0];
}
open(my $in, $fname);

$declTypeDef="typedef void * in; \n"; 
$output = "";
$inClass = 0;

$inStaticMethods = "";

while (<$in>)
{
  if (/(^\s*)(%>)(.*)/)
  {
    $output=$output."$1///$3";
  }
  if (($listeProperties == 1) && (/(^\s*end\s*)/))
  {
    $listeProperties = 0;
  }
  if (($listeProperties == 1) && (/^\s*([\w\d]*)\s*[=]?.*(%>.*)?/))
  {
    if (!($1 =~ /^$/))
    {
      $properties = "$1;$2";
      $properties =~ s/%>/\/\/\//g;
      $properties =~ s/%/\/\//g;
      $output=$output.$properties;
    }
  }
  if (/(^\s*function)\s*([\] \w\d,_\[]+=)?\s*([.\w\d_-]*)\s*\(?([\w\d\s,]*)\)?(%?.*)/)
  {
    $functionKeyWord = $1;
    $functionName = $3;
    $arguments = $4;
    if ($inClass == 0)
    {
      $output = $declTypeDef.$output;
      $declTypeDef = "";
    }
    $arguments =~ s/,/,in /g;
    $arguments = "in $arguments";
    if ($arguments =~ /^in $/)
    {
      $arguments = "";
    }
    $ligne = "$inStaticMethods $functionKeyWord $functionName($arguments);"; 
    $output=$output.$ligne;
  }
  # inheritance for classes
  if (/(^\s*classdef)\s*([\w\d_]+)\s*<?\s*([\w\d_]+)?(.*)/)
  {
    if (!($3 =~ /^$/))
    {
      $classDef = "class $2:public $3";
    }
    elsif (/(^\s*classdef)\s*([\w\d_]+)(.*)/)
    {
      $classDef = "class $2";
    }
    $output=$output.$classDef;
    $output=$output."{";
    $output=$output.$declTypeDef;
    $output=$output."public:\n";
    $inClass = 1;
  }
  if (/(^\s*properties)\s*(.*)/)
  {
    $listeProperties = 1;
  }
  if (/^\s*methods\s*\(\s*Static(\s*=\s*true\s*)?\)(.*)/)
  {
    $inStaticMethods = "static";
  }
  elsif (/^\s*methods\s*\.*/)
  {
    $inStaticMethods = "";
  }
  $output=$output."\n";
}
$output=$output."};\n";
print $output;
close $in;
