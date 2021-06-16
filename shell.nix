with import <nixpkgs> { };
with pkgs.python3Packages;

buildPythonPackage rec {
  name = "wireviz";
  src = pkgs.fetchFromGitHub {
    owner = "formatc1702";
    repo = "WireViz";
    rev = "master";
    sha256 = "sha256:1blrnvf47dgjsqksjhjr6j497aa371731y1m0skbf59vg8di9w14";
  };
  propagatedBuildInputs = [ pkgs.graphviz ];
}
