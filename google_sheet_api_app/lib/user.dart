class UserFields {
  //these are the title(rows) which we need to have in our spreadsheet(of a particular worksheet)
  static final String id = 'id';
  static final String name = 'name';
  static final String email = 'email';
  static final String isBeginner = 'isBeginner';

  static List<String> getFields() => [id, name, email, isBeginner]; //we create a lists of string using getFields method
}
