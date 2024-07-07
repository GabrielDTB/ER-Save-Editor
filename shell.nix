with import <nixpkgs> {};
stdenv.mkDerivation rec {
  name = "env";
  nativeBuildInputs = [ pkg-config ];
  buildInputs = [
    cryptsetup
    gobject-introspection
    openssl
    gtk3
    xorg.libX11
    xorg.libXrandr
    xorg.libXcursor
    xorg.libXi
    libxkbcommon
    libGL
    fontconfig
    wayland
    cmake
  ];
  # shellHook = ''
  #   export LD_LIBRARY_PATH="${pkgs.lib.makeLibraryPath [ pkgs.pcsclite ]}:$LD_LIBRARY_PATH"
  # '';
  LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath buildInputs;
}

