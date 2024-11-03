<div align="center">
  <h2>𓍢ִ໋🌷͙֒₊˚*ੈ♡ Welcome to DYA'S FLOWERS ⸝⸝𓍢ִ໋ 🌷͙֒₊˚⋆</h2>
</div>     

![alt text](image-3.png)

***
**Nama**: Widya Mutia Ichsan  
**NPM**: 2306165912  
**Kelas**: PBP E  
--- 



---
#                   Table of Contents
- [TUGAS INDIVIDU 7](#tugas-individu-7)



***
#                  TUGAS INDIVIDU 7

## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.

**stateless widget** : widget yang nggak nyimpen status internal. Setelah widget ini dibuild, isinya bakal tetap sama selama siklusnya. Kalau ada perubahan, ya harus dibuild ulang pakai data baru. Contoh gampangnya, kayak tombol yang cuma nunjukin teks tanpa perlu interaksi atau perubahan.

**statefull widget** : kebalikan dari `stateless`. Widget ini bisa nyimpen dan ngelola status internalnya. Status ini bisa berubah, dan pas berubah, widget-nya bakal di-update supaya sesuai dengan status yang baru. Contoh yang umum adalah form input, di mana *user* bisa ngisi data, dan status widget-nya harus di-update saat pengguna berinteraksi.

## Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.

**Widget yang digunakan dalam proyek**:
- MaterialApp: Widget utama untuk aplikasi dengan  desain Material. Ngatur tema, navigasi, dan struktur aplikasi.
- **Scaffold**: Struktur dasar halaman, ada AppBar, body, dan elemen UI lain kayak Drawer atau BottomNavigationBar.
- **AppBar**: Bagian atas halaman buat nampilin judul aplikasi, bisa juga ada ikon dan tindakan lain.
- **Text**: Buat nampilin teks di UI, misalnya judul aplikasi atau info lainnya.
- **Padding**: Ngasih ruang di sekitar widget lain. Biar elemen-elemen di body nggak berdesakan.
- **Column**: Susun widget secara vertikal. Misalnya buat InfoCard dan elemen lain.
- **Row**: Susun widget secara horizontal. Dipakai di dalam Column buat nampilin InfoCard berjejer.
- **SizedBox**: Buat ngasih spasi antara widget. Misalnya, jarak antara InfoCard dan GridView.
- **Center**: Memusatkan widget anak di dalamnya.
- **GridView**: Nampilin elemen dalam bentuk grid. ItemCard ditampilkan dalam 3 kolom.
- **Card**: Nampilin konten dalam bentuk kartu dengan bayangan. Dipakai buat InfoCard.
- **Container**: Widget serbaguna buat ngatur ukuran, padding, margin, dan warna latar belakang dari widget lain.
- **Material**: Ngatur tampilan material dari widget anaknya. Dipakai buat ItemCard biar ada warna latar belakang.
- **InkWell**: Ngedeteksi interaksi pengguna (tap) dan kasih efek visual. Dipakai buat aksi saat ItemCard ditekan.
- **SnackBar**: Nampilin pesan sementara di bagian bawah layar. Misalnya, ngasih tahu pengguna saat mereka tekan ItemCard.

## Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
 
**Fungsi setState** : 
 Fungsi setState() di Flutter itu buat ngasih tahu framework kalau ada perubahan yang perlu dilakukan pada state widget. Pas mau panggil setState(), Flutter bakal nge-rebuild widget itu, jadi UI-nya bisa diperbarui sesuai perubahan yang terjadi

**Variabel yang Terpengaruh**:
 **Data**: Misalnya, jumlah item di keranjang belanja. bisa update jumlahnya pakai setState() saat item ditambah atau dihapus.

```dart
int itemCount = 0; // Menyimpan jumlah item

void addItem() {
    setState(() {
        itemCount++; // Memperbarui jumlah item
    });
}

```

**Status UI**: Misalnya, buat ngatur visibilitas widget, bisa pakai setState() buat ubah status loading.
```dart
bool isLoading = false;

void loadData() {
    setState(() {
        isLoading = true; // Ubah status jadi loading
    });
    // Operasi loading
}
```

**Gaya**: Buat ngatur warna atau gaya widget, bisa update variabelnya dalam setState().
```dart
Color backgroundColor = Colors.white;

void changeColor() {
    setState(() {
        backgroundColor = Colors.blue; // Ubah warna latar belakang
    });
}
```
Jadi, setState() ini penting banget buat nge-update UI di Flutter.

## Jelaskan perbedaan antara const dengan final.
 
 #### Perbedaan `final` dan `const` di Dart

##### `final`
- **Inisialisasi**: Cuma bisa di-set sekali, tapi nilainya bisa ditentukan saat runtime.
- **Contoh**: `final int a = 10;` (nilai ini bisa diambil dari hasil fungsi).

##### `const`
- **Inisialisasi**: Harus di-set dengan nilai yang udah pasti diketahui saat kompilasi.
- **Contoh**: `const int b = 20;` (nilai ini tetap dan nggak bisa diubah).

### Perbedaan
- **Runtime vs. Compile-time**: 
  - `final` bisa ditentukan saat runtime.
  - `const` harus diketahui saat kompilasi.
  
- **Koleksi**: 
  - Koleksi `const` nggak bisa dimodifikasi.
  - Koleksi `final` bisa dimodifikasi, tapi referensinya nggak bisa diubah.

Jadi, intinya, kalau butuh nilai yang tetap dan udah pasti, pakai `const`. Tapi kalau butuh nilai yang bisa ditentukan nanti, pakai `final`.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.

### 1. Membuat sebuah program Flutter baru dengan tema E-Commerce yang sesuai dengan tugas-tugas sebelumnya.

- instal `flutter`
- buka `terminal`, jalanin perintah:
    `flutter create dyas_commerce`
- masuk ke folder app
- buat file `menu.dart` di dalam folder `dyas_comerce/lib`
- import package flutter
- cut class :
``` dart
 MyHomePage ... {
    ...
}

class _MyHomePageState ... {
    ...
} 
```

pindahin ke dalam file `menu.dart`

- mengubah sifat widget halaman menu jadi stateless

### 2. Membuat tiga tombol sederhana dengan ikon dan teks untuk: 
#### - Melihat daftar produk (Lihat Daftar Produk) 

#### - Menambah produk (Tambah Produk)

#### - Logout (Logout)

- ngebuat button untuk card & claas ItemHomepage
- ngebuat lis of `ItemHomepage` make perintah :

``` dart
final List<ItemHomepage> items = [
          ItemHomepage("Lihat Produk", Icons.shopping_bag),
         ItemHomepage("Tambah Product", Icons.add),
         ItemHomepage("Logout", Icons.logout),
     ];
```
### 3. Mengimplementasikan warna-warna yang berbeda untuk setiap tombol (Lihat Daftar Produk, Tambah Produk, dan Logout).

- menambahkan properti warna di dalam class `ItemHomepage`

- modifikasi daftar items jadi seperti ini :
```dart
final List<ItemHomepage> items = [
  ItemHomepage("Lihat Mood", Icons.mood, Colors.blue), // Warna untuk "Lihat Mood"
  ItemHomepage("Tambah Mood", Icons.add, Colors.green), // Warna untuk "Tambah Mood"
  ItemHomepage("Logout", Icons.logout, Colors.red), // Warna untuk "Logout"
];

```
- Ubah bagian kelas ItemCard yang udah ada di `menu.dart` untuk menggunakan warna yang ditentukan saat membuat card

### 4.  Memunculkan Snackbar dengan tulisan

- di dalam kelas `ItemCard extends StatelessWidget`

nambahin `ScaffoldMessenger` :

```dart
 child: InkWell(
        // Aksi ketika kartu ditekan.
        onTap: () {
          // Menampilkan pesan SnackBar saat kartu ditekan.
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
            );
        },
 )
```