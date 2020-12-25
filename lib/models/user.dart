class MyUser {
  final String uid;

  MyUser({this.uid});
}

class UserData {
  final String uid;
  final String username;
  final String league1;
  final String league2;
  final int streak;
  final int picksRemaining;
  final String date;
  final int game1;
  final int game2;

  UserData(
      {this.uid,
      this.username,
      this.league1,
      this.league2,
      this.streak,
      this.picksRemaining,
      this.date,
      this.game1,
      this.game2});
}
