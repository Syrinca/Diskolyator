# Diskolyator
### Naznachenie
Dannyy skript razrabotan dlya avtomaticheskogo udaleniya vsekh razdelov na kazhdom diske v sisteme s ispol'zovaniem instrumenta diskpart v komandnoy stroke operatsionnoy sistemy Windows.

### Ispol'zovanie
1. Zapustite skript cherez bat ili exe.
2. Skript avtomaticheski opredelit vse diski v sisteme i udalit vse ikh razdely.

### Podrobnoe opisanie raboty
1. Skript nachinaet s otklyucheniya vyvoda komand v komandnoy stroke s pomoshch'yu komandy `@echo off`, chtoby obespechit' bolee chistyy vyvod.

2. Zatem skript zapuskaet tsikl `for`, kotoryy vypolnyaet sleduyushchie deystviya:
   - On otpravlyaet komandu `list disk` v `diskpart` i fil'truet vyvod s pomoshch'yu `findstr`, chtoby nayti stroki, soderzhashchie informatsiyu o diskakh.
   - Dlya kazhdoy stroki s informatsiey o diske skript izvlekaet nomer diska i sokhranyaet ego v peremennuyu `%%a`.

3. Dlya kazhdogo naydennogo diska skript vypolnyaet sleduyushchie deystviya:
   - Vybirayet disk s pomoshch'yu komandy `select disk %%a`, gde `%%a` - nomer diska.
   - Udalet vse razdely na vybrannom diske s pomoshch'yu komandy `clean`.
   - Zavershaet vypolneniye `diskpart` s pomoshch'yu komandy `exit`.

4. Posle zaversheniya raboty so vsemi diskami skript zavershayet svoe vypolneniye.

### Primechaniya
- Pozhaluysta, bud'te ostorozhny pri ispol'zovanii etogo skripta, tak kak on privedit k udaleniyu vsekh razdelov na kazhdom diske.
- Rekomenduyetsya sozdat' rezervnuyu kopiyu vazhnykh dannykh pered vypolneniyem etogo skripta.

### Trebovaniya
- Operatsionnaya sistema Windows.

### Avtor
Skript razrabotan Syrinca.

### Litsenziya
Etot skript rasprostranyayetsya pod The GNU General Public License v3.0.
