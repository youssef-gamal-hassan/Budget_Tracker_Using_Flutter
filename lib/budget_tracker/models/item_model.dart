class Item{
  final String name;
  final String category;
  final double price;
  final DateTime date;

   const Item({
     required this.name,
     required this.category,
     required this.price,
     required this.date
   });

   factory Item.fromMap(Map<String, dynamic> map){
     final props = map['properties'] as Map<String, dynamic>;
     final dateStr = props['Date']?['date']?['start'];
     return Item(
         name: props['Name']?['title']?[0]?['plain_text'] ?? '?',
         category: props['Category']?['select']?['name']?? 'Any',
         price: (props['Price']?['number']?? 0).toDouble(),
         date: dateStr != null ? DateTime.parse(dateStr) : DateTime.now(),
     );
   }
}