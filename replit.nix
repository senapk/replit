{ pkgs }: {
	deps = [
        pkgs.python39Packages.pip
		pkgs.vim
		pkgs.python39Full
		pkgs.clang_12
		pkgs.ccls
		pkgs.gdb
		pkgs.gnumake
        pkgs.wget
        pkgs.adoptopenjdk-bin
		pkgs.esbuild
        pkgs.nodejs-16_x
        pkgs.nodePackages.typescript
        pkgs.nodePackages.typescript-language-server
	];
}
