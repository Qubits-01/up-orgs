enum AccountTypesEnum {
  god('God', double.infinity),
  admin('Admin', 80.0),
  moderator('Moderator', 70.0),
  upFaculty('UP Faculty', 60.0),
  upStudent('UP Student', 50.0),
  upAlumni('UP Alumni', 40.0),
  nonUp('Non-UP', 30.0),
  unverified('Unverified', 20.0),
  anonymous('Anonymous', 10.0),
  suspended('Suspended', -20.0),
  banned('Banned', -30.0);

  const AccountTypesEnum(this.name, this.accessLevel);
  final String name;
  final double accessLevel;
}
