### Software Versions
```
1. Truffle v5.4.33
2. Solidity - ^0.8.12 (solc-js)
3. Node v14.19.0
4. Web3.js v1.5.3
5. Mac M1 Max Pro (macOS Monterey)
6. MongoDB 4.0
```


### PRE-REQUISITE
```
1. nodejs & npm
2. truffle installation
3. gance-cli 
```


### Installation Steps
```
1. brew install nodejs [node -v & npm -v]
2. npm install -g truffle
3. npm install -g ganache-cli
```

### Ganache Deployment (Local Ganche)
```
1. git clone 
2. cd <repo> && npm install --save
3. truffle compile
4. truffle migrate --network ganache 0r truffle migrate --network ganache --reset
4. npm run ganache
```


### Testing the Upgradable smart contract functionality (ProxyPattern UUPS OpenZeppelin)
```
1. 1-Deploy V1 version first
2. 2-check the contract address and getCount and Increment the counter to 5
3. 3-Deploy V2 version second (More function added to V2)
4. 4-check the contract address (it should be same) and finally check the getCount it should return 5
```
### 1-Deploy V1 version first
```
1. cd contract && mv ERC20CustomUpgradableV2.sol to ERC20CustomUpgradableV2_
2. cd migrations && mv 3_upgrade_erc20_contract_v2.js to 3_upgrade_erc20_contract_v2_
3. ganache-cli -p 7545
4. truffle compile --all
5. truffle migrate --network ganache 
6. truffle console --network ganache
7. box = await ERC20CustomUpgradeableV1.deployed()
```
### 2-check the contract address and getCount and Increment the counter to 5
```
1. truffle console --network ganache
2. v1 = await ERC20CustomUpgradeableV1.deployed()
3. v1.address
4. (await v1.getCount())
5. repeat this x5 (await v1.increment())
6. (await v1.getCount()) //output should show 5
```
### 3-Deploy V2 version second (More function added to V2)
```
1. cd contracts && mv ERC20CustomUpgradableV2_ to ERC20CustomUpgradableV2.sol
2. cd migrations && mv 3_upgrade_erc20_contract_v2_ to 3_upgrade_erc20_contract_v2.js
4. truffle compile --all
5. truffle migrate --network ganache
```
### 4-check the contract address (it should be same as the v1.address) and finally check the getCount it should return 5
```
1. v2 = await ERC20CustomUpgradeableV2.deployed()
2. v2.address (This address should be the same as V1 address)
3. (await v2.getCount()) -> output should show 5
```


### TRUFFLE CONSOLE COMMANDS
```
npx truffle console --network ganache
v1 = await ERC20CustomUpgradeableV1.deployed()
v1.address
(await v1.getCount())
(await v1.increment()) x 5

npx truffle console --network ganache
v2 = await ERC20CustomUpgradeableV2.deployed()
v2.address
(await v2.getCount())
(await v2.increment()) x 5
```


