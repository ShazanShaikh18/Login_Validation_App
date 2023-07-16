class CatalogModel {
  static final items = [
    Item(
      id: 1,
      name: "iPhone 12 Pro",
      desc: "Apple iPhone 12 Generation",
      price: 999,
      color: "#33505a",
      image:
          "https://ovantica.com/pub/media/catalog/product/cache/94e598abb2332c6fea876a70e35f67af/1/2/12_pro_grp_1_.jpg",
    ),
    // Item(
    //   id: 2,
    //   name: "iPhone 13 Pro",
    //   desc: "Apple iPhone 13 Generation",
    //   price: 999,
    //   color: "#33505a",
    //   image:
    //       "https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1664009408/Croma%20Assets/Communication/Mobiles/Images/249840_0_ha9g80.png/mxw_1366,f_auto",
    // ),
    // Item(
    //   id: 3,
    //   name: "iPhone 14 Pro",
    //   desc: "Apple iPhone 14 Generation",
    //   price: 999,
    //   color: "#33505a",
    //   image:
    //       "https://rukminim1.flixcart.com/image/416/416/xif0q/mobile/m/o/b/-original-imaghx9qkugtbfrn.jpeg?q=70",
    // ),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
