# Adds makeglossaries to build 
# Taken from example latexmkrc file at http://mirror.ox.ac.uk/sites/ctan.org/support/latexmk/example_rcfiles/glossary_latexmkrc

add_cus_dep( 'acn', 'acr', 0, 'makeglossaries' );
add_cus_dep( 'glo', 'gls', 0, 'makeglossaries' );
$clean_ext .= " acr acn alg glo gls glg";
sub makeglossaries {
  my ($name, $path) = fileparse( $$Psource );
  return system "makeglossaries -d '$path' '$name'";
}
