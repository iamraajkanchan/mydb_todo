class Note {
  int _id;
  String _title;
  String _description;
  String _date;
  int _priority;

  Note(this._title, this._date, this._priority, [this._description]);
  Note.withId(this._id, this._title, this._date, this._priority,
      [this._description]);

// All the getters.

  int get id => this._id;
  String get title => this._title;
  String get description => this._description;
  String get date => this._date;
  int get priority => this._priority;

// All the setters.
  set title(String _title) {
    if (_title.length <= 255) {
      this._title = _title;
    }
  }

  set description(String _description) {
    if (_description.length <= 255) {
      this._description = _description;
    }
  }

  set date(String _date) {
    this._date = _date;
  }

  set priority(int _priority) {
    if (_priority >= 1 && _priority <= 2) {
      this._priority = _priority;
    }
  }

  set id(int _id) {}

  // Used to save and retrieve from database.
  // convert note object to map object.
  Map<String, dynamic> toMap() {
    var noteMap = Map<String, dynamic>();
    if (id != null) {
      noteMap['id'] = this._id;
    }
    noteMap['title'] = this._title;
    noteMap['description'] = this._description;
    noteMap['priority'] = this._priority;
    noteMap['date'] = this._date;
    return noteMap;
  }

  // This is a named constructor.
  Note.fromMapObject(Map<String, dynamic> noteMap) {
    this._id = noteMap['id'];
    this._title = noteMap['title'];
    this._description = noteMap['description'];
    this._date = noteMap['date'];
    this._priority = noteMap['priority'];
  }
}
