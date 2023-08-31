class Place {
  String url;
  String title;
  String subtitle;
  String description;
  int? rating;

  Place(
      {required this.url,
      required this.title,
      required this.subtitle,
      required this.description,
      int? this.rating});

  static getPlaces() {
    return [
      Place(
          url: "",
          title: "Montes Morados",
          subtitle: "Medellín, Colombia",
          description: "Lorem")
    ];
  }
}
