import 'package:bloc_pattern_kullanimi/ui/cubit/anasayfa_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  var tfSayi1 = TextEditingController();
  var tfSayi2 = TextEditingController();
  int sonuc = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("bloc pattern"),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BlocBuilder<AnasayfaCubit, int>( //dinlmee
                builder: (context,sonuc){
                  return Text(sonuc.toString(), style: const TextStyle(fontSize: 50),);
                },
              ),
              TextField(controller: tfSayi1, decoration: const InputDecoration(hintText: "Sayı 1"),),
              TextField(controller: tfSayi2, decoration:  const InputDecoration(hintText: "Sayı 2"),),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    context.read<AnasayfaCubit>().toplama_yap(tfSayi1.text, tfSayi2.text);
                    /*String alinan_sayi_1 = tfSayi1.text; // buarada string ile alınan sayimiz var
                    String alinan_sayi_2 = tfSayi2.text;
                    int sayi1 = int.parse(alinan_sayi_1); // buarada parse işlemleri ile stringi int çeviriyoruz
                    int sayi2 = int.parse(alinan_sayi_2);
                    int toplam = sayi1+sayi2;
                    setState(() {
                      sonuc = toplam; // setState ile toplamı sonuc değişkenine atadık
                    });*/

                  }, child: const Text("Toplama")),  // bu benim toplama butonum
                  ElevatedButton(onPressed: (){
                    context.read<AnasayfaCubit>().carpma_yap(tfSayi1.text, tfSayi2.text);
                    // burada anasayfa cubitini okuyup onun içinde li carpma_yap fonksiyonuna erişiyoruz daha sonra str olarak girdiğimiz sat-yıları
                    // carpma_yap fonksiyonun içinde parse işlmemleri ile int çevirip sonucu elde edip
                    // emit komudu ile sonucu geri gönderip ekranda görüyoruz

                   /* String alinan_sayi_1 = tfSayi1.text;
                    String alinan_sayi_2 = tfSayi2.text;
                    int sayi1 = int.parse(alinan_sayi_1);
                    int  sayi2 = int.parse(alinan_sayi_2);
                    int carpma = sayi1 * sayi2;
                    setState(() {
                      sonuc = carpma;
                    }); */

                  }, child: const Text("Çarpma"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
