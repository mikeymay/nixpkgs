# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, aeson, attoparsec, conduit, hspec, HUnit, resourcet
, scientific, text, transformers, unorderedContainers, vector
}:

cabal.mkDerivation (self: {
  pname = "yaml";
  version = "0.8.9";
  sha256 = "13qqqil19yi1qbl9gqma6kxwkz8j5iq6z347fabk916gy9jng3dl";
  isLibrary = true;
  isExecutable = true;
  buildDepends = [
    aeson attoparsec conduit resourcet scientific text transformers
    unorderedContainers vector
  ];
  testDepends = [
    aeson conduit hspec HUnit resourcet text transformers
    unorderedContainers vector
  ];
  meta = {
    homepage = "http://github.com/snoyberg/yaml/";
    description = "Support for parsing and rendering YAML documents";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
