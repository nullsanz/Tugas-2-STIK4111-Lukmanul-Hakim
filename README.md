# TUGAS TUTORIAL ONLINE 2 (STIK4111)

| | |
| :--- | :--- |
| **NAMA** | **LUKMANUL HAKIM** |
| **NIM** | **053834403** |
| **PROGRAM STUDI** | S1 - SISTEM INFORMASI |
| **FAKULTAS** | FAKULTAS SAINS DAN TEKNOLOGI |
| **UPBJJ/UT DAERAH** | 21/JAKARTA |
| **NAMA MATA KULIAH** | DASAR PEMROGRAMAN R / STIK4111 |

---

## 🔢 Pengerjaan Soal 1: Matriks

### a. Membuat Matriks M1 dan M2
**Kode R:**
```R
# 1. Buat matriks M awal 3x3
M <- matrix(c(10, 2, 4, 5, 6, 2, 6, 8, 7), nrow = 3, ncol = 3)
print("--- Matriks M (Asli) ---")
print(M)

# 2. Buat vektor kolom baru
kolom_baru <- c(7, 4, 5)

# 3. Buat M1 (tambah kolom di akhir/ke-4)
M1 <- cbind(M, kolom_baru)
print("--- Matriks M1 (Tambah kolom ke-4) ---")
print(M1)

# 4. Buat M2 (tambah kolom di awal/ke-1)
M2 <- cbind(kolom_baru, M)
print("--- Matriks M2 (Tambah kolom ke-1) ---")
print(M2)
````

### b. Perkalian dan Penjumlahan Elemen

**Kode R:**

```r
# Penjumlahan elemen demi elemen
penjumlahan <- M1 + M2
print("--- Hasil Penjumlahan (M1 + M2) ---")
print(penjumlahan)

# Perkalian elemen demi elemen
perkalian <- M1 * M2
print("--- Hasil Perkalian (M1 * M2) ---")
print(perkalian)
```

### Deskripsi Output (Screenshot Soal 1)

Output RStudio menampilkan pembuatan M, M1, M2, serta hasil 'penjumlahan' dan 'perkalian'.

<img width="1919" height="1079" alt="T2_Soal_1_Output" src="https://github.com/user-attachments/assets/84d8b207-da7d-4b3e-a51e-6b049474b19e" />

-----

## 📊 Pengerjaan Soal 2: Grafik Nilai

### Kode R (Inisialisasi Data):

```r
# Data dari tabel
Nilai <- c(60, 67, 69, 72, 74, 77, 80, 83, 87, 70)
Frekuensi <- c(3, 5, 6, 8, 9, 2, 6, 8, 1, 4)
```

### a. Scatter Plot (Grafik Sebaran)

**Kode R:**

```r
plot(
  Nilai,
  Frekuensi,
  main = "Scatter Plot Nilai vs Frekuensi",
  xlab = "Nilai Mahasiswa",
  ylab = "Frekuensi",
  pch = 19, # Tipe titik (bulat penuh)
  col = "blue"
)
```

**Deskripsi Output (Screenshot):**
Grafik scatter plot yang menunjukkan sebaran data Nilai (sumbu-X) terhadap Frekuensi (sumbu-Y).

<img width="1377" height="775" alt="T2_Soal_2a_Scatter" src="https://github.com/user-attachments/assets/2fdfa6fe-9822-4a2b-84d0-3baa40adcaca" />

-----

### b. Pie Chart dan Boxplot

**Kode R:**

```r
# 1. Membuat Pie Chart dari Frekuensi
persen <- round(Frekuensi / sum(Frekuensi) * 100, 1)
label_pie <- paste(Nilai, " (", persen, "%)", sep = "")

pie(
  Frekuensi,
  labels = label_pie,
  main = "Pie Chart Distribusi Frekuensi Nilai",
  col = rainbow(length(Nilai)) # Memberi warna-warni
)

# 2. Membuat Boxplot dari Nilai
# Untuk membuat boxplot yang akurat, data diuraikan berdasarkan frekuensinya
data_nilai_utuh <- rep(Nilai, Frekuensi)

boxplot(
  data_nilai_utuh,
  main = "Boxplot Nilai Mahasiswa",
  ylab = "Nilai",
  col = "lightblue"
)
```

**Deskripsi Output (Screenshot Pie Chart):**
Diagram lingkaran yang terbagi menjadi 10 irisan sesuai distribusi frekuensi nilai.

<img width="1377" height="774" alt="T2_Soal_2b_Pie" src="https://github.com/user-attachments/assets/139ca2d4-8d8f-4a8b-8f98-6f3b61eee3f8" />

**Deskripsi Output (Screenshot Boxplot):**
Diagram kotak vertikal yang menunjukkan ringkasan statistik dari ke-52 data nilai mahasiswa.

<img width="1919" height="1079" alt="T2_Soal_2b_Boxplot" src="https://github.com/user-attachments/assets/4b372860-2fdc-4d55-b6bd-a859f75b50af" />

-----

### d. Interpretasi Berdasarkan Hasil Grafik

  * **Scatter Plot:** Tidak menunjukkan korelasi linier yang kuat. Terlihat bahwa **nilai 74** memiliki frekuensi tertinggi (9 mahasiswa), sedangkan **nilai 87** memiliki frekuensi terendah (1 mahasiswa).
  * **Pie Chart:** Secara visual memperjelas distribusi. Irisan untuk **nilai 74 (17.3%)** adalah yang terbesar, menunjukkan ini adalah nilai paling umum. Diikuti oleh **nilai 72 dan 83 (keduanya 15.4%)**.
  * **Boxplot:** Memberikan ringkasan statistik dari 52 mahasiswa.
      * **Median (garis tengah):** Berada di sekitar nilai 73, yang berarti 50% mahasiswa mendapat nilai di atas 73.
      * **Kotak (IQR):** 50% mahasiswa (bagian tengah) memiliki nilai antara Kuartil 1 (sekitar 69) dan Kuartil 3 (sekitar 80).
      * **Kumis (Whiskers):** Menunjukkan rentang nilai keseluruhan dari 60 hingga 87. Tidak terlihat adanya data pencilan (*outlier*).

-----

## 📂 Pengerjaan Soal 3: Membaca Data Eksternal

### a. Pembuatan file Nilai\_Komputer.txt

Data nilai mahasiswa disimpan ke dalam file `Nilai_Komputer.txt` menggunakan Notepad, berlokasi di `B:\UT\`.

**Deskripsi Output (Screenshot Notepad):**
Isi dari file `Nilai_Komputer.txt` yang sudah diformat dengan benar.

<img width="602" height="481" alt="T2_Soal_3a_Notepad" src="https://github.com/user-attachments/assets/07a99bed-fe6a-4415-9640-3833f48322ce" />

-----

### b. Perintah R untuk Memanggil Data

**Kode R:**

```r
# 1. Menentukan lokasi file (contoh di drive B:, folder UT)
lokasi_file <- "B:/UT/Nilai_Komputer.txt"

# 2. Membaca data dari file .txt
#    header = TRUE digunakan karena baris pertama file adalah nama kolom
data_mahasiswa <- read.table(lokasi_file, header = TRUE)

# 3. Menampilkan isi data yang telah dibaca ke konsol
print(data_mahasiswa)
```


**Deskripsi Output (Screenshot RStudio):**

Hasil eksekusi di RStudio, menunjukkan variabel `data_mahasiswa` berhasil dibuat dan datanya tercetak di konsol.

<img width="1919" height="1079" alt="T2_Soal_3b_RStudio" src="https://github.com/user-attachments/assets/fde7f01d-c08a-4b86-886a-58a13f1f89d9" />

```
```
