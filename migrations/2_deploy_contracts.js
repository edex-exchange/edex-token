var edex = artifacts.require("./edex.sol");

module.exports = function(deployer) {
  deployer.deploy(edex);
};