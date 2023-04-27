class User {
  final String name;
  final String number;
  final int bonus_points;

  User({required this.name, required this.number, required this.bonus_points});
   static User user1 = User(name: 'Сергей', number: '+7 909 303 39 53', bonus_points: 0,);
}
