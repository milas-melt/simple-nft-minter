//Contract based on https://docs.openzeppelin.com/contracts/3.x/erc721
// SPDX-License-Identifier: MIT
pragma solidity ^0.7.3;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";


contract ERC721_Factory is ERC721, Ownable {

    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    mapping (uint => address) public nftToOwner;
    mapping (address => uint) ownerNftCount;

    constructor() ERC721("ERC721_Factory", "ERC721F") {}

    function mint_ERC721(address recipient, string memory tokenURI)
        public payable
        returns (uint256)
    {
        require(msg.value >= 1320000000000000000, "Not enough ETH sent; check price!");
        _tokenIds.increment();

        uint256 newItemId = _tokenIds.current();
        _mint(recipient, newItemId);
        _setTokenURI(newItemId, tokenURI);

        return newItemId;
    }


}