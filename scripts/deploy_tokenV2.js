const {ethers,upgrades} = require("hardhat");

const PROXY = "0x280896dd2fBc7Ea4e473919C9569294F860eE553";

async function main() {
    const tokenV2 = await ethers.getContractFactory("TokenV2");
    await upgrades.upgradeProxy(PROXY,tokenV2);
    console.log("Token Version Upgraded Successfuly");
}

main();