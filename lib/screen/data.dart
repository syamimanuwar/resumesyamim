class EducationalType {
  final String image;
  final String name;
  final String course;
  final String year;
  final String cgpa;
  final String muet;
  final String pmr;
  final String spm;
  final String upsr;

  EducationalType({
    this.image = '',
    this.name = '',
    this.course = '',
    this.year = '',
    this.cgpa = '',
    this.muet = '',
    this.pmr = '',
    this.spm = '',
    this.upsr = '',
  });
}

final List<EducationalType> EducationType = [
  _EducationalType1,
  _EducationalType2,
  _EducationalType3,
];

final _EducationalType1 = EducationalType(
  image: 'images/uitm.png',
  name: 'UITM SEREMBAN 3',
  course: 'Bachelor Degree of Corporate Administration (Hons)',
  year: '2016 - 2019',
  cgpa: 'CGPA: 3.19',
);

final _EducationalType2 = EducationalType(
  image: 'images/uitm.png',
  name: 'UITM DENGKIL',
  course: 'Foundation of Law',
  year: '2015 - 2016',
  cgpa: 'CGPA: 2.90',
  muet: 'MUET: Band 4',
);

final _EducationalType3 = EducationalType(
  image: 'images/smj.png',
  name: 'SEKOLAH MENENGAH KEBANGSAAN JITRA',
  year: '2010 - 2014',
  pmr: 'PMR: 8A',
  spm: 'SPM: 6A 2B 2C',
  upsr: 'UPSR: 5A',
);

class WorkType {
  final String image;
  final String name;
  final String position;
  final String year;

  WorkType({
    this.image = '',
    this.name = '',
    this.position = '',
    this.year = '',
  });
}

final List<WorkType> workType = [
  _WorkType1,
  _WorkType2,
  _WorkType3,
];

final _WorkType1 = WorkType(
  image: 'images/tmf.png',
  name: 'TMF ADMINISTRATIVE SERVICES MALAYSIA SDN BHD',
  position: 'Associate Corporate Secretary',
  year: 'Oct 2019 - March 2022',
);

final _WorkType2 = WorkType(
    image: 'images/wordpress.png',
    name: 'FREELANCE',
    position: 'Wordpress Developer');

final _WorkType3 = WorkType(
  image: 'images/laptop.jpeg',
  name: 'FREELANCE',
  position: 'Laptop / PC Technician',
);

class Attribute {
  final String name;
  final String details;

  Attribute({
    this.name = '',
    this.details = '',
  });
}

final List<Attribute> attribute = [
  _Attribute0,
  _Attribute1,
  _Attribute2,
  _Attribute3,
  _Attribute4,
  _Attribute5,
  _Attribute6,
  _Attribute7,
  _Attribute8,
  _Attribute9,
  _Attribute10,
  _Attribute11,
];

final _Attribute0 = Attribute(
  name: 'EAGER TO CODE',
  details: 'SELF-TAUGHT PROGRAMMER WHO HAVE BASIC IN FLUTTER AND GIT',
);

final _Attribute1 = Attribute(
  name: 'LOCATION',
  details: 'LIVE IN CYBERJAYA, HAVE OWN TRANSPORT',
);

final _Attribute2 = Attribute(
  name: 'WORKING TOOLS',
  details: 'HAVE OWN MACBOOK AIR M1, FAST INTERNET AT HOME (IF WFH/REMOTE)',
);

final _Attribute3 = Attribute(
  name: 'REAL WORKING EXPERIENCE',
  details: 'WORKED AS COMPANY SECRETARY FOR OVER 2 YEARS',
);

final _Attribute4 = Attribute(
  name: 'TRAITS',
  details: 'FLEXIBLE & ADAPTABLE',
);

final _Attribute5 = Attribute(
  name: 'TRAITS',
  details: 'PROBLEM SOLVER',
);

final _Attribute6 = Attribute(
  name: 'TRAITS',
  details: 'COLLABORATIVE AND TEAM PERSON',
);

final _Attribute7 = Attribute(
  name: 'TRAITS',
  details: 'MULTITASKING ABILITIES',
);

final _Attribute8 = Attribute(
  name: 'TRAITS',
  details: 'EFFECTIVE COMMUNICATION',
);

final _Attribute9 = Attribute(
  name: 'TRAITS',
  details: 'SELF DISCIPLINE, ACCOUNTABILITY AND TIME MANAGEMENT',
);

final _Attribute10 = Attribute(
  name: 'TRAITS',
  details: 'CONSTANTLY LEARNING AND IMPROVING',
);

final _Attribute11 = Attribute(
  name: 'TRAITS',
  details: 'LOYAL AND STRIVE TO BECOME A GREAT ASSET TO THE COMPANY',
);
