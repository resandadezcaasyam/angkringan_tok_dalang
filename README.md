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


<details>

<summary> Soal Tugas 9 </summary>

# Tugas 9: Integrasi Layanan Web Django dengan Aplikasi Flutter

Pertanyaan: 

1. Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

    Kita bisa melakukan pengambilan data JSON tanpa membuat model terlebih dahulu. Cara ini memberikan fleksibilitas yang signifikan dalam mengelola data yang dinamis atau tidak terstruktur. Pendekatan ini sangat berguna untuk program flutter sederhana atau aplikasi yang tidak memerlukan struktur data kompleks, karena memungkinkan akses langsung tanpa perlu mendefinisikan struktur terlebih dahulu. Meskipun kemudahan implementasi dan kecepatan dapat menjadi keuntungan, risiko terkait validasi data dan konsistensi mungkin menjadi tantangan, terutama dalam konteks aplikasi besar.


    Sebaliknya, menggunakan model untuk pengambilan data JSON membawa manfaat validasi data yang signifikan. Dengan mendefinisikan model, kita dapat menetapkan tipe data, keterbatasan, dan validasi lainnya untuk memastikan integritas data. Pendekatan ini lebih cocok untuk proyek skala besar atau yang menuntut integritas data tinggi, karena membuat kode lebih mudah dibaca, dipelihara, dan memberikan struktur yang memudahkan pengelolaan dan ekspansi data. Sebagai penilaian umum, pemilihan antara keduanya harus disesuaikan dengan kebutuhan spesifik proyek, dengan mempertimbangkan kompleksitas, ukuran, dan tingkat integritas data yang dibutuhkan.

2. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.

     CookieRequest dapat disebut sebagai sebuah mekanisme atau kelas yang mengelola operasi terkait cookie dalam permintaan HTTP di aplikasi Flutter. Fungsi umumnya melibatkan manajemen cookie, pemeliharaan sesi, keamanan dan autentikasi, serta penyesuaian preferensi pengguna. Instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter untuk memastikan konsistensi data, efisiensi dalam kode, kemudahan pemeliharaan, penerapan kebijakan keamanan yang konsisten, serta pengujian dan debugging yang lebih mudah.

3. Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.
    1. Menambahkan dependensi http ke proyek; dependensi ini digunakan untuk bertukar HTTP request.
    2. Membuat model sesuai dengan respons dari data yang berasal dari web service tersebut.
    3. Membuat http request ke web service menggunakan dependensi http.
    4. Mengkonversikan objek yang didapatkan dari web service ke model yang telah kita buat di langkah kedua.
    5. Menampilkan data yang telah dikonversi ke aplikasi dengan FutureBuilder.
    6. JSON difetch ke sesuai urlnya dengan header json
    7. JSON yang telah difetch akan disesuaikan bodynya menuju model Item sesuai dengan properti-properti yang ada.
4. Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
    1. Pengguna memasukkan username dan password dengan mengisi dua TextField yang ada pada halaman awal flutter.
    2. Aplikasi kemudian membuat permintaan HTTP POST ke fugnsi login Django pada aplikasi `authentication` menggunakan CookieRequest. Data username dan password dikirimkan sebagai bagian dari body request.
    3. Django mengelola permintaan login dengan memverifikasi kredensial username dan password untuk menentukan kevalidan. Setelahnya, Django mengirimkan respons yang kemudian diakses dan diperiksa oleh aplikasi Flutter. Jika login sukses, ditandai dengan request.loggedIn bernilai true, aplikasi akan melakukan navigasi ke halaman MyHomePage dan menampilkan pesan selamat datang. Di sisi lain, jika proses login mengalami kegagalan, aplikasi akan menampilkan pesan kesalahan sebagai respons.
5. Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.
    * AlertDialog : untuk menampilkan dialog peringatan atau pesan ke pengguna.
    * TextButton : untuk menampilkan tombol dengan teks.
    * TextField : untuk menerima input teks dari pengguna.
    * InputDecoration : untuk mendefinisikan penampilan dan gaya dari TextField.
    * SizedBox : untuk memberikan jarak antara dua widget.
    * ElevatedButton : untuk menampilkan tombol.
    * Navigator : untuk mengelola stack rute dalam aplikasi.
    * MaterialPageRoute : untuk menyediakan efek transisi saat berpindah antar halaman.
    * CircularProgressIndicator : untuk menampilkan indikator loading.
    * ListView.builder : untuk membuat list yang efisien dengan item yang di-build saat mereka diputar ke dalam tampilan.
    * FutureBuilder : untuk membuat widget berdasarkan hasil Future, pada tugas ini dugunakan untuk membangun ListView berdasarkan hasil dari fetchItem().
    * Provider : untuk menyediakan objek yang dapat dibaca oleh widget lain yang berada di bawahnya di widget tree, pada tugas ini digunakan untuk menyediakan instance CookieRequest ke widget lain.
    * LoginPage : widget kustom untuk menampilkan halaman login.
    * ItemPage: widget kuston umtuk menampilkan halaman daftar item.
    * ItemInformation: widget kustom untuk menampilkan halaman informasi item.
    * ScaffoldMessenger : untuk menampilkan SnackBar
6.  Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
    1. Membuat halaman login pada proyek tugas Flutter.

        Pertama-tama, saya melakukan instalasi package `provider` dan `pbp_django_auth` kemudian pada `main.dart` saya menyediakan CookieRequest library ke semua child widgets dengan menggunakan Provider. Kemudian saya membuat berkas `login.dart` yang berisi kode berikut.


        ```dart
        import 'package:angkringan_tok_dalang/screens/menu.dart';
        import 'package:flutter/material.dart';
        import 'package:pbp_django_auth/pbp_django_auth.dart';
        import 'package:provider/provider.dart';

        void main() {
            runApp(const LoginApp());
        }

        class LoginApp extends StatelessWidget {
        const LoginApp({super.key});

        @override
        Widget build(BuildContext context) {
            return MaterialApp(
                title: 'Login',
                theme: ThemeData(
                    primarySwatch: Colors.blue,
            ),
            home: const LoginPage(),
            );
            }
        }

        class LoginPage extends StatefulWidget {
            const LoginPage({super.key});

            @override
            _LoginPageState createState() => _LoginPageState();
        }

        class _LoginPageState extends State<LoginPage> {
            final TextEditingController _usernameController = TextEditingController();
            final TextEditingController _passwordController = TextEditingController();

            @override
            Widget build(BuildContext context) {
                final request = context.watch<CookieRequest>();
                return Scaffold(
                    appBar: AppBar(
                        title: const Text('Login'),
                    ),
                    body: Container(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                TextField(
                                    controller: _usernameController,
                                    decoration: const InputDecoration(
                                        labelText: 'Username',
                                    ),
                                ),
                                const SizedBox(height: 12.0),
                                TextField(
                                    controller: _passwordController,
                                    decoration: const InputDecoration(
                                        labelText: 'Password',
                                    ),
                                    obscureText: true,
                                ),
                                const SizedBox(height: 24.0),
                                ElevatedButton(
                                    onPressed: () async {
                                        String username = _usernameController.text;
                                        String password = _passwordController.text;

                                        // Cek kredensial
                                        // Untuk menyambungkan Android emulator dengan Django pada localhost,
                                        // gunakan URL http://10.0.2.2/
                                        final response = await request.login("https://resanda-dezca-tugas.pbp.cs.ui.ac.id/auth/login/", {
                                        'username': username,
                                        'password': password,
                                        });
        

                                        if (request.loggedIn) {
                                            String message = response['message'];
                                            String uname = response['username'];
                                            // ignore: use_build_context_synchronously
                                            Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(builder: (context) => MyHomePage()),
                                            );
                                            ScaffoldMessenger.of(context)
                                                ..hideCurrentSnackBar()
                                                ..showSnackBar(
                                                    SnackBar(content: Text("$message Selamat datang, $uname.")));
                                            } else {
                                            // ignore: use_build_context_synchronously
                                            showDialog(
                                                context: context,
                                                builder: (context) => AlertDialog(
                                                    title: const Text('Login Gagal'),
                                                    content:
                                                        Text(response['message']),
                                                    actions: [
                                                        TextButton(
                                                            child: const Text('OK'),
                                                            onPressed: () {
                                                                Navigator.pop(context);
                                                            },
                                                        ),
                                                    ],
                                                ),
                                            );
                                        }
                                    },
                                    child: const Text('Login'),
                                ),
                            ],
                        ),
                    ),
                );
            }
        }
        ```



        Kemudian saya mengubah home pada `main.dart` menjadi `home: LoginPage()` dan menambahkan fitur `logout` dan melakukan push replacement ke loginPage setelah logout. 

    2. Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.
        * Pertama-tama, saya membuat aplikasi django baru bernama `authentication` dan mengintall library `dango-cors-headers` dan menambahkan middleware nya. Kemudian saya melakukan konfigurasi terkait Cookie dan corsheaders pada `settings.py`.
        * Kemudian saya membuat fungsi login dan logout pada `authentication/views.py` dan memanfaatkan `@csrtf_excempt` pada setiap fungsinya serta routing terhadap `urls.py`. Pengiriman data login dan logout dilakukan dengan memanfaatkan JsonResponse ke Flutter.
    3. Membuat model kustom sesuai dengan proyek aplikasi Django.

        Dalam membaut model kustom, saya memanfaatkan platform `Quicktype` yang dapat langsung melakukan konfigurasi model berdasarkan data json. Kemudian hasil konfigurasi model tersebut saya masukkan ke file `Item.dart` pada direktori `lib/models`.

    4.  Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy.
        * Sebelum membuat halaman daftar item, saya menginstall flutter http dan menambahkan `&lt;uses-permission android:name="android.permission.INTERNET" />` pada berkas `android/app/src/main/AndroidManifest.xml`.
        * Kemudian saya membuat file dart baru bernama `list_item.dart`. Berikut adalah kodenya

            ```dart
            import 'package:flutter/material.dart';
            // import 'package:http/http.dart' as http;
            // import 'dart:convert';
            import 'package:angkringan_tok_dalang/models/item.dart';
            import 'package:angkringan_tok_dalang/screens/item_information.dart';

            import 'package:angkringan_tok_dalang/widgets/left_drawer.dart';
            import 'package:pbp_django_auth/pbp_django_auth.dart';
            import 'package:provider/provider.dart';

            class ItemPage extends StatefulWidget {
                const ItemPage({Key? key}) : super(key: key);

                @override
                _ItemPageState createState() => _ItemPageState();
            }

            class _ItemPageState extends State<ItemPage> {
                Future<List<Item>> fetchItem() async {
                final request = context.watch<CookieRequest>();
                var response = await request.get('https://resanda-dezca-tugas.pbp.cs.ui.ac.id/get-item/');
                // melakukan decode response menjadi bentuk json
                var data = response;

                // melakukan konversi data json menjadi object Item
                List<Item> list_item = [];
                for (var d in data) {
                    if (d != null) {
                        list_item.add(Item.fromJson(d));
                    }
                }
                return list_item;
            }

            @override
            Widget build(BuildContext context) {
                return Scaffold(
                    appBar: AppBar(
                    title: const Text('Item'),
                    backgroundColor: Colors.indigo,
                    foregroundColor: Colors.white,
                    ),
                    drawer: const LeftDrawer(),
                    body: FutureBuilder(
                        future: fetchItem(),
                        builder: (context, AsyncSnapshot snapshot) {
                            if (snapshot.data == null) {
                                return const Center(child: CircularProgressIndicator());
                            } else {
                                if (!snapshot.hasData) {
                                return const Column(
                                    children: [
                                    Text(
                                        "Tidak ada data item.",
                                        style:
                                            TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                                    ),
                                    SizedBox(height: 8),
                                    ],
                                );
                            } else {
                                return ListView.builder(
                                    itemCount: snapshot.data!.length,
                                    itemBuilder: (_, index) => InkWell(
                                      onTap: () {
                                        // Navigasi ke halaman ItemInformations dengan membawa data item
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => ItemInformation(
                                              item: snapshot.data![index],
                                            ),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                                        padding: const EdgeInsets.all(20.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "${snapshot.data![index].fields.name}",
                                              style: const TextStyle(
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(height: 10),
                                            Text("${snapshot.data![index].fields.amount}"),
                                            const SizedBox(height: 10),
                                            Text("${snapshot.data![index].fields.description}")
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                }
                            }
                        }));
                }
            }
            ```

        * Kemudian saya menambahkan page daftar item ini ke left drawer pada `left_drawer.dart` dan mengaktifkan tombol Daftar Item pada main.dart agar melakukan navigasi ke halaman daftar item.
        * Kemudian, saya melakukan integrasi form pada Flutter dengan Django app dengan menambahkan fungsi yang menerima data json dari form flutter dan membentuk objek Item berdasarkan data yang dikirim. Kemudian memanfaatkan `CookieRequest` pada form flutter yang sudah dibuat sebelumnya dan menambahkan asynchronous pada button form. 
    5.  Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.
        * Pertama-tama, saya membuat file baru bernama `item_information.dart` dan membuat page `ItemInformation` yang menampilkan atribut dari setiap item.
        * Kemudian, saya melakukan navigasi pada `list_item.dart` dengan memanfaatkan `Navigator.push()` agar ketika item pada list diclick, akan keluar page informasi item yang diclick.




</details>