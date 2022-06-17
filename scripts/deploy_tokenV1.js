const {ethers,upgrades} = require("hardhat");

async function main() {
    const tokenV1 = await ethers.getContractFactory("Token721");

    const dToken = await upgrades.deployProxy(tokenV1);

    await dToken.deployed();

    console.log("Token Minter Deployed To:",dToken.address);
    
}

main();
