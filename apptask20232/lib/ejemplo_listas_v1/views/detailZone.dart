import 'package:apptask20232/styles.dart';
import 'package:flutter/material.dart';

class DetailZone extends StatelessWidget {
  const DetailZone({
    super.key,
    required this.url,
    required this.title,
    required this.subtitle,
    required this.stars,
    required this.description,
  });

  final String url;
  final String title;
  final String subtitle;
  final int stars;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.maxFinite,
      child: Column(
        children: [
          createImage(url),
          const Padding(padding: EdgeInsets.only(top: 15, bottom: 15)),
          createHeader(title: title, subtitle: subtitle, stars: stars),
          const Padding(padding: EdgeInsets.only(top: 15, bottom: 15)),
          createButtonSection(),
          const Padding(padding: EdgeInsets.only(top: 15, bottom: 15)),
          createDescriptionSection(description)
        ],
      ),
    );
  }
}

createImage(String url) {
  return Container(
    width: double.infinity,
    height: 285,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(url),
      ),
    ),
  );
}

createHeader({required String title, required String subtitle, int? stars}) {
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15),
    child: Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              textAlign: TextAlign.justify,
              style: styleTitle(),
            ),
            const SizedBox(height: 5),
            Text(
              subtitle,
              textAlign: TextAlign.start,
              style: TextStyles.subtitle,
            )
          ],
        ),
        const SizedBox(width: 160),
        const Icon(
          Icons.star,
          color: Colors.redAccent,
        ),
        Text(stars.toString())
      ],
    ),
  );
}

createButtonSection() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      createIconText(Icons.call, "Call"),
      createIconText(Icons.route, "Route"),
      createIconText(Icons.share, "Share"),
    ],
  );
}

createIconText(IconData icon, String text) {
  return Column(
    children: [
      Icon(
        icon,
        size: 30,
        color: const Color.fromARGB(255, 71, 169, 218),
      ),
      Text(
        text,
        style: const TextStyle(color: Color.fromARGB(255, 71, 169, 218)),
      ),
    ],
  );
}

createDescriptionSection(String description) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Text(
      description,
    ),
  );
}
