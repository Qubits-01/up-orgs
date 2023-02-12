/// Not yet final. This is severely outdated.
/// Ref: https://iskomunidad.upd.edu.ph/index.php/Directory_of_Student_Organizations
enum OrgTypesEnum {
  academicCluster('Academic Cluster'),
  alliance('Alliance'),
  causeOrientedCluster('Cause-Oriented Cluster'),
  communityServiceCluster('Community Service Cluster'),
  dormitoryAssociation('Dormitory Association'),
  fraternity('Fraternity'),
  regionalOrProvincialCluster('Regional or Provincial Cluster'),
  religiousCluster('Religious Cluster'),
  sorority('Sorority'),
  specialInterest('Special Interest'),
  sportsAndRecreationCluster('Sports and Recreation Cluster');

  const OrgTypesEnum(this.name);
  final String name;
}
