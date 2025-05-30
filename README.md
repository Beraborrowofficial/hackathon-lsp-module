# LiquidStabilityPool Module
`LiquidStabilityPool` is a contract that offsets the liquidation debt in our CDP module. We believe we can bring higher capital efficiency to the `$NECT` parked in the contract by having other protocols making use of the available liquidity on the condition that said use would be profitable to LSP (`$sNECT`) holders.

Develop a module that can plug into the `LiquidStabilityPool::offset()` function, ensuring that any other protocol can make use of its liquidity without introducing any unintended side effects related to said liquidity.

## Qualification Requirements
All submissions must have a description and a GitHub repository with a descriptive README on the following:
- How your module safely leverages LSP liquidity
- Why it's beneficial to both protocols and LSP depositors

- There has to be at least one practical example of a known protocol making a sound use of your developed module that plugs into the LSP.
- The implementation needs to be technically and economically sound.
- The code must be open source and modular enough to plug into future protocols.
- The implementation should be deployable on Berachain Mainnet.

## Examples
- Lending liquidations (Aave, Dolomite)
- Perpetuals liquidations (GMX, Hyperliquid)

## Links & Resources
https://beraborrow.gitbook.io/docs/nect-stablecoin/liquid-stability-pool-lsp

### Foundry Documentation

https://book.getfoundry.sh/

### Usage

#### Build

```shell
$ forge build
```

#### Test

```shell
$ forge test
```

#### Format

```shell
$ forge fmt
```

#### Gas Snapshots

```shell
$ forge snapshot
```

#### Anvil

```shell
$ anvil
```

#### Deploy

```shell
$ forge script script/DeployLsp.s.sol:DeployLsp --rpc-url <your_rpc_url> --private-key <your_private_key>
```

#### Cast

```shell
$ cast <subcommand>
```

#### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
