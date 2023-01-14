class UserModel {
  final String name;
  final String email;
  final String profilePictureUrl;
  final String money;

  UserModel({
    required this.name,
    required this.email,
    required this.profilePictureUrl,
    required this.money,
  });
}

UserModel currentUser = UserModel(
  name: 'John Doe',
  email: 'UserCakep@students.amikom.ac.id',
  profilePictureUrl: 'https://i.pravatar.cc/150?img=3',
  money: 'Rp. 1.000.000',
);
