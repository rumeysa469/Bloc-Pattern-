import 'package:bloc_pattern_kullanimi/data/repo/matematiksel_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnasayfaCubit extends Cubit<int>{
  AnasayfaCubit():super(0);

  var mrepo = Matematikrepository();

  void toplama_yap(String alinan_sayi_1, String alinan_sayi_2){
   /* int sayi1 = int.parse(alinan_sayi_1); // buarada parse işlemleri ile stringi int çeviriyoruz
    int sayi2 = int.parse(alinan_sayi_2);
    int toplam = sayi1+sayi2;
    emit(toplam); */// tetikleme ve veri gönderme
    // emit komutu soncuu dinlenmeyi aldığı yere geri gönderir
    // yukarıda ki koda gerek kalmadı çünkü bu işlemleri repo yapıcaz biz sadece emit ile çağıracağız

    int sonuc = mrepo.toplama_yap(alinan_sayi_1, alinan_sayi_2);
    emit(sonuc); // cubitten bu emit komutu ile sonucu alıp arayüze gönderir


  }
  void carpma_yap(String alinan_sayi_1, String alinan_sayi_2){
    // ya yukarıda ki gibi ya da aşağıda ki gibi de yazabiliriz.
    emit(mrepo.carpma_yap(alinan_sayi_1, alinan_sayi_2));
  }

}