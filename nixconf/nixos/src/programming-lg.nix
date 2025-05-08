{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    (python312Full.withPackages(ps: with ps; [ pygobject3 gobject-introspection pyqt6-sip]))
    python312Packages.pillow
    python312Packages.psutil
    python312Packages.setuptools-scm
    pywalfox-native
    python312Packages.wheel
    python312Packages.build
    python312Packages.pywal
    python312Packages.lxml
    nodePackages_latest.nodejs
    nodePackages_latest.pnpm
    bun
    go
    lua
    zig
    numbat
    typescript
    gjs
  ];
}
