class OciCli < Formula
  include Language::Python::Virtualenv

  desc "Oracle Cloud Infrastructure CLI"
  homepage "https://docs.cloud.oracle.com/iaas/Content/API/Concepts/cliconcepts.htm"
  url "https://files.pythonhosted.org/packages/1c/f3/f5695524a8562a81948e8647a1a6b34486771756f3f786a7686c273386c5/oci-cli-3.22.3.tar.gz"
  sha256 "e1612b53109e9eb9d0d41084839156d695082405d5412e3da208346a334775d1"
  license any_of: ["UPL-1.0", "Apache-2.0"]
  head "https://github.com/oracle/oci-cli.git", branch: "master"

  bottle do
    sha256 cellar: :any,                 arm64_ventura:  "0291264ad109cf5a56ea0b978a343cf9688649979e0ef476f4979a888510661d"
    sha256 cellar: :any,                 arm64_monterey: "02d40f8bf1f6bbafdbb572af926238f67a11179b27bb1104257eb783b9b68037"
    sha256 cellar: :any,                 arm64_big_sur:  "9aaad9007cea93eb1cccee3a182608be994d59a6ea9c387e57afef1d834cae22"
    sha256 cellar: :any,                 ventura:        "521f4ee6cccd8a1b32718c4106ec077a64b873b06fe063a42112358c49c04b2e"
    sha256 cellar: :any,                 monterey:       "7ccc6f189f71fb95d64c9df29390cf4e07c0ab63d7d1ce25c39ab13c2799064a"
    sha256 cellar: :any,                 big_sur:        "8cc9cf250b0430321885d7a4bcf59fb7234b1af3abcc0587a0657c7de5244fd7"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "bd2f3f23d39e2d9638c380e752d2a42c7fc0ab42dd483c4d2c28a4687837bed2"
  end

  depends_on "rust" => :build
  depends_on "python@3.11"
  depends_on "six"

  resource "arrow" do
    url "https://files.pythonhosted.org/packages/7f/c0/c601ea7811f422700ef809f167683899cdfddec5aa3f83597edf97349962/arrow-1.2.3.tar.gz"
    sha256 "3934b30ca1b9f292376d9db15b19446088d12ec58629bc3f0da28fd55fb633a1"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/37/f7/2b1b0ec44fdc30a3d31dfebe52226be9ddc40cd6c0f34ffc8923ba423b69/certifi-2022.12.7.tar.gz"
    sha256 "35824b4c3a97115964b408844d64aa14db1cc518f6562e8d7261699d1350a9e3"
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/2b/a8/050ab4f0c3d4c1b8aaa805f70e26e84d0e27004907c5b8ecc1d31815f92a/cffi-1.15.1.tar.gz"
    sha256 "d400bfb9a37b1351253cb402671cea7e89bdecc294e8016a707f6d1d8ac934f9"
  end

  resource "circuitbreaker" do
    url "https://files.pythonhosted.org/packages/92/ec/7f1dd19e3878f5391afb508e6a2fd8d9e5b176ca2992b90b55926c7341d8/circuitbreaker-1.4.0.tar.gz"
    sha256 "80b7bda803d9a20e568453eb26f3530cd9bf602d6414f6ff6a74c611603396d2"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/27/6f/be940c8b1f1d69daceeb0032fee6c34d7bd70e3e649ccac0951500b4720e/click-7.1.2.tar.gz"
    sha256 "d2b5255c7c6349bc1bd1e59e08cd12acbbd63ce649f2588755783aa94dfb6b1a"
  end

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/e3/3f/41186b1f2fd86a542d399175f6b8e43f82cd4dfa51235a0b030a042b811a/cryptography-38.0.4.tar.gz"
    sha256 "175c1a818b87c9ac80bb7377f5520b7f31b3ef2a0004e2420319beadedb67290"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/3c/56/3f325b1eef9791759784aa5046a8f6a1aff8f7c898a2e34506771d3b99d8/jmespath-0.10.0.tar.gz"
    sha256 "b85d0567b8666149a93172712e68920734333c0ce7e89b78b3e987f71e5ed4f9"
  end

  resource "oci" do
    url "https://files.pythonhosted.org/packages/42/07/32df41a10831ad10b4b1f4730da9f17fc989f9288a7973a540d31a4eca0f/oci-2.90.3.tar.gz"
    sha256 "325e3ff501a86566b583c910f2aa218385de442a4d36367334c99a3455ea82bd"
  end

  resource "prompt-toolkit" do
    url "https://files.pythonhosted.org/packages/59/68/4d80f22e889ea34f20483ae3d4ca3f8d15f15264bcfb75e52b90fb5aefa5/prompt_toolkit-3.0.29.tar.gz"
    sha256 "bd640f60e8cecd74f0dc249713d433ace2ddc62b65ee07f96d358e0b152b6ea7"
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/5e/0b/95d387f5f4433cb0f53ff7ad859bd2c6051051cebbb564f139a999ab46de/pycparser-2.21.tar.gz"
    sha256 "e644fdec12f7872f86c58ff790da456218b10f863970249516d60a5eaca77206"
  end

  resource "pyOpenSSL" do
    url "https://files.pythonhosted.org/packages/e7/2f/c6d89edac75482f11e231b644e365d31d5479b7b727734e6a8f3d00decd5/pyOpenSSL-22.1.0.tar.gz"
    sha256 "7a83b7b272dd595222d672f5ce29aa030f1fb837630ef229f62e72e395ce8968"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/4c/c4/13b4776ea2d76c115c1d1b84579f3764ee6d57204f6be27119f13a61d0a9/python-dateutil-2.8.2.tar.gz"
    sha256 "0123cacc1627ae19ddf3c27a5de5bd67ee4586fbdd6440d9748f8abb483d3e86"
  end

  resource "pytz" do
    url "https://files.pythonhosted.org/packages/03/3e/dc5c793b62c60d0ca0b7e58f1fdd84d5aaa9f8df23e7589b39cc9ce20a03/pytz-2022.7.1.tar.gz"
    sha256 "01a0681c4b9684a28304615eba55d1ab31ae00bf68ec157ec3708a8182dbbcd0"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/a0/a4/d63f2d7597e1a4b55aa3b4d6c5b029991d3b824b5bd331af8d4ab1ed687d/PyYAML-5.4.1.tar.gz"
    sha256 "607774cbba28732bfa802b54baa7484215f530991055bb562efbed5b2f20a45e"
  end

  resource "terminaltables" do
    url "https://files.pythonhosted.org/packages/9b/c4/4a21174f32f8a7e1104798c445dacdc1d4df86f2f26722767034e4de4bff/terminaltables-3.1.0.tar.gz"
    sha256 "f3eb0eb92e3833972ac36796293ca0906e998dc3be91fbe1f8615b331b853b81"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/5e/5f/1e4bd82a9cc1f17b2c2361a2d876d4c38973a997003ba5eb400e8a932b6c/wcwidth-0.2.6.tar.gz"
    sha256 "a5220780a404dbe3353789870978e472cfe477761f06ee55077256e509b156d0"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    version_out = shell_output("#{bin}/oci --version")
    assert_match version.to_s, version_out

    assert_match "Usage: oci [OPTIONS] COMMAND [ARGS]", shell_output("#{bin}/oci --help")
    assert_match "", shell_output("#{bin}/oci session validate", 1)
  end
end
