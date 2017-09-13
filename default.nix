{ mkDerivation, base, bytestring, either, ghcjs-base, ghcjs-prim
, hashable, lens, mtl, pretty-show, stdenv, text, time
, transformers, unordered-containers, void
}:
mkDerivation {
  pname = "blaze-react";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    base bytestring either ghcjs-base ghcjs-prim hashable lens mtl
    pretty-show text time transformers unordered-containers void
  ];
  executableHaskellDepends = [ base ];
  description = "Experimental ReactJS bindings for GHCJS";
  license = stdenv.lib.licenses.mit;
}
