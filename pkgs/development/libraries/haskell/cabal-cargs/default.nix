# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, Cabal, cabalLenses, cmdargs, either, filepath, lens
, strict, systemFileio, systemFilepath, tasty, tastyGolden, text
, transformers, unorderedContainers
}:

cabal.mkDerivation (self: {
  pname = "cabal-cargs";
  version = "0.7.1";
  sha256 = "0y6v663mw4giwypdv34qr2l2fy1q7zdjvgw39m16sjna5lbwvm1n";
  isLibrary = true;
  isExecutable = true;
  buildDepends = [
    Cabal cabalLenses cmdargs either lens strict systemFileio
    systemFilepath text transformers unorderedContainers
  ];
  testDepends = [ filepath tasty tastyGolden ];
  jailbreak = true;
  meta = {
    description = "A command line program for extracting compiler arguments from a cabal file";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = with self.stdenv.lib.maintainers; [ tomberek ];
  };
})
