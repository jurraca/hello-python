{
  self,
  python3Packages,
  lib,
}:
python3Packages.buildPythonPackage {
  pname = "hello-python";
  version = "0.0.0-${lib.flox-floxpkgs.getRev self}";
  src = self; # + "/src";
  PIP_DISABLE_PIP_VERSION_CHECK = 1;
  # Add Python modules needed by your package here
  propagatedBuildInputs = with python3Packages; [
    requests
  ];
}
