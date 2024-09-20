// class ModelRoutes {
//   String name, thumbnail;

//   ModelRoutes(this.name, this.thumbnail);

//   factory ModelRoutes.fromMap({required Map data}) => ModelRoutes(
//         data['name'],
//         data['thumbnail'],
//       );
// }

class FestivalModal {
  String name, thumbnail;

  FestivalModal(this.name, this.thumbnail);

  factory FestivalModal.fromMap({required Map data}) => FestivalModal(
        data['name'],
        data['thumbnail'],
      );
}
