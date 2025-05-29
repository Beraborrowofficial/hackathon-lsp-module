## LiquidStabilityPool Module
LiquidStabilityPool offsets the debt of liquidations in our CDP module, we believe we can bring higher capital efficiency to the $NECT sitting there by having other protocols (Perpetuals, Lending…) making use of that available liquidity, with the condition that it ends up being profitable to LSP holders.

Develop a module that can plug into the `LiquidStabilityPool::offset()` function, ensuring that any other protocol can make use of its liquidity without introducing any liquidity problem.

Qualification requirement
- Projects must have a description and a GitHub repository with a descriptive README.
    · How your module safely leverages LSP liquidity
    · Why it's beneficial to both protocols and LSP depositors
- There has to be at least one practical example of a known protocol making a sound use of your developed module that plugs into the LSP.
- Technically and economically sound.
- Code must be open source and modular enough to plug into future protocols
- Berachain smart contract deployment.
Examples:
- Lending liquidations (Aave, Dolomite)
- Perpetuals liquidations (GMX, Hyperliquid)
Links & resources
- Docs: https://beraborrow.gitbook.io/docs/nect-stablecoin/liquid-stability-pool-lsp

## Foundry Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/DeployLsp.s.sol:DeployLsp --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
