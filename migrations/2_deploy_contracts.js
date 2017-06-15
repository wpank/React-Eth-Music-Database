var MusicMetadata = artifacts.require("./MusicMetadata.sol");

module.exports = function(deployer) {
  deployer.deploy(MusicMetadata);
};
