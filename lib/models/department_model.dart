class Department {
  final int id;
  final String name;
  final String imgUrl;
  Department({this.id, this.name, this.imgUrl});
}

List<Department> departmentList = [
  Department(
      id: 0, name: 'Content', imgUrl: 'assets/images/department/content.png'),
  Department(
      id: 1,
      name: 'Commercial',
      imgUrl: 'assets/images/department/commercial.png'),
  Department(
      id: 2, name: 'Finance', imgUrl: 'assets/images/department/financial.png'),
  Department(id: 3, name: 'HR', imgUrl: 'assets/images/department/admin.png'),
  Department(id: 4, name: 'IT', imgUrl: 'assets/images/department/IT.png'),
  Department(
      id: 4,
      name: 'Marketing',
      imgUrl: 'assets/images/department/marketing.png'),
  Department(
      id: 5,
      name: 'Technical',
      imgUrl: 'assets/images/department/technical.png'),
];

class Skill {
  final int id;
  final String title;
  Skill({this.id, this.title});
}

List<Skill> skill = [
  Skill(id: 1, title: 'Functional'),
  Skill(id: 2, title: 'Management'),
  Skill(id: 3, title: 'Conceptional'),
];
