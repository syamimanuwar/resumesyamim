import 'package:flutter/material.dart';
import 'work_screen.dart';

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
  name: 'UiTM Seremban 3',
  course: 'Bachelor Degree of Corporate Administration (Hons)',
  year: '2016 - 2019',
  cgpa: 'CGPA: 3.19',
);

final _EducationalType2 = EducationalType(
  image: 'images/uitm.png',
  name: 'UiTM Dengkil',
  course: 'Foundation of Law',
  year: '2015 - 2016',
  cgpa: '2.90',
  muet: 'MUET: Band 4',
);

final _EducationalType3 = EducationalType(
  image: 'images/smj.png',
  name: 'Sekolah Menengah Kebangsaan Jitra',
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
  name: 'TMF Administrative Services Malaysia Sdn. Bhd.',
  position: 'Associate Corporate Secretary',
  year: 'Oct 2019 - March 2022',
);

final _WorkType2 = WorkType(
  image: 'images/wordpress.png',
  name: 'Freelance - Wordpress Developer',
);

final _WorkType3 = WorkType(
  image: 'images/laptop.jpeg',
  name: 'Freelance - Laptop / PC Technician',
);
