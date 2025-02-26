class Matematikrepository {

  int toplama_yap(String alinan_sayi_1, String alinan_sayi_2) {
    int sayi1 = int.parse(alinan_sayi_1); // buarada parse işlemleri ile stringi int çeviriyoruz
    int sayi2 = int.parse(alinan_sayi_2);
    int toplam = sayi1 + sayi2;
    return toplam;
  }

  int carpma_yap(String alinan_sayi_1, String alinan_sayi_2){
    int sayi1 = int.parse(alinan_sayi_1); // buarada parse işlemleri ile stringi int çeviriyoruz
    int sayi2 = int.parse(alinan_sayi_2);
    int carpma = sayi1+sayi2;
    return carpma;
  }


}