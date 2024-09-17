import 'package:flutter/material.dart'; // Mengimpor package material Flutter yang menyediakan widget untuk membangun UI aplikasi

// PageOne adalah sebuah StatefulWidget yang dapat menyimpan state-nya selama aplikasi berjalan
class PageOne extends StatefulWidget {
  const PageOne({super.key}); // Konstruktor PageOne, menerima 'key' yang digunakan oleh Flutter untuk mengidentifikasi widget

  @override
  State<PageOne> createState() => _PageOneState(); // Menghubungkan widget dengan state-nya, di sini _PageOneState
}

// Kelas _PageOneState yang merupakan state dari widget PageOne
class _PageOneState extends State<PageOne> {
  // Daftar buku yang berupa List dari Map, di mana setiap Map mewakili buku dan berisi informasi judul, penulis, harga, dan URL gambar
  final List<Map<String, String>> books = [
    {
      'title': 'Harry Potter and The Philosophers Stone', // Judul buku
      'author': 'J.K. Rowling', // Nama penulis
      'price': 'Rp 500000', // Harga buku
      'image': 'https://m.media-amazon.com/images/I/81YOuOGFCJL._AC_UL320_.jpg', // URL gambar buku
    },
    {
      'title': 'Harry Potter and The Chamber of Secrets', // Judul buku kedua
      'author': 'J.K. Rowling', // Nama penulis kedua
      'price': 'Rp 400000', // Harga buku kedua
      'image': 'https://m.media-amazon.com/images/I/91OINeHnJGL._AC_UL320_.jpg', // URL gambar buku kedua
    },
  ];

  // filteredBooks adalah List yang akan menyimpan hasil filter dari buku-buku yang sesuai dengan pencarian, diinisialisasi dengan semua buku
  late List<Map<String, String>> filteredBooks = books;

  // searchController adalah kontroler teks yang digunakan untuk mengontrol input di TextField (input pencarian buku)
  final searchController = TextEditingController();

  // initState() adalah metode yang dipanggil saat State diinisialisasi pertama kali, mirip dengan konstruktor tetapi khusus untuk StatefulWidget
  @override
  void initState() {
    super.initState(); // Memanggil initState() dari parent class
    // Listener ditambahkan ke searchController untuk mendeteksi setiap perubahan teks di input pencarian
    searchController.addListener(() => setState(() {
      // Setiap kali teks berubah, filteredBooks akan di-update dengan buku yang judulnya cocok dengan teks yang diketik di TextField
      filteredBooks = books
          .where((book) => // Memfilter buku berdasarkan pencarian
              book['title']!.toLowerCase() // Mengambil judul buku dan mengubahnya menjadi huruf kecil
              .contains(searchController.text.toLowerCase())) // Memeriksa apakah teks pencarian ada dalam judul buku
          .toList(); // Mengubah hasil filter menjadi List
    }));
  }

  // build() adalah metode utama yang membangun antarmuka pengguna (UI) dari widget
  @override
  Widget build(BuildContext context) {
    return Scaffold( // Scaffold adalah struktur dasar layout yang menyediakan struktur visual untuk app
      appBar: AppBar( // Bagian atas aplikasi berupa AppBar
        title: const Text('Toko Buku Dinda & Vista'), // Menampilkan judul di AppBar
        bottom: PreferredSize( // Bagian bawah AppBar dengan elemen tambahan seperti TextField untuk pencarian
          preferredSize: const Size.fromHeight(50.0), // Ukuran preferensi untuk tinggi bagian bawah AppBar
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0), // Padding horizontal untuk TextField agar ada jarak dari tepi layar
            child: TextField( // TextField adalah elemen input teks, di sini digunakan untuk pencarian buku
              controller: searchController, // Menghubungkan TextField dengan searchController agar bisa mengontrol input teks
              decoration: InputDecoration( // Dekorasi untuk TextField
                hintText: 'Cari buku...', // Teks petunjuk yang muncul di TextField
                filled: true, // Mengisi latar belakang TextField dengan warna
                fillColor: Colors.white, // Warna latar belakang putih
                border: OutlineInputBorder( // Membuat garis luar (border) di sekitar TextField
                  borderRadius: BorderRadius.circular(8.0), // Membuat sudut TextField melengkung (rounded)
                ),
                prefixIcon: const Icon(Icons.search), // Ikon kaca pembesar di bagian kiri TextField sebagai penanda pencarian
              ),
            ),
          ),
        ),
      ),
      body: Padding( // Membungkus GridView dengan padding di semua sisi
        padding: const EdgeInsets.all(16.0), // Memberi padding sebesar 16 unit di seluruh sisi
        child: GridView.builder( // GridView.builder untuk menampilkan daftar buku dalam format grid
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount( // Mengatur tata letak grid dengan jumlah kolom tetap
            crossAxisCount: 2, // Menetapkan jumlah kolom dalam grid menjadi 2
            crossAxisSpacing: 10.0, // Menetapkan jarak antar kolom sebesar 10 unit
            mainAxisSpacing: 10.0, // Menetapkan jarak antar baris sebesar 10 unit
            childAspectRatio: 0.7, // Rasio aspek setiap item dalam grid, 0.7 berarti item lebih tinggi daripada lebarnya
          ),
          itemCount: filteredBooks.length, // Menetapkan jumlah item yang ditampilkan berdasarkan jumlah buku yang tersaring
          itemBuilder: (context, index) {
            final book = filteredBooks[index]; // Mengambil data buku yang tersaring pada indeks tertentu
            return GestureDetector( // Membungkus item buku dengan GestureDetector untuk mendeteksi tap
              onTap: () { // Fungsi yang dijalankan saat item di-tap
                Navigator.pushNamed( // Navigasi ke halaman lain saat item buku di-tap
                  context,
                  '/second', // Rute menuju halaman kedua (PageTwo)
                  arguments: book, // Mengirim data buku sebagai argumen ke halaman kedua
                );
              },
              child: Card( // Membungkus tampilan buku dalam sebuah card
                elevation: 4, // Memberikan efek bayangan (shadow) pada Card untuk memberikan kesan terangkat
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Membuat sudut Card menjadi bulat
                ),
                child: Column( // Mengatur tata letak item di dalam Card dalam bentuk kolom (vertikal)
                  crossAxisAlignment: CrossAxisAlignment.start, // Menyusun item dari kiri (start)
                  children: [
                    Expanded( // Expanded digunakan agar gambar dapat mengisi ruang yang tersedia
                      child: Image.network( // Menampilkan gambar dari URL
                        book['image']!, // URL gambar buku yang diambil dari data buku
                        fit: BoxFit.cover, // Gambar akan mengisi ruang tanpa mengubah rasio aspek aslinya
                        width: double.infinity, // Gambar akan mengambil lebar penuh Card
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0), // Memberi padding di sekitar judul buku
                      child: Text(
                        book['title']!, // Menampilkan judul buku
                        style: const TextStyle(
                          fontWeight: FontWeight.bold, // Membuat teks judul menjadi tebal (bold)
                          fontSize: 16.0, // Ukuran teks judul buku
                        ),
                        textAlign: TextAlign.center, // Menyusun teks judul agar rata di tengah
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0), // Padding horizontal untuk teks harga
                      child: Text(
                        book['price']!, // Menampilkan harga buku
                        style: const TextStyle(color: Colors.green), // Teks harga berwarna hijau
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
