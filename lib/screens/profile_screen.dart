import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // 1 Deklarasikan variabel yang dibutuhkan
  bool isSignedIn = false;
  String fullName = 'Jonathan Christian Chandra';
  String userName = 'jonathancc ';
  int favoriteCandiCount = 0;

  // 5. Implementasi Sign in
  void signIn() {
    setState(() {
      isSignedIn = !isSignedIn;
    });
  }

  // 6. Implementasi Sign out
  void signOut() {
    setState(() {
      isSignedIn = !isSignedIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          color: Colors.deepPurple,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              // 2. Buat bagian profile header (isinya gambar profil)
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 150),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.deepPurple,
                              width: 2,
                            ),
                            shape: BoxShape.circle),
                        child: const CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              AssetImage('images/placeholder_image.png'),
                        ),
                      ),
                      if (isSignedIn)
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.camera_alt,
                              color: Colors.deepPurple[50],
                            ))
                    ],
                  ),
                ),
              ),
              // 3. Buat bagian Profile info (isinya info profil)
              // Baris 1 Pengguna
              const SizedBox(
                height: 20,
              ),
              Divider(
                color: Colors.deepPurple[100],
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: const Row(
                      children: [
                        Icon(
                          Icons.lock,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Pengguna',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                      child: Text(
                    ' : $userName',
                    style: const TextStyle(fontSize: 18),
                  )),
                ],
              ),

              // Baris 2 Nama
              const SizedBox(
                height: 20,
              ),
              Divider(
                color: Colors.deepPurple[100],
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: const Row(
                      children: [
                        Icon(
                          Icons.person,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Nama',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                      child: Text(
                    ' : $fullName',
                    style: const TextStyle(fontSize: 18),
                  )),
                  if (isSignedIn) const Icon(Icons.edit),
                ],
              ),

              // Baris 1 Profile Info
              const SizedBox(
                height: 20,
              ),
              Divider(
                color: Colors.deepPurple[100],
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: const Row(
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Favorit',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                      child: Text(
                    ' : $favoriteCandiCount',
                    style: const TextStyle(fontSize: 18),
                  )),
                ],
              ),
              // 4. Buat bagian profile action (isinya tombol signOut / signout)
              const SizedBox(
                height: 4,
              ),
              Divider(
                color: Colors.deepPurple[100],
              ),
              const SizedBox(
                height: 20,
              ),
              isSignedIn
                  ? TextButton(
                      onPressed: signOut, child: const Text('Sign Out'))
                  : TextButton(onPressed: signIn, child: const Text('Sign in'))
            ],
          ),
        ),
      ],
    ));
  }
}
