/**
* @type import('hardhat/config').HardhatUserConfig
*/
require('dotenv').config();
require("@nomiclabs/hardhat-ethers");

const { REACT_APP_ALCHEMY_KEY_MAINNET_FORKED, METAMASK_PRIVATE_KEY_MAINNET_FORKED } = process.env;
module.exports = {
  solidity: "0.7.3",
   // defaultNetwork: "ropsten",
   // networks: {
   //    hardhat: {},
   //    ropsten: {
   //       url: REACT_APP_ALCHEMY_KEY,
   //       accounts: [`0x${METAMASK_PRIVATE_KEY}`]
   //    }
   // },
  defaultNetwork: "hardhat",
  networks: {
    hardhat: {
      chainId: 1337
    }
  }
}