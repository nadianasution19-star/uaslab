program JadwalHari;
uses crt;

type
  Jadwal = record
    hari, matkul, jam, ruang : string;
  end;

var
  j : array[1..5] of Jadwal;
  i : integer;
  cari : string;
  ada : boolean;

procedure garis1;
begin
  writeln('-----------------------');
end;

procedure garis2;
begin
  writeln('------------------------------------------');
end;

procedure isi;
begin
  j[1].hari:='SENIN';   
  j[1].matkul:='Dance Tiktok';       
  j[1].jam:='08-10';   
  j[1].ruang:='Studio Pacil';

  j[2].hari:='SELASA';  
  j[2].matkul:='Table Manner';       
  j[2].jam:='09-11';   
  j[2].ruang:='Kerajaan Pacil';

  j[3].hari:='RABU';    
  j[3].matkul:='Membantai Kalkulus'; 
  j[3].jam:='08-10';   
  j[3].ruang:='Ruangan Pak Andri';

  j[4].hari:='KAMIS';   
  j[4].matkul:='MonkeyType';         
  j[4].jam:='13-15';   
  j[4].ruang:='Ruangan Pak Handrizal';

  j[5].hari:='JUMAT';   
  j[5].matkul:='Boxing';             
  j[5].jam:='09-11';   
  j[5].ruang:='Pendopo';
end;

procedure cariHari;
begin
  clrscr;
  writeln(' TUMBEN NYARIIN ?? MAU TAU JADWALL YEA :( )');
  garis2;

  ada := false;
  write('Mau Tau Jadwal Kapan !! : ');
  readln(cari);

  cari := UpCase(cari);   


  for i := 1 to 5 do
    if j[i].hari = cari then
    begin
      garis1;
      writeln(j[i].matkul,' | ',j[i].jam,' | ',j[i].ruang);
      ada := true;
    end;

  if not ada then
    writeln('Tidak ada jadwal');

  
end;

begin
  isi;
  cariHari;
end.
