#!/bin/bash
echo "## login Aplikasi ##"
echo -n "masukkan nama pengguna:"
read nama
echo -n "masukkan password:"
read pass
clear;
echo "## aplikasi menghitung luas dan keliling bangun datar ##"
echo "Selamat Datang $nama "
luas(){
	clear;
	echo "masuk di menu menghitung luas bangun datar"
	select pil in persegi persegipanjang segitiga trepesium jajargenjang keluar
	do
		if [ $pil == "persegi" ]
		then
			clear;
			echo "masuk di menu menghitung luas persegi"
			echo -n "masukkan sisi:"
			read s
			clear;
			echo "sisi = $s"
			let luasp=$s*$s
			echo "luasnya = $luasp"
		elif [ $pil == "persegipanjang" ]
		then
			clear;
			echo "masuk di menu menghitung luas persegi panjang"
			echo -n "masukkan panjang :"
			read p
			echo -n "masukkan lebar:"
			read l
			clear;
			echo "panjang = $p"
			echo "lebar = $l"
			let luaspp=$p*$l
			echo "luasnya = $luaspp"
		elif [ $pil == "segitiga" ]
		then
			clear;
			echo "masuk di menu menghitung luas segitiga"
			echo -n "masukkan alas:"
			read a
			echo -n "masukkan tinggi:"
			read t
			clear;
			echo "alas = $a"
			echo "tinggi = $t"
			echo -n "luas segitiga = "
			echo "scale=2; $a * $t / 2 " |bc
		elif [ $pil == "trepesium" ]
		then
			clear;
			echo "masuk di menu menghitung luas trepesium" 
			echo -n "masukkan alas atas:"
			read b1
			echo -n "masukkan alas bawah:"
			read b2
			echo -n "masukkan tinggi:"
			read t
			clear;
			echo "alas atas : $b1"
			echo "alas bawah : $b2"
			echo "tinggi : $t"
			echo -n "luas trepesium = "
			echo "scale=2; ($b1 + $b2) * $t / 2" |bc
		elif [ $pil == "jajargenjang" ]
		then
			clear;
			echo "masuk di menu menghitung luas jajargenjang"
			echo -n "masukkan alas:"
			read a
			echo -n "masukkan tinggi:"
			read t
			clear;
			echo "alas : $a"
			echo "tinggi : $t"
			let luasjg = $a*$t
			echo "luas jajargenjang = $luasjg"
		elif [ $pil == "keluar" ]
		then
			break;
		else
			echo "perintah tidak ada!"
		fi
		echo "Masuk di menu menghitung luas bangundatar"
		echo "1) persegi"
		echo "2) persegi panjang"
		echo "3) segitiga"
		echo "4) trepesium"
		echo "5) jajargenjang"
		echo "6) keluar"
	done
}
keliling(){
	clear;
	echo "masuk di menu menghitung keliling bangun datar"
	select pil in persegi persegipanjang segitiga trepesium jajargenjang keluar
	do
		if [ $pil == "persegi" ]
		then
			clear;
			echo "masuk di menu menghitung keliling persegi"
			echo -n "masukkan sisi:"
			read s
			clear;
			echo "sisi = $s"
			let kllp=4*$s
			echo "kelilingnya = $kllp"
		elif [ $pil == "persegipanjang" ]
		then
			clear;
			echo "masuk di menu menghitung keliling persegi panjang"
			echo -n "masukkan panjang :"
			read p
			echo -n "masukkan lebar:"
			read l
			clear;
			echo "panjang = $p"
			echo "lebar = $l"
			let kllpp=$p*2+2*$l
			echo "kelilingnya = $kllpp"
		elif [ $pil == "segitiga" ]
		then
			clear;
			echo "masuk di menu menghitung keliling segitiga"
			echo -n "masukkan alas:"
			read a
			echo -n "masukkan sisimiring kanan:"
			read skn
			echo -n "masukkan sisimiring kiri:"
			read skr
			clear;
			echo "alas = $a"
			echo "sisi kanan = $skn"
			echo "sisi kiri = $skr"
			let klls=$a+$skn+$skr
			echo "keliling segitiga = $klls"
		elif [ $pil == "trepesium" ]
		then
			clear;
			echo "masuk di menu menghitung keliling trepesium" 
			echo -n "masukkan alas atas:"
			read b1
			echo -n "masukkan alas bawah:"
			read b2
			echo -n "masukkan sisimiring kanan:"
			read skn
			echo -n "masukkan sisimiring kiri:"
			read skr
			clear;
			echo "alas atas : $b1"
			echo "alas bawah : $b2"
			echo "sisi kanan = $skn"
			echo "sisi kiri = $skr"
			let klltr=$b1+$b2+$skn+$skr
			echo "keliling trepesium = $klltr"
		elif [ $pil == "jajargenjang" ]
		then
			clear;
			echo "masuk di menu menghitung keliling jajargenjang"
			echo -n "masukkan alas:"
			read a
			echo -n "masukkan sisimiring:"
			read sm
			clear;
			echo "alas : $a"
			echo "sisimiring : $sm"
			let klljg = $a*2+2*$sm
			echo "luas jajargenjang = $klljg"
		elif [ $pil == "keluar" ]
		then
			break;
		else
			echo "perintah tidak ada!"
		fi
		echo "Masuk di menu menghitung keliling bangundatar"
		echo "1) persegi"
		echo "2) persegi panjang"
		echo "3) segitiga"
		echo "4) trepesium"
		echo "5) jajargenjang"
		echo "6) keluar"
	done
}
select pilihan in luas keliling keluar
do
	if [ $pilihan == "luas" ]
	then
		luas
	elif [ $pilihan == "keliling" ]
	then
		keliling
	elif [ $pilihan == "keluar" ]
	then
		break;
	else
		echo "perintah tidak ditemukan"
	fi
	echo "## aplikasi menghitung luas dan keliling bangun datar ##"
	echo "Selamat Datang $nama "
	echo "1) luas"
	echo "2) keliling"
	echo "3) keluar"
done
