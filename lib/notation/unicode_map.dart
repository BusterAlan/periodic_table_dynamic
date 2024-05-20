class UnicodeMap {

  static Map<String, StringPair> unicodeMap = {

    '0':        StringPair('\u2070', '\u2080'),
    '1':        StringPair('\u00B9', '\u2081'),
    '2':        StringPair('\u00B2', '\u2082'),
    '3':        StringPair('\u00B3', '\u2083'),
    '4':        StringPair('\u2074', '\u2084'),
    '5':        StringPair('\u2075', '\u2085'),
    '6':        StringPair('\u2076', '\u2086'),
    '7':        StringPair('\u2077', '\u2087'),
    '8':        StringPair('\u2078', '\u2088'),
    '9':        StringPair('\u2079', '\u2089'),
    'a':        StringPair('\u1d43', '\u2090'),
    'b':        StringPair('\u1d47', '?'),
    'c':        StringPair('\u1d9c', '?'),
    'd':        StringPair('\u1d48', '?'),
    'e':        StringPair('\u1d49', '\u2091'),
    'f':        StringPair('\u1da0', '?'),
    'g':        StringPair('\u1d4d', '?'),
    'h':        StringPair('\u02b0', '\u2095'),
    'i':        StringPair('\u2071', '\u1d62'),
    'j':        StringPair('\u02b2', '\u2c7c'),
    'k':        StringPair('\u1d4f', '\u2096'),
    'l':        StringPair('\u02e1', '\u2097'),
    'm':        StringPair('\u1d50', '\u2098'),
    'n':        StringPair('\u207f', '\u2099'),
    'o':        StringPair('\u1d52', '\u2092'),
    'p':        StringPair('\u1d56', '\u209a'),
    'q':        StringPair('?', '?'),
    'r':        StringPair('\u02b3', '\u1d63'),
    's':        StringPair('\u02e2', '\u209b'),
    't':        StringPair('\u1d57', '\u209c'),
    'u':        StringPair('\u1d58', '\u1d64'),
    'v':        StringPair('\u1d5b', '\u1d65'),
    'w':        StringPair('\u02b7', '?'),
    'x':        StringPair('\u02e3', '\u2093'),
    'y':        StringPair('\u02b8', '?'),
    'z':        StringPair('?', '?'),
    'A':        StringPair('\u1d2c', '?'),
    'B':        StringPair('\u1d2e', '?'),
    'C':        StringPair('?', '?'),
    'D':        StringPair('\u1d30', '?'),
    'E':        StringPair('\u1d31', '?'),
    'F':        StringPair('?', '?'),
    'G':        StringPair('\u1d33', '?'),
    'H':        StringPair('\u1d34', '?'),
    'I':        StringPair('\u1d35', '?'),
    'J':        StringPair('\u1d36', '?'),
    'K':        StringPair('\u1d37', '?'),
    'L':        StringPair('\u1d38', '?'),
    'M':        StringPair('\u1d39', '?'),
    'N':        StringPair('\u1d3a', '?'),
    'O':        StringPair('\u1d3c', '?'),
    'P':        StringPair('\u1d3e', '?'),
    'Q':        StringPair('?', '?'),
    'R':        StringPair('\u1d3f', '?'),
    'S':        StringPair('?', '?'),
    'T':        StringPair('\u1d40', '?'),
    'U':        StringPair('\u1d41', '?'),
    'V':        StringPair('\u2c7d', '?'),
    'W':        StringPair('\u1d42', '?'),
    'X':        StringPair('?', '?'),
    'Y':        StringPair('?', '?'),
    'Z':        StringPair('?', '?'),
    '+':        StringPair('\u207A', '\u208A'),
    '-':        StringPair('\u207B', '\u208B'),
    '=':        StringPair('\u207C', '\u208C'),
    '(':        StringPair('\u207D', '\u208D'),
    ')':        StringPair('\u207E', '\u208E'),
    ':alpha':   StringPair('\u1d45', '?'),
    ':beta':    StringPair('\u1d5d', '\u1d66'),
    ':gamma':   StringPair('\u1d5e', '\u1d67'),
    ':delta':   StringPair('\u1d5f', '?'),
    ':epsilon': StringPair('\u1d4b', '?'),
    ':theta':   StringPair('\u1dbf', '?'),
    ':iota':    StringPair('\u1da5', '?'),
    ':pho':     StringPair('?', '\u1d68'),
    ':phi':     StringPair('\u1db2', '?'),
    ':psi':     StringPair('\u1d60', '\u1d69'),
    ':chi':     StringPair('\u1d61', '\u1d6a'),
    ':coffee':  StringPair('\u2615', '\u2615'),

  };
  
}

class StringPair {

  final String superscript;
  final String subscript;

  StringPair(this.superscript, this.subscript);

}

