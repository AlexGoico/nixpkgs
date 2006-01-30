{stdenv, fetchurl}:

assert stdenv.system == "i686-linux";

stdenv.mkDerivation {
  name = "linux-headers-2.6.14.3-i386";
  builder = ./builder.sh;
  src = fetchurl {
    url = http://nix.cs.uu.nl/dist/tarballs/linux-2.6.14.3.tar.bz2;
    md5 = "982717a9cb246e3c427cc45e3fc86097";
  };
}
