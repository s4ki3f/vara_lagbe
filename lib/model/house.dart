class House {
  String name;
  String address;
  String imgUrl;

  House(this.name, this.address, this.imgUrl);

  static List<House> generateRecomendation() {
    return [
      House('MobyDick', 'Whitebeard, discased, marinefold',
          'assets/images/house01.png'),
      House('Akagami pirate ship', 'redline, near One Pience',
          'assets/images/house02.png'),
      House('Sunny', 'StrawHat, discased, wano', 'assets/images/house01.jpeg'),
      House('BF-41', 'Franky, wano', 'assets/images/house02.jpeg'),
    ];
  }
}
