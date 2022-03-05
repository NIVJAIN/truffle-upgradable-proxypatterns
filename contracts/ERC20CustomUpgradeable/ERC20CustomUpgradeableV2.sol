// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0 <0.9.0;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
// import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
contract ERC20CustomUpgradeableV2 is Initializable, ERC20Upgradeable, UUPSUpgradeable {
    string public setMessage;
    function initialize() public initializer {
        __ERC20_init("Mars", "MARS");
        _mint(msg.sender, 55555 * 10 ** 18); //1000000000000000000000n
        // _mint(msg.sender, 10000000 * 10 ** decimals());
        __UUPSUpgradeable_init();
    }
    // Public variable of type unsigned int to keep the number of counts
    uint256 public count;
    // Function that increments our counter
    function increment() public {
        count += 1;
    }
            // Function that increments our counter
    function decrement() public {
        count--;
    }
    // Not necessary getter to get the count value
    function getCount() public view returns (uint256) {
        return count;
    }
    function setText(string memory _setText) public {
        setMessage = _setText;
    }
    function getText() public view returns(string memory) {
        return(setMessage);
    }
    function _authorizeUpgrade(address newImplementation) internal override {
    }
}
