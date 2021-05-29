const HDWalletProvider = require("truffle-hdwallet-provider");
const fs = require("fs");

module.exports = {
    // See <http://truffleframework.com/docs/advanced/configuration>
    // to customize your Truffle configuration!
    networks: {
        development: {
            host: "https://sandbox.truffleteams.com/69b17d6c-81ec-4f61-a40e-d8c984e472da", // Localhost (default: none)
            port: 8545, // Standard Ethereum port (default: none)
            network_id: "101" // Any network (default: none)
        }
    },
    compilers: {
        solc: {
            version: "0.7.0"
        }
    }
};
