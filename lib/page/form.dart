import 'package:flutter/material.dart'; // Mengimpor package material Flutter untuk membuat UI aplikasi

// Membuat kelas FormPage sebagai StatelessWidget karena tidak ada state yang berubah dalam widget ini
class FormPage extends StatelessWidget {
  // Variabel book bersifat final dan nullable (bisa bernilai null), menyimpan informasi buku dalam bentuk Map
  final Map<String, String>? book;

  // Konstruktor untuk FormPage, menerima parameter book dan key
  const FormPage({super.key, this.book});

  // Fungsi build() untuk membangun UI widget, ini adalah metode wajib dalam widget
  @override
  Widget build(BuildContext context) {
    return Scaffold( // Scaffold adalah struktur dasar visual halaman dengan AppBar dan body
      appBar: AppBar( // Membuat AppBar di bagian atas halaman
        title: const Text('Penyelesaian Pembayaran'), // Teks judul yang ditampilkan di AppBar
      ),
      body: Padding( // Padding digunakan untuk memberikan jarak di sekitar konten
        padding: const EdgeInsets.all(16.0), // Memberi padding sebesar 16.0 di semua sisi
        child: Column( // Column digunakan untuk menyusun widget secara vertikal
          crossAxisAlignment: CrossAxisAlignment.start, // Menyusun anak-anak widget di sisi kiri (awal) secara vertikal
          children: [
            // Menampilkan informasi buku jika tidak null
            if (book != null) // Kondisional: Jika book tidak null, tampilkan widget Text
              Text(
                'Anda membeli: ${book!['title']}', // Menampilkan teks dengan judul buku yang diambil dari map book
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold), // Menentukan gaya teks, ukuran 24 dan tebal
              ),
            const SizedBox(height: 10), // SizedBox untuk memberikan jarak vertikal antara elemen sebesar 10 piksel
            const Text(
              'Masukkan informasi pembayaran Anda:', // Teks instruksi untuk pengguna mengisi informasi pembayaran
              style: TextStyle(fontSize: 18), // Gaya teks untuk instruksi, ukuran teks 18
            ),
            const SizedBox(height: 10), // Memberikan jarak vertikal sebesar 10 piksel
            // Menampilkan beberapa form field dengan menggunakan metode .map() untuk membuat form lebih sederhana
            ...['Nama Lengkap', 'Alamat Email', 'Alamat Pengiriman'] // List berisi label untuk masing-masing TextFormField
                .map((label) => Padding( // Menggunakan map() untuk menghasilkan widget TextFormField dari setiap label
                      padding: const EdgeInsets.only(bottom: 10), // Memberikan padding di bawah TextFormField untuk jarak antar form
                      child: TextFormField( // TextFormField adalah input field untuk memasukkan teks
                        decoration: InputDecoration(labelText: label), // Memberikan label pada TextFormField sesuai dengan item dari List
                      ),
                    )),
            const SizedBox(height: 20), // SizedBox untuk memberikan jarak vertikal sebesar 20 piksel
            ElevatedButton( // ElevatedButton adalah tombol yang sedikit diangkat dengan bayangan
              onPressed: () { // Fungsi yang dijalankan ketika tombol ditekan
                ScaffoldMessenger.of(context).showSnackBar( // Menampilkan notifikasi (SnackBar) di bagian bawah layar
                  const SnackBar(
                    content: Text('Barang telah dikirim!'), // Pesan yang ditampilkan di SnackBar
                  ),
                );

                // Setelah 2 detik, kembali ke halaman utama dengan menggunakan Navigator.popUntil
                Future.delayed(const Duration(seconds: 2), () {
                  Navigator.popUntil(context, ModalRoute.withName('/')); // Menghapus semua halaman sampai root route "/"
                });
              },
              child: const Text('Selesaikan Pembayaran'), // Teks yang ditampilkan pada tombol
            ),
          ],
        ),
      ),
    );
  }
}
