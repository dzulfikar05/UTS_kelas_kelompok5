import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/photo_tile.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {

    final galleryGroups = [
      {
        'date': '5 Okt ',
        'location': 'Bandung',
        'photos': ['assets/images/1.jpg', 'assets/images/2.jpg'],
      },
      {
        'date': '10 Okt ',
        'location': 'Jogja',
        'photos': ['assets/images/3.jpg', 'assets/images/4.jpg'],
      },
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Gallery',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: galleryGroups.length,
        itemBuilder: (context, groupIndex) {
          final group = galleryGroups[groupIndex];
          final photos = group['photos'] as List<String>;

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${group['date']}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "${group['location']}",
                  style: const TextStyle(color: Colors.grey, fontSize: 14),
                ),
                const SizedBox(height: 8),

                SizedBox(
                  height: 110,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: photos.length,
                    separatorBuilder: (_, __) => const SizedBox(width: 6),
                    itemBuilder: (context, index) {
                      final imageUrl = photos[index];
                      return GestureDetector(
                        onTap: () => context.push('/detail/$index'),
                        child: PhotoTile(imageUrl: imageUrl),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
