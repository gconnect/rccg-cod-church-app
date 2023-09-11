class DepartmentModel {
  final String name;
  final String description;
  final String meetingDays;
  final String meetingTime;
  final String meetingVenue;

  DepartmentModel(
      {required this.name,
      required this.description,
      required this.meetingDays,
      required this.meetingTime,
      required this.meetingVenue});
}

String departmentDescription = '''
The City of David-Eket is a special parish of the Redeemed Christian Church of God, Akwa-Ibom State, youth Province 5 Founded in November 2007 by a special mandate from the 

General Overseer of REDEEMED CHRISTIAN CHURCH OF GOD-The Youth Assembly is fulfilling its mission of bringing the Word of God to the youths, empowering them to rise above the limitations of age, environment, and social class.
''';


List<DepartmentModel> departments = <DepartmentModel>[
  DepartmentModel(
        name: "Multimedia",
        description: departmentDescription,
        meetingDays: "Every Monday",
        meetingTime: "2 - 4pm",
        meetingVenue: "Church Auditorium",
     ),

  DepartmentModel(
    name: "Multimedia",
    description: departmentDescription,
    meetingDays: "Every Monday",
    meetingTime: "2 - 4pm",
    meetingVenue: "Church Auditorium",
  ),

  DepartmentModel(
    name: "Multimedia",
    description: departmentDescription,
    meetingDays: "Every Monday",
    meetingTime: "2 - 4pm",
    meetingVenue: "Church Auditorium",
  ),

  DepartmentModel(
    name: "Multimedia",
    description: departmentDescription,
    meetingDays: "Every Monday",
    meetingTime: "2 - 4pm",
    meetingVenue: "Church Auditorium",
  ),
  DepartmentModel(
    name: "Multimedia",
    description: departmentDescription,
    meetingDays: "Every Monday",
    meetingTime: "2 - 4pm",
    meetingVenue: "Church Auditorium",
  ),
  DepartmentModel(
    name: "Multimedia",
    description: departmentDescription,
    meetingDays: "Every Monday",
    meetingTime: "2 - 4pm",
    meetingVenue: "Church Auditorium",
  ),

];