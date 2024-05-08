// ignore_for_file: constant_identifier_names

enum CategoryEnum {
  MEN,
  WOMEN,
  SHOES,
  BAGS,
  ELETRONICS,
  ACESSORIES,
  HOME,
  KIDS,
  BEAUTY,
}

extension CategoryEnumExtension on CategoryEnum {
  String get name {
    switch (this) {
      case CategoryEnum.MEN:
        return 'Men';
      case CategoryEnum.WOMEN:
        return 'Women';
      case CategoryEnum.SHOES:
        return 'Shoes';
      case CategoryEnum.BAGS:
        return 'Bags';
      case CategoryEnum.ELETRONICS:
        return 'Eletronics';
      case CategoryEnum.ACESSORIES:
        return 'Acessories';
      case CategoryEnum.HOME:
        return 'Home & Garden';
      case CategoryEnum.KIDS:
        return 'Kids';
      case CategoryEnum.BEAUTY:
        return 'Beauty';
      default:
        return '';
    }
  }
}
