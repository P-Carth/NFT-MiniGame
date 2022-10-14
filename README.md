# <p align='center'> NFT-MiniGame </p>
# <p align='center'> ![Dynamic NFT Game](https://media.giphy.com/media/Kf7cW0rDnKGGJZ9GzQ/giphy.gif) </p>

> For in-depth instructions on how to follow along and build your own NFT Minigame, checkout my medium article: https://medium.com/@prestonkirschner1/how-to-mint-an-nft-minigame-29324fb7c1f9

> Link to NFT: https://testnets.opensea.io/assets/goerli/0x5df35b2d4bc6c41e98386b87c972a5636dedf037/1

## Summary

> The purpose of this project was to try to put a Mario-Style game inside of an NFT.

> While I was successfully able to put an interactive web game inside of an NFT, one aspect of the game does not work at the moment. 
> Upon winning the game, one's Crypto Wallet (e.g. MetaMask) should activate sending a congratulations message. Due to the configuration of OpenSea's (& Rarible's) sandboxed environment used for displaying dynamic NFTs it runs into an issue with CORS same-origin-policy. If this issue were solved, it could allow for some really incredible functional NFTs. Typically, Metadata used for dynamic NFTs are stored under the metadata tag: "animation_url", however this is not standardized. For truly incredible dynamic NFTs there must be some level of standardization so dynamic NFTs can operate consistently regardless of platform it is hosted on.

> If there are any workarounds to this issue allowing the user to successfully connect to their wallet from within these sandboxed environments, please share 😀

