pragma solidity ^0.8.4;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/presets/ERC721PresetMinterPauserAutoId.sol";



contract myERC721Contract is ERC721PresetMinterPauserAutoId{
    constructor() ERC721PresetMinterPauserAutoId("NTUFRC Logo", 
    "FRCL", 
    "https://ipfs.io/ipfs/QmeD4Ge6ycGdB4zhu5EgVSzjy15QpCosRYigwuDizZpaGe/"){}
    
    function setTokenURI(uint256 tokenId, string memory tokenURI) public {
        require(hasRole(MINTER_ROLE, _msgSender()), "web3 CLI: must have minter role to update tokenURI");
        
        setTokenURI(tokenId, tokenURI);
    }
}