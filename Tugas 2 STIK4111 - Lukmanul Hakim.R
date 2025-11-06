## TUGAS 2
# NAMA : LUKMANUL HAKIM
# NIM : 053834403

##SOAL 1A
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

##SOAL 1B
# Penjumlahan elemen demi elemen
penjumlahan <- M1 + M2
print("--- Hasil Penjumlahan (M1 + M2) ---")
print(penjumlahan)

# Perkalian elemen demi elemen
perkalian <- M1 * M2
print("--- Hasil Perkalian (M1 * M2) ---")
print(perkalian)

##SOAL 2
# Data dari tabel
Nilai <- c(60, 67, 69, 72, 74, 77, 80, 83, 87, 70)
Frekuensi <- c(3, 5, 6, 8, 9, 2, 6, 8, 1, 4)

##SOAL 2A Scatter Plot (Grafik Sebaran) 
plot(
  Nilai,
  Frekuensi,
  main = "Scatter Plot Nilai vs Frekuensi",
  xlab = "Nilai Mahasiswa",
  ylab = "Frekuensi",
  pch = 19,  # Tipe titik (bulat penuh)
  col = "blue"
)

##SOAL 2B Pie Chart dan Boxplot

# 1. Membuat Pie Chart dari Frekuensi
# Buat label persentase untuk pie chart
persen <- round(Frekuensi / sum(Frekuensi) * 100, 1)
label_pie <- paste(Nilai, " (", persen, "%)", sep = "")

pie(
  Frekuensi,
  labels = label_pie,
  main = "Pie Chart Distribusi Frekuensi Nilai",
  col = rainbow(length(Nilai)) # Memberi warna-warni
)

# 2. Membuat Boxplot dari Nilai
# Untuk membuat boxplot yang akurat, kita harus 'menguraikan' data
# berdasarkan frekuensinya menggunakan fungsi rep() (repeat)
data_nilai_utuh <- rep(Nilai, Frekuensi)

boxplot(
  data_nilai_utuh,
  main = "Boxplot Nilai Mahasiswa",
  ylab = "Nilai",
  col = "lightblue"
)

##SOAL 3
# 1. Menentukan lokasi file (contoh di drive B:, folder UT)
lokasi_file <- "B:/UT/Nilai_Komputer.txt"

# 2. Membaca data dari file .txt
#    header = TRUE digunakan karena baris pertama file adalah nama kolom
data_mahasiswa <- read.table(lokasi_file, header = TRUE)

# 3. Menampilkan isi data yang telah dibaca ke konsol
print(data_mahasiswa)
