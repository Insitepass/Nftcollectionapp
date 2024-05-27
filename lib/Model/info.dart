class Nft {
  final String name;
  final String description;
  final String link;

  const Nft(
      {required this.name, required this.description, required this.link});
}

final nftMap = {
  "Galaxy Martini": const Nft(
    name: "Galaxy Martini",
    description: "A drink that encapsulates the vast stars in space",
    link:
        'https://opensea.io/assets/matic/0x2953399124f0cbb46d2cbacd8a89cf0599974963/81099888527959954510998467483987703657627151336559054836110210897851499675649/',
  ),
  "Space lolipop": const Nft(
      name: "Space lolipop",
      description: "Is it a lolipop or a space station?",
      link:
          "https://opensea.io/assets/matic/0x2953399124f0cbb46d2cbacd8a89cf0599974963/81099888527959954510998467483987703657627151336559054836110210902249546186753/"),
  "Space Stranger": const Nft(
      name: "Space Stranger",
      description: "We are not really hear its all an illusion",
      link:
          "https://opensea.io/assets/matic/0x2953399124f0cbb46d2cbacd8a89cf0599974963/81099888527959954510998467483987703657627151336559054836110210901150034558977/"),
  "Space Ice Cream": const Nft(
      name: "Space Ice Cream",
      description: "An Ice cream made from planets, pick your favourite",
      link:
          "https://opensea.io/assets/matic/0x2953399124f0cbb46d2cbacd8a89cf0599974963/81099888527959954510998467483987703657627151336559054836110210900050522931201/"),
  "Good Smoke": const Nft(
      name: "Good Smoke",
      description: "We the the herbs show you stars",
      link:
          "https://opensea.io/assets/matic/0x2953399124f0cbb46d2cbacd8a89cf0599974963/81099888527959954510998467483987703657627151336559054836110210903349057814529/"),
  "Portal to Space": const Nft(
      name: "Portal to Space",
      description: "Your own personal portal into the far beyond",
      link:
          "https://opensea.io/assets/matic/0x2953399124f0cbb46d2cbacd8a89cf0599974963/81099888527959954510998467483987703657627151336559054836110210898951011303425/")
};
