//SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

import "@openzeppelin/contracts-upgradeable/token/ERC721/extensions/ERC721RoyaltyUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/utils/CountersUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";


contract Token721 is Initializable , ERC721RoyaltyUpgradeable ,OwnableUpgradeable{
using CountersUpgradeable for CountersUpgradeable.Counter;
CountersUpgradeable.Counter private _tokenIds;

function initialize() external initializer {
        __ERC721_init("ARTANIOM Token", "ARTN");
        __Ownable_init();
        __ERC721Royalty_init();
    }
    function mint() external returns(uint256){
        _tokenIds.increment();
        
        uint256 newTokenId = _tokenIds.current();
        _safeMint(msg.sender, newTokenId);
        
        return newTokenId;
    }
}