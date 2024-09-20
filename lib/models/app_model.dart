class FestivalModal {
  String name, thumbnail;
  List<String> img;

  FestivalModal(this.name, this.thumbnail, this.img);

  factory FestivalModal.fromMap({required Map data}) => FestivalModal(
        data['name'],
        data['thumbnail'],
        data['img'],
      );
}
