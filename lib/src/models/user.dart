class User{
    String get id => _id;
    String username;
    String photoUrl;
    String _id;
    bool active;
    DateTime lastSeen;

    User({
       @requried Strng username,
       @requried String photoUrl,
       @requried bool active,
       @requried DateTime lastSeen});

    toJson() => {
        'username': username,
        'photoUrl': photoUrl,
        'active': active,
        'lastSeen': lastSeen
    };


    factory User.fromJson(Map<String, dynamic> json) {
        final user = User(
            username: json['username'],
            photoUrl: json['photoUrl'],
            active: json['active'],
            lastSeen: DateTime.parse(json['lastSeen']), );
        user._id = json['_id'];
        return user;
    }
}