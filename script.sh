#! /usr/bin/bash
# 1. Bulundugumuz klasorde "app.js" dosyasi varsa adini "main.js" olarak degistiren, yoksa main.js dosyasi olusturan, yapilan islemlerle ilgili bilgi mesajlarini ekrana yazdiran bir script yaziniz.

for filename in $(ls)
do
ext=${filename##*\.}
case "$ext" in
js) if [ "$filename" == "app.js" ]
then
mv $filename "main.js"
echo "app.js main.js olarak degistirildi"
break
fi
;;
*) touch "main.js"
echo "yeni main.js dosyasi olusturuldu"
break
;;
esac
done

# 2. Kullanicidan alinan iki sayiyi toplayan bir fonksiyon ve sonucu ekranda gosteren bir script yaziniz. 

sum (){
read -p "bir sayi giriniz: " BIRINCISAYI 
read -p "bir sayi daha giriniz: " IKINCISAYI
(( sum=$BIRINCISAYI + $IKINCISAYI))
return sum
 }
sum
echo " Iki sayinin toplami: $sum"

# 3. Bir klasorde bulunan tum js dosyalarini tarayan, dosya adi "app.js" ise icinde gecen "innerHTML" kelimelerinin toplamini ekrana yazdiran scripti yaziniz. 

NEW="app.js"
DOSYALAR=$(ls * .js)
for DOSYA in $DOSYALAR
do
if [ "$DOSYA == $NEW" ]
then
grep innerHTML $NEW
break
fi
done

