void main() {
  var menu = {
    'burger': 6.5,
    'pizza': 5.0,
    'water': 1.5,
  };

  menu['chocolateCake'] = 3;
  print(menu);
  menu['water'] = 0.75;
  print(menu);

  for (var item in menu.entries) {
    print('${item.key} -> ${item.value}KD');
  }

  void total(List<String> order) {
    double total = 0;
    for (var ord in order) {
      if (menu.containsKey(ord)) {
        total += menu[ord]!;
      } else {
        print("$ord is not on the menu");
      }
    }
    print(total);
  }

  total(['pizza', 'rice']);
}
