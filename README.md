# README

# ANGKRINGAN TOK DALANG

## Nama    : Resanda Dezca Asyam

## NPM     : 2206082682

## Kelas   : PBP C

<details>

<summary> Soal Tugas 7 </summary>


Pertanyaan: 

1. Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?

    Stateless widget dalam Flutter adalah widget yang tidak memiliki keadaan internal yang berubah, cocok untuk tampilan statis, seperti teks dan gambar. Mereka tidak dapat merespons perubahan keadaan. Sementara itu, stateful widget memiliki keadaan internal yang dapat berubah selama masa hidupnya dan cocok untuk tampilan dinamis yang memerlukan respons terhadap perubahan keadaan, seperti input pengguna atau animasi. Mereka menggunakan kelas state terpisah untuk menyimpan dan mengelola keadaan, dan mereka dapat merender ulang diri mereka sendiri sesuai kebutuhan saat keadaan berubah.

2. Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.

    * **MyApp** yang digunakan sebagai root dari aplikasi ini dan membungkus seluruh widget yang ada pada aplikasi ini. Widget ini yang dijalankan pada program utama
    * **MaterialApp** yang digunakan untuk mengatur konfigurasi global aplikasi dan menyediakan kerangka kerja untuk membangun aplikasi.
    * **MyHomePage** yang merupakan widget halaman utama aplikasi
    * **Scaffold** yang menyediakan struktur dasar untuk tampilan halaman.
    * **AppBar** yang menampilkan header atas aplikasi dengan judul.
    * **SingleChildScrollView** yang membuat konten dapat melakukan scrolling.
    * **Padding** yang menambahkan padding ke konten.
    * **Column** yang mengatur posisi children widget secara vertikal.
    * **Text** yang menampilkan teks dengan gaya tertentu.
    * **GridView.count** yang digunakan untuk mengatur tampilan berupa grid layout.
    * **ShopCard** untuk menampilkan card tombol Lihat Item, Tambah Item, dan Logout.
    * **Material** yang digunakan untuk mengatur warna latar belakang dan tampilan dasar untuk kartu.
    * **InkWell** yang memungkinkan area kartu menjadi responsif terhadap sentuhan pengguna, sehingga dapat mendeteksi ketika kartu ditekan.
    * **Container** yang digunakan untuk mengatur struktur konten dalam kotak dengan padding yang telah ditentukan.
    * **Center** yang digunakan untuk mengatur konten di tengah kartu.
    * **Icon** widget yang menampilkan ikon tertentu.
    * **SnackBar** yang digunakan untuk menampilkan pesan kepada pengguna.

3. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)

    1. Membuat sebuah program Flutter baru dengan tema inventory seperti tugas-tugas sebelumnya.

        Pertama-tama saya membuat sebuah flutter project dengan perintah berikut


        ```shell
        flutter create angkringan_tok_dalang
        cd angkringan_tok_dalang
        ```

        Setelah project dibentuk, saya membuat file bernama `menu.dart` pada direktori `angkringan_tok_dalang/lib` dan mengimport package `material.dart` dari flutter. Kemudian saya memindadhkan class `MyHomePage` dan `_MyHomePageState` pada `main.dart` ke `menu.dart`. Kemudian saya melakukan import menu.dart ke main.dart agar dapat mengenali class `MyHomePage` yang sudah dipindahkan.

    2. Membuat tiga tombol sederhana dengan ikon dan teks untuk:

        Untuk membuat tiga tombol sederhana, saya terlebih dahulu mengubah warna tema aplikasi menjadi Indigo. Kemudian pada class `MyHomePage` di main.dart, saya menghapus `MyHomePage(title: 'Flutter Demo Home Page')`. Pada `menu.dart`, saya mengubah state menjadi stateless agar statis dan meningkatkan performa aplikasi. Saya juga melakukan perubahan  pada bagian `({super.key, required this.title})` menjadi `({Key? key}) : super(key: key);`. Setelah itu, saya menghapus kode pada class tersebut dari final string title hingga kebawah. Untuk membuat objek informasi itemnya, saya membuat class `ShopItem` yang memiliki atribut nama dan icon.pada class `MyHomePage`, saya menambahkan kode berikut untuk menampilkan card pada halaman utama.


        ```dart
        final List<ShopItem> items = [
            ShopItem("Lihat Item", Icons.checklist, Colors.blue),
            ShopItem("Tambah Item", Icons.add_shopping_cart, const Color.green),
            ShopItem("Logout", Icons.logout, Colors.red),
          ];
        ```

        Kemudian untuk mempercantik tampilan, saya membuat AppBar, dan membuat agar tampilan pada isi halaman page dapat di scroll serta membuat agar card yang ditampilkan tertata dengan rapi menggunakan GridView. Lalu saya juga membuat class baru bernama `ShopCard` untuk membungkus ShopItem dengan card. Pada kelas tersebut, terdapat atribut ShopItem dan memiliki widget-widget yang dibutuhkan untuk membentuk sebuah card.

    3. Memunculkan Snackbar dengan tulisan:

        Untuk menampilkan snackbar ketika tombol ditekan, saya menambahkan widget InkWell yang dapat menerima respon sentuhan dari user, setelah itu saya melakukan action dengan menampilkan Widget SnackBar yang berisi teks berdasarkan ShopItem yang ditekan. Berikut adalah kodenya

        ```dart
        InkWell(
                // Area responsive terhadap sentuhan
                onTap: () {
                  // Memunculkan SnackBar ketika diklik
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(SnackBar(
                        content: Text("Kamu telah menekan tombol ${item.name}!")));
                },
        ```
</details>

<details>

<summary> Soal Tugas 8 </summary>

Pertanyaan: 

1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!

`Navigator.push()` dan `Navigator.pushReplacement()` adalah dua metode navigasi yang berbeda dalam Flutter.

 1. **Navigator.push():**
   - `Navigator.push()` digunakan untuk menempatkan halaman baru di atas tumpukan halaman saat ini.
   - Ini menambahkan halaman baru ke tumpukan halaman sehingga pengguna dapat kembali ke halaman sebelumnya.
   - Contoh penggunaan: Navigasi ke halaman baru dan membiarkan pengguna kembali ke halaman sebelumnya.

     ```dart
     Navigator.push(
       context,
       MaterialPageRoute(builder: (context) => NewPage()),
     );
     ```

 2. **Navigator.pushReplacement():**
   - `Navigator.pushReplacement()` digunakan untuk menggantikan halaman saat ini dengan halaman baru di tumpukan halaman.
   - Ini berguna ketika Anda ingin menggantikan halaman saat ini dengan halaman baru dan tidak ingin pengguna kembali ke halaman sebelumnya.
   - Contoh penggunaan: Navigasi ke halaman baru dan menggantikan halaman saat ini sehingga pengguna tidak dapat kembali ke halaman sebelumnya.

     ```dart
     Navigator.pushReplacement(
       context,
       MaterialPageRoute(builder: (context) => NewPage()),
     );
     ```

 Contoh lebih lengkap:

```dart
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Menggunakan Navigator.push() untuk menambah halaman baru
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NewPage()),
            );
          },
          child: Text('Go to New Page'),
        ),
      ),
    );
  }
}

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Menggunakan Navigator.pushReplacement() untuk menggantikan halaman saat ini
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => AnotherPage()),
            );
          },
          child: Text('Replace with Another Page'),
        ),
      ),
    );
  }
}

class AnotherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Another Page'),
      ),
      body: Center(
        child: Text('This is Another Page'),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
    ),
  );
}
```

Dalam contoh di atas, ketika tombol pada halaman `NewPage` ditekan, kita menggunakan `Navigator.pushReplacement()` untuk menggantikan `NewPage` dengan `AnotherPage`, sehingga pengguna tidak dapat kembali ke `NewPage`.


2. Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!

    Flutter menyediakan berbagai jenis widget untuk mengatur tata letak dan struktur UI. Berikut adalah beberapa layout widget utama di Flutter dan konteks penggunaan masing-masing:

    1. **Container:**
    - **Konteks Penggunaan:** `Container` digunakan untuk mengelompokkan dan mendekorasi widget lain. Ini dapat berisi satu widget atau banyak widget, dan dapat dikonfigurasi dengan berbagai properti seperti padding, margin, dan dekorasi.

     ```dart
     Container(
       padding: EdgeInsets.all(16.0),
       margin: EdgeInsets.symmetric(vertical: 10.0),
       decoration: BoxDecoration(
         color: Colors.blue,
         borderRadius: BorderRadius.circular(8.0),
       ),
       child: Text('Hello, Flutter!'),
     )
     ```

    2. **Row dan Column:**
    - **Konteks Penggunaan:** `Row` digunakan untuk mengatur widget horizontal secara sejajar, sementara `Column` digunakan untuk mengatur widget secara vertikal. Keduanya sangat berguna untuk menyusun widget secara berderet.

     ```dart
     Row(
       children: [
         Icon(Icons.star),
         Text('5.0'),
       ],
     )

     Column(
       children: [
         Text('Title'),
         Text('Subtitle'),
       ],
     )
     ```

    3. **ListView dan GridView:**
    - **Konteks Penggunaan:** `ListView` digunakan untuk menampilkan daftar widget secara bergulir, sementara `GridView` digunakan untuk menampilkan daftar widget dalam bentuk grid. Mereka berguna untuk menangani daftar atau kumpulan data.

     ```dart
     ListView(
       children: [
         ListTile(title: Text('Item 1')),
         ListTile(title: Text('Item 2')),
         // ...
       ],
     )

     GridView.builder(
       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
         crossAxisCount: 2,
       ),
       itemBuilder: (context, index) => Text('Item $index'),
       itemCount: 10,
     )
     ```

    4. **Stack:**
    - **Konteks Penggunaan:** `Stack` digunakan untuk menumpuk widget di atas satu sama lain. Ini berguna untuk membuat tumpukan visual, seperti overlay atau elemen tumpukan.

     ```dart
     Stack(
       children: [
         Image(...),
         Positioned(
           bottom: 10.0,
           right: 10.0,
           child: Text('Overlay Text'),
         ),
       ],
     )
     ```

    5. **Expanded dan Flexible:**
    - **Konteks Penggunaan:** `Expanded` dan `Flexible` digunakan dalam `Row` atau `Column` untuk memberikan fleksibilitas pada widget. Mereka membantu dalam mendistribusikan ruang sesuai dengan proporsi tertentu.

     ```dart
     Column(
       children: [
         Text('Header'),
         Expanded(
           child: Container(color: Colors.blue),
         ),
         Text('Footer'),
       ],
     )
     ```

    6. **SizedBox:**
    - **Konteks Penggunaan:** `SizedBox` digunakan untuk memberikan batas atau dimensi tetap pada widget. Ini berguna untuk mengontrol ruang di antara atau di sekitar widget.

     ```dart
     SizedBox(
       width: 100.0,
       height: 50.0,
       child: Text('Fixed Size Box'),
     )
     ```

    7. **Card:**
    - **Konteks Penggunaan:** `Card` digunakan untuk mengelompokkan informasi terkait dalam suatu kotak. Ini biasanya digunakan untuk menampilkan data terstruktur dengan tata letak khusus.

     ```dart
     Card(
       child: ListTile(
         leading: Icon(Icons.account_circle),
         title: Text('John Doe'),
         subtitle: Text('Software Developer'),
       ),
     )
     ```

    8. **Wrap:**
    - **Konteks Penggunaan:** `Wrap` digunakan untuk mengatur widget secara horizontal atau vertikal, dan saat widget tidak muat dalam satu baris atau kolom, ia akan beralih ke baris atau kolom berikutnya.

     ```dart
     Wrap(
       children: [
         Chip(label: Text('Tag 1')),
         Chip(label: Text('Tag 2')),
         // ...
       ],
     )
     ```

    Setiap widget layout memiliki kegunaan khusus tergantung pada desain UI yang diinginkan dan tata letak yang dibutuhkan dalam aplikasi Flutter. Pemahaman yang baik tentang masing-masing widget ini membantu dalam membuat antarmuka pengguna yang responsif dan menarik.

3. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!

    Elemen input pada form yang digunakan dalam tugas ini adalah `TextFormField`. Elemen input ini dipilih karena memberikan antarmuka pengguna yang interaktif untuk mengumpulkan data masukan pengguna dengan berbagai jenis validasi.

    1. **TextFormField untuk Nama Makanan:**
   - **Alasan Penggunaan:** Digunakan untuk mengumpulkan nama makanan yang merupakan teks.
   - **Properti Tambahan:**
     - `decoration`: Menyediakan petunjuk dan dekorasi untuk input.
     - `onChanged`: Mengaktifkan fungsi yang dipanggil setiap kali nilai input berubah.
     - `validator`: Memberikan validasi untuk memastikan input tidak kosong.

    2. **TextFormField untuk Harga:**
    - **Alasan Penggunaan:** Digunakan untuk mengumpulkan harga makanan yang merupakan angka.
    - **Properti Tambahan:**
        - `decoration`: Menyediakan petunjuk dan dekorasi untuk input.
        - `onChanged`: Mengaktifkan fungsi yang dipanggil setiap kali nilai input berubah.
        - `validator`: Memberikan validasi untuk memastikan input tidak kosong dan merupakan angka.

    3. **TextFormField untuk Deskripsi:**
    - **Alasan Penggunaan:** Digunakan untuk mengumpulkan deskripsi makanan yang merupakan teks.
    - **Properti Tambahan:**
        - `decoration`: Menyediakan petunjuk dan dekorasi untuk input.
        - `onChanged`: Mengaktifkan fungsi yang dipanggil setiap kali nilai input berubah.
        - `validator`: Memberikan validasi untuk memastikan input tidak kosong.

4. **ElevatedButton untuk Menyimpan Data:**
    - **Alasan Penggunaan:** Digunakan untuk menyimpan data makanan ke dalam daftar dan menampilkan dialog konfirmasi.
    - **Properti Tambahan:**
        - `onPressed`: Menentukan fungsi yang dijalankan ketika tombol ditekan.

    **Catatan:**
    - Dalam kodingan, data yang diambil dari `TextFormField` disimpan dalam variabel `_name`, `_price`, dan `_description`.
    - Data tersebut kemudian digunakan untuk membuat objek `Product` yang ditambahkan ke dalam list `ProductList.products` saat tombol "Save" ditekan.
    - Masing-masing `TextFormField` memiliki validasi untuk memastikan bahwa input sesuai dengan persyaratan yang diinginkan.

    Penggunaan `TextFormField` memudahkan pengguna untuk memasukkan data dengan tampilan yang jelas dan memberikan kontrol validasi untuk memastikan bahwa data yang dimasukkan sesuai dengan format yang diharapkan.

4. Bagaimana penerapan clean architecture pada aplikasi Flutter?

    Clean Architecture adalah konsep arsitektur perangkat lunak yang bertujuan untuk memisahkan komponen-komponen inti aplikasi dari detail implementasi. Dalam konteks pengembangan aplikasi Flutter, penerapan Clean Architecture melibatkan pemisahan antara lapisan presentasi, bisnis, dan data. Berikut adalah cara penerapan Clean Architecture pada aplikasi Flutter:

    1. **Lapisan Presentasi (Presentation Layer):**
    - **Widget dan UI Logic:** Lapisan presentasi berisi widget Flutter dan logika tampilan (UI logic). Widget bertanggung jawab untuk menampilkan elemen UI, sedangkan logika tampilan mengatur interaksi dan pemrosesan data pada tingkat UI.
    - **BLoC (Business Logic Component):** BLoC digunakan untuk mengelola state dan logika bisnis aplikasi. BLoC membantu memisahkan logika bisnis dari tampilan dan memungkinkan pengujian unit.

    2. **Lapisan Bisnis (Domain Layer):**
    - **Entity:** Berisi objek bisnis atau entitas yang merepresentasikan konsep bisnis utama.
    - **Use Case (Interactors):** Mewakili aturan bisnis atau skenario penggunaan. Setiap use case menangani satu atau beberapa tugas bisnis spesifik.
    - **Repository Interface:** Menentukan kontrak antarmuka untuk pengambilan dan penyimpanan data tanpa menentukan implementasi.

    3. **Lapisan Data (Data Layer):**
    - **Repository Implementations:** Menyediakan implementasi dari antarmuka repository yang didefinisikan di lapisan bisnis. Repository bertanggung jawab untuk mengambil dan menyimpan data.
    - **Data Sources:** Menangani sumber data, seperti API, database, atau penyimpanan lokal. Data sources berkomunikasi dengan repository untuk menyediakan data.

    4. **Dependency Injection (DI):**
    - Gunakan Dependency Injection untuk memasukkan dependensi ke dalam komponen-komponen aplikasi. DI membantu dalam mencapai prinsip Dependency Inversion di Clean Architecture.
    - Contoh DI di Flutter dapat dilakukan menggunakan paket seperti `get_it`, `provider`, atau paket DI lainnya.

    5. **Pengujian (Testing):**
    - Pisahkan kode bisnis dari kode Flutter untuk memudahkan pengujian unit. Logika bisnis harus dapat diuji tanpa ketergantungan pada framework atau UI.
    - Gunakan tes unit untuk menguji logika bisnis dan tes widget untuk menguji komponen UI.

    6. **Model Entitas Bersih (Clean Entity Model):**
    - Pastikan bahwa entitas atau model yang ada di lapisan bisnis (domain) tidak memiliki ketergantungan pada framework atau detail implementasi tertentu.

    Contoh struktur proyek Flutter yang menerapkan Clean Architecture:

    ```
    lib/
    |-- presentation/
    |   |-- screens/
    |   |-- widgets/
    |   |-- blocs/
    |
    |-- domain/
    |   |-- entities/
    |   |-- usecases/
    |   |-- repositories/
    |
    |-- data/
    |   |-- repositories_impl/
    |   |-- data_sources/
    |
    |-- di/
    |
    |-- main.dart
    ```

    Penting untuk diingat bahwa penerapan Clean Architecture bisa bervariasi tergantung pada kebutuhan dan kompleksitas aplikasi. Tujuan utamanya adalah memisahkan konsep bisnis dari detail implementasi sehingga aplikasi menjadi lebih bersih, modular, dan mudah diuji.


5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)

    **Langkah-langkah Implementasi Checklist:**

    1. **Menambahkan Drawer Menu Untuk Navigasi:**
        - Tambahkan drawer_menu.dart ke dalam direktori widgets.
        - Impor drawer_menu.dart ke dalam menu.dart.
        - Tambahkan routing untuk MyHomePage dan ShopFormPage.
        - Hiasi drawer dengan drawer header dan routing.

    2. **Menambahkan Form dan Elemen Input:**
        - Buat file shoplist_form.dart di dalam direktori lib.
        - Gunakan widget Form sebagai wadah input field.
        - Gunakan TextFormField untuk input nama Makanan, harga, dan deskripsi.
        - Validasi input field dan tampilkan pesan error jika perlu.
        - Gunakan GlobalKey<FormState> untuk mengelola state dan validasi form.

    3. **Memunculkan Data:**
        - Implementasikan onPressed untuk tombol "Save".
        - Validasi form sebelum menampilkan dialog.
        - Tampilkan AlertDialog dengan data yang diinput.
        - Reset form setelah data disimpan.
        - Buat file baru bernama product_list.dart
        - Buat Model Makanan pada Shoplist_form.dart dan simpan pada list Makanan untuk ditampilkan
        - Buat Class baru bernama ProductListWidget untuk menampilkan list makanan dari hasil input
        - Setting data agar class ini dapat mengambil data dari Shoplist_form.dart dan buat widget baru pada ProductListWidget
        - Desain Sesuai Selera

    4. **Menambahkan Fitur Navigasi pada Tombol:**
        - Implementasikan navigasi menggunakan Navigator.push pada tombol "Tambah Makanan" di menu.dart, dan left_drawer.dart.
        - Gunakan MaterialPageRoute yang mencakup ShopFormPage.

    5. **Refactoring File:**
        - Pindahkan widget ShopItem dari menu.dart ke shop_card.dart di dalam direktori widgets.
        - Pindahkan file menu.dart dan shoplist_form.dart ke dalam folder screens.
        - Pastikan pemindahan dilakukan melalui IDE atau text editor Flutter untuk refactoring otomatis.


</details>