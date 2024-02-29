class AboutMe {
  String name;
  String age;
  List<String> academic;
  List<String> ageAcademic;
  String imageAsset;
  String email;

  AboutMe({
    required this.name,
    required this.age,
    required this.academic,
    required this.ageAcademic,
    required this.imageAsset,
    required this.email,
  });
}

var aboutMe = AboutMe(
  name: 'Bagas Aulia Alfasyam',
  age: '22',
  academic: [
    'TK Al-Khansa',
    'SDN Percontohan',
    'PP. Ar-Raudlatul Hasanah',
    'Universitas Malikussaleh'
  ],
  ageAcademic: [
    '2006 s/d 2007',
    '2007 s/d 2012',
    '2012 s/d 2018',
    '2019 s/d 2018'
  ],
  email: 'bagasaulia7@gmail.com',
  imageAsset: 'assets/images/foto.jpg',
);
