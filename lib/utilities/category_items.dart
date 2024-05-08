List<ItemsData> items = [
  ItemsData(label: 'Men'),
  ItemsData(label: 'Women'),
  ItemsData(label: 'Shoes'),
  ItemsData(label: 'Bags'),
  ItemsData(label: 'Eletronics'),
  ItemsData(label: 'Acessories'),
  ItemsData(label: 'Home & Garden'),
  ItemsData(label: 'Kids'),
  ItemsData(label: 'Beauty'),
];

class ItemsData {
  String label;
  bool isSelected;
  ItemsData({
    required this.label,
    this.isSelected = false,
  });
}
