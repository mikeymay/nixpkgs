{ stdenv, fetchurl, cmake, ncurses, openssl, bison, boost, libxml2, libaio, judy, libevent, groff }:

stdenv.mkDerivation rec {
  name = "mariadb-${version}";
  version = "10.0.13";

  src = fetchurl {
    url    = "https://downloads.mariadb.org/interstitial/mariadb-${version}/source/mariadb-${version}.tar.gz";
    sha256 = "039wz89vs03a27anpshj5xaqknm7cqi7mrypvwingqkq26ns0mhs";
  };

  buildInputs = [ cmake ncurses openssl bison boost libxml2 libaio judy libevent groff ];

  cmakeFlags = [ "-DWITH_READLINE=yes" "-DWITH_EMBEDDED_SERVER=yes" "-DINSTALL_SCRIPTDIR=bin" ];

  enableParallelBuilding = true;

  passthru.mysqlVersion = "5.5";

  meta = {
    description = "An enhanced, drop-in replacement for MySQL";
    homepage    = https://mariadb.org/;
    license     = stdenv.lib.licenses.gpl2;
    maintainers = with stdenv.lib.maintainers; [ shlevy thoughtpolice ];
    platforms   = stdenv.lib.platforms.all;
  };
}
