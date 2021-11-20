class Note {
  int _id;
  int _priority;
  String _title;
  String _description;
  String _date;

  Note(this._title, this._date, this._priority, [this._description]);
  Note.withId(this._id, this._title, this._date, this._priority,
      [this._description]);

  // All the getters
  int get id => _id;
  int get priority => _priority;

  String get title => _title;
  String get description => _description;
  String get date => _date;

  // All the setters

  set title(String newTitle) {
    if (newTitle.length <= 255) {
      this._title = newTitle;
    }
  }

  set description(String newDescription) {
    if (newDescription.length <= 255) {
      this._description = newDescription;
    }
  }

  set date(String newDate) {
    this._date = newDate;
  }

  set priority(int newPriority) {
    if (newPriority >= 1 && newPriority <= 2) {
      this._priority = newPriority;
    }
  }

  // used to save and retrive from database
  // convert Note object to map object
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map["id"] = _id;
    }
    map["title"] = _title;
    map["priority"] = _priority;
    map["description"] = _description;
    map["date"] = _date;
    return map;
  }

  Note.fromMapObject(Map<String, dynamic> map) {
    this._id = map["id"];
    this._title = map["title"];
    this._priority = map["priority"];
    this._description = map["description"];
    this._date = map["date"];
  }
}
