program JadwalHari;           // Nama program
uses crt;                     // Mengaktifkan fitur clrscr (clear screen)

type
  Jadwal = record             // Record untuk menyimpan satu jadwal
    hari,                     // Menyimpan nama hari
    matkul,                   // Menyimpan nama mata kuliah
    jam,                      // Menyimpan jam kuliah
    ruang : string;           // Menyimpan nama ruangan
  end;

var
  j : array[1..5] of Jadwal;  // Array untuk menyimpan 5 jadwal
  i : integer;                // Variabel perulangan
  cari : string;              // Menyimpan input hari yang dicari
  ada : boolean;              // Penanda apakah jadwal ditemukan atau tidak

procedure garis1;
begin
  writeln('-----------------------'); // Garis pemisah pendek
end;

procedure garis2;
begin
  writeln('------------------------------------------'); // Garis pemisah panjang
end;

procedure isi;
begin
  // Mengisi data jadwal hari Senin
  j[1].hari:='SENIN';
  j[1].matkul:='Dance Tiktok';
  j[1].jam:='08.00-10.00';
  j[1].ruang:='Studio Pacil';

  // Mengisi data jadwal hari Selasa
  j[2].hari:='SELASA';
  j[2].matkul:='Table Manner';
  j[2].jam:='09.00-11.00';
  j[2].ruang:='Kerajaan Pacil';

  // Mengisi data jadwal hari Rabu
  j[3].hari:='RABU';
  j[3].matkul:='Membantai Kalkulus';
  j[3].jam:='08.00-10.00';
  j[3].ruang:='Ruangan Pak Andri';

  // Mengisi data jadwal hari Kamis
  j[4].hari:='KAMIS';
  j[4].matkul:='MonkeyType';
  j[4].jam:='13.00-15.00';
  j[4].ruang:='Ruangan Pak Handrizal';

  // Mengisi data jadwal hari Jumat
  j[5].hari:='JUMAT';
  j[5].matkul:='Boxing';
  j[5].jam:='09.00-11.00';
  j[5].ruang:='Pendopo';
end;

procedure cariHari;
begin
  clrscr;   // Membersihkan layar

  writeln(' TUMBEN NYARIIN ?? MAU TAU JADWALL YEA :( )');
  garis2;   // Menampilkan garis pemisah

  ada := false;  // Awalnya diasumsikan jadwal belum ditemukan

  write('Mau Tau Jadwal Kapan !! : ');
  readln(cari);  // Input hari dari user

  cari := UpCase(cari); // Mengubah input ke huruf besar

  // Perulangan untuk mengecek semua data jadwal
  for i := 1 to 5 do
    if j[i].hari = cari then  // Jika hari cocok
    begin
      garis1;   // Menampilkan garis
      writeln(j[i].matkul,' | ',j[i].jam,' | ',j[i].ruang); // Menampilkan jadwal
      ada := true;  // Menandakan jadwal ditemukan
    end;

  // Jika setelah dicek tidak ada jadwal yang cocok
  if not ada then
    writeln('Tidak ada jadwal');

end;

begin
  isi;        // Memanggil prosedur untuk mengisi data jadwal
  cariHari;   // Memanggil prosedur untuk mencari jadwal berdasarkan hari
end.
