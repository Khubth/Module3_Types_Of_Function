const { ethers } = require("hardhat");
async function main() {
  const [deployer] = await ethers.getSigners();

  console.log("Deploying contracts with the account:", deployer.address);

  const MyToken = await ethers.getContractFactory("KhuToken");
  const myToken = await KhuToken.deploy(
    "KhuToken",
    "KTK",
    ethers.parseEther("1000")
  );

  console.log("MyToken deployed to:", myToken.target);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
