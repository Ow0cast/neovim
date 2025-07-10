{ lib, ... }:
let
  modules = lib.filesystem.listFilesRecursive ./.;
  filteredModules = lib.filter (f: lib.hasSuffix ".nix" f && f != ./default.nix) modules;
in
{
  imports = filteredModules;
	opts = {
		tabstop = 2;
		softtabstop = 2;
		shiftwidth = 2;
		number = true;
	};
}
