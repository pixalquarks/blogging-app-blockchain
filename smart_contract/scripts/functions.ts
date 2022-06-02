import hre from 'hardhat';

async function main() {
    const Blog = await hre.ethers.getContractFactory("Blog");
    const blog = Blog.attach("0xDc64a140Aa3E981100a9becA4E685f962f0cF6C9");

    const p = await blog.getPost(0);
    console.log(p.toString());
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });