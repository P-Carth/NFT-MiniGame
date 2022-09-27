// SPDX-License-Identifier: GPL-3.0
 
pragma solidity ^0.8.0;
 
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
 
/**
* @title MiniGame
* @dev Create a sample ERC721 standard token
* NFT minigame design by https://github.com/P-Carth
*/
contract MiniGame is ERC721, Ownable {
 
   uint256 public mintPrice = .02 ether;
   uint256 public totalSupply;
   uint256 maxSupply;
   string _baseTokenURI;
 
   constructor(string memory baseURI) payable ERC721("Talents Mini-Game", "TMG") {
       //baseURI = ('https://ipfs.io/ipfs/QmUafnnujvnvu632AQ4MReyXRiGWiTinjk3JGCMSvR8cYg');
       _baseTokenURI = baseURI;
      maxSupply = 1000;
   }
 
   function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
       require(_exists(tokenId), "ERC721Metadata: URI query for nonexistent token");
       return
           _baseTokenURI;
   }
 
   function mint() external payable {
       require(msg.value == mintPrice, 'wrong value');
       require(totalSupply < maxSupply, 'Max reached, No more NFTs can be minted');
       totalSupply++;
       uint256 tokenId = totalSupply;
       _safeMint(msg.sender, tokenId);
   }
 
   function withdraw() public payable onlyOwner {
       uint balance = address(this).balance;
       require(balance > 0, "No ether left to withdraw");
       (bool success, ) = (msg.sender).call{value: balance}("");
       require(success, "Transfer failed.");
   }
}
