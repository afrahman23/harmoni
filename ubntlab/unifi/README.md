### Pengukuran UniFi AC HD (UAP-AC-HD)
Berikut eksperimen kekuatan sinyal *Wi-Fi 2,5GHz* tipe *Unifi AC HD* terhadap kemampuan paket data yang dikirim.

***Problem***: Paket data loss pada kekuatan sinyal berapa?

***Kegunaan***: Untuk menentukan berapa titik Access Point yang harus dipasang di ruangan Indoor suatu kantor.

***Disclaimer***: 
+ Eksperimen ini masih dalam pengembangan.  
+ Faktor lain tidak diperhitungkan, selain variable yang disebutkan di Pengujian. 


## Persiapan
1. *Ubiquiti* tipe UAP-AC-HD GigE PoE (Dual Band 2,4GHz/5GHz) sebagai Wireless Access Point [https://store.ui.com/us/en/products/uap-ac-hd](https://store.ui.com/us/en/products/uap-ac-hd)

2. Laptop *Windows 10* dengan tool sofware;
   1. *Netspot* untuk mengukur kekuatan sinyal [https://www.netspotapp.com/](https://www.netspotapp.com/)
    2. *Bandwidth Test v0.1* (RouterOS) [https://mt.lv/btest](https://mt.lv/btest)
	3. *Matplotlib* [https://matplotlib.org/](https://matplotlib.org/)

3.  Mikrotik *RB750hEX* sebagai Router Access Point. [https://mikrotik.com/product/RB750Gr3](https://mikrotik.com/product/RB750Gr3)


## Pengujian
Perbandingan antara jarak jangkaun, kekuatan sinyal,dan kecepatan WiFi.
 
Ada 2 variable yang akan diukur berdasarkan parameter jarak jangkauan
1. Kekuatan sinyal (dBm) > 2.4GHz
2. Speed Througput capacity uplink dan downlink (TX/RX Mbps) > batasan Bandwidth  : 10 Mbps 


Jarak Jangkauan
antara Access Point (Pemancar) dan Laptop (Penerima), ada 8 titik posisi jarak penerima dari pemancar accses point (dalam meter), sbb;

0, 3, 7, 20 30, 35, 40, 45 

# pengaruh jarak terhadap kekuatan sinyal

> X = Jarak (*meter*),
> Y = Signal Strenght (*dBm*)


<img title="rxsignal" alt="signal" src="https://github.com/afrahman23/myproject/blob/main/ubntlab/unifi/rxsignal.png">

<img title="txsignal" alt="signal" src="https://github.com/afrahman23/myproject/blob/main/ubntlab/unifi/txsignal.png">

# pengaruh kekuatan sinyal pada speed uplink dan downlink

> X = Jarak (*meter*),
> Y = Kecepatan Bandwidth (*Mbps*)

<img title="rxspeed" alt="speed" src="https://github.com/afrahman23/myproject/blob/main/ubntlab/unifi/rxspeed.png">

<img title="txspeed" alt="speed" src="https://github.com/afrahman23/myproject/blob/main/ubntlab/unifi/txspeed.png">


## Kesimpulan
Secara umum kita sudah mengetahui prinsip bahwa semakin jauh jarak dari Access Point, semakin melemah sinyal yang diterima Laptop.  Pengujian speed hampir menghasilkan pola sama, dimana dalam grafik yang ditunjukan semakin jauh jarak dari Access Point, semakin menurunkan kemampuan Througput capacity.

Lalu, saat sinyal menghilang ketika jarak sudah diatas 45 meter, pengukuran Througput capacity tidak dapat dilakukan karena tidak ada sinyal, paket data tidak dapat dilewatkan.  

Yang menarik, ketika jarak maju mendekati maksimal 40 meter dari Access Point, saat mendapatkan sinyal terlemah di kisaran -63dBm,  paket data masih bisa lewat dengan speed yang dipertahankan, dimana didapatkan kembali Througput capacity maksimal di 10Mbps. 

Ini yang bisa saya katakan kelebihan dari perangkat brand Ubiquiti Unifi UAP-AC-HD, 
setara dengan nilai harganya kisaran $349 atau setara 6 juta.












