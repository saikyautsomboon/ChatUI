class User {
  String _name;
  String _image;

  User(this._image, this._name);

  String get image => _image;
  set image(String value) {
    _image = value;
  }

  String get name => _name;
  set name(String value) {
    _name = value;
  }
}
