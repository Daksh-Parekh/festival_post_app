class ModelRoutes {
  String name, thumbnail;

  ModelRoutes(this.name, this.thumbnail);

  factory ModelRoutes.fromMap({required Map data}) => ModelRoutes(
        data['name'],
        data['thumbnail'],
      );
}
