class SkillList {
  final String title;
  final String imgUrl;
  final String description;

  SkillList(
      {this.title,
      this.imgUrl,
      this.description =
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."});
}

List<SkillList> skillList = [
  SkillList(
      title: 'Content Marketing Foundation',
      imgUrl: 'assets/images/imgList/1.jpg'),
  SkillList(
      title: 'Advertise in Gmail with Google Ads',
      imgUrl: 'assets/images/imgList/2.jpg'),
  SkillList(
      title:
          'The science of why great story build relationship and make people care',
      imgUrl: 'assets/images/imgList/3.jpg'),
  SkillList(
      title: 'Tell your story to carry the message',
      imgUrl: 'assets/images/imgList/4.jpg'),
  SkillList(
      title: 'The Influence of touchpoints',
      imgUrl: 'assets/images/imgList/5.jpg'),
  SkillList(
      title: 'Marketing on Instagram', imgUrl: 'assets/images/imgList/6.jpg'),
];
