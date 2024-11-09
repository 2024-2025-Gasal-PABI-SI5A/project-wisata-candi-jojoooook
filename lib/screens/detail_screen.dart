import 'package:flutter/material.dart';
import 'package:wisata_candi/models/candi.dart';

class DetailScreen extends StatelessWidget {
  final Candi candi;

  const DetailScreen({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // detail header
          // image utama

          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    candi.imageAsset,
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // tombol back custom
              Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[100]?.withOpacity(0.8),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back),
                  ),
                ),
              ),
            ],
          ),
          // DETAIL INFO
          // Info Atas
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Info Atas
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      candi.name,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_border),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // Info Tengah
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Row 1
                    Row(
                      children: [
                        const Icon(Icons.place, color: Colors.red),
                        const SizedBox(width: 8),
                        const SizedBox(
                            width: 70,
                            child: Text('Lokasi',
                                style: TextStyle(fontWeight: FontWeight.bold))),
                        Text(': ${candi.location}'),
                      ],
                    ),

                    // Row 2
                    Row(
                      children: [
                        const Icon(Icons.calendar_month, color: Colors.blue),
                        const SizedBox(width: 8),
                        const SizedBox(
                            width: 70,
                            child: Text('Dibangun',
                                style: TextStyle(fontWeight: FontWeight.bold))),
                        Text(': ${candi.built}'),
                      ],
                    ),

                    // Row 3
                    Row(
                      children: [
                        const Icon(Icons.house, color: Colors.green),
                        const SizedBox(width: 8),
                        const SizedBox(
                            width: 70,
                            child: Text('Tipe',
                                style: TextStyle(fontWeight: FontWeight.bold))),
                        Text(': ${candi.type}'),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Divider(color: Colors.deepPurple.shade100),
                const SizedBox(height: 16),

                // Info Bawah
              ],
            ),
          ),
        ],
      ),
    );
  }
}