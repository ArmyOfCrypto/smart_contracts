// SPDX-License-Identifier: MIT    
pragma solidity ^0.8.0;

import "../onix-tokens/ORC721.sol";

contract AOC721 is ORC721 {

    constructor(string memory name_, string memory symbol_) ORC721(name_, symbol_) {
    }
    
    /**
     * @dev Set a token URI after an upgrade
     */
    function setTokenURI(uint256 tokenId, string memory _tokenURI)
    public virtual onlyMinter returns (bool) {
        
        _setTokenURI(tokenId, _tokenURI);
        
        return true;
    }
}
