# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, bifunctors, comonad, contravariant, deepseq, distributive
, doctest, exceptions, filepath, free, genericDeriving, hashable
, hlint, HUnit, mtl, nats, parallel, primitive, profunctors
, QuickCheck, reflection, semigroupoids, semigroups, simpleReflect
, split, tagged, testFramework, testFrameworkHunit
, testFrameworkQuickcheck2, testFrameworkTh, text, transformers
, transformersCompat, unorderedContainers, vector, void, zlib
}:

cabal.mkDerivation (self: {
  pname = "lens";
  version = "4.4.0.1";
  sha256 = "0d1z6jix58g7x9r1jvm335hg2psflqc7w6sq54q486wil55c5vrw";
  buildDepends = [
    bifunctors comonad contravariant distributive exceptions filepath
    free hashable mtl parallel primitive profunctors reflection
    semigroupoids semigroups split tagged text transformers
    transformersCompat unorderedContainers vector void zlib
  ];
  testDepends = [
    deepseq doctest filepath genericDeriving hlint HUnit mtl nats
    parallel QuickCheck semigroups simpleReflect split testFramework
    testFrameworkHunit testFrameworkQuickcheck2 testFrameworkTh text
    transformers unorderedContainers vector
  ];
  meta = {
    homepage = "http://github.com/ekmett/lens/";
    description = "Lenses, Folds and Traversals";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
