{stdenv, fetchurl, pkgconfig, gettext, perl}:

assert pkgconfig != null && gettext != null && perl != null;

stdenv.mkDerivation {
  name = "glib-2.6.6";
  src = fetchurl {
    url = http://nix.cs.uu.nl/dist/tarballs/glib-2.6.6.tar.bz2;
    md5 = "6e22b0639d314536f23ee118f29b43de";
  };
  buildInputs = [pkgconfig gettext perl];
}
