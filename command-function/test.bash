

ExtractBashComments() {
  egrep "^#"
}

cat apache2 | ExtractBashComments | wc

comments=$(ExtractBashComments < apache2)
echo ${comments}
