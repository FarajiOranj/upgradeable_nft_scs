require("@nomiclabs/hardhat-ethers");
require("@nomiclabs/hardhat-etherscan");
require("@openzeppelin/hardhat-upgrades");


module.exports = {
  solidity: "0.8.10",
  networks:{
    ropsten:{
      url: `https://ropsten.infura.io/v3/${process.env.API_KEY}`,
      accounts:[process.env.PRIVATE_KEY],
    },
  },
  etherscan:{
    apiKey: process.env.ETHERSCAN_API_KEY,
  },
};
