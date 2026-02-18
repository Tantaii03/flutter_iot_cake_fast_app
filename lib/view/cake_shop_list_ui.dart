import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iot_cake_fast_app/models/cake_shop.dart';

// แก้ชื่อ Class ให้ถูกต้องตามที่เรียกจากหน้าอื่น
class CakeShopListUi extends StatefulWidget {
  const CakeShopListUi({super.key});

  @override
  State<CakeShopListUi> createState() => _CakeShopListUiState();
}

class _CakeShopListUiState extends State<CakeShopListUi> {
  List<String> imgCakeShop = [
    'assets/images/ck01.png',
    'assets/images/ck02.png',
    'assets/images/ck03.png',
    'assets/images/ck04.png',
    'assets/images/ck05.png',
    'assets/images/ck06.png',
    'assets/images/ck07.png',
  ];

  List<CakeShop> cakeShops = [
    CakeShop(
      name: 'Yellow Spoon Pastry',
      address: 'โครงการเอกมัย คอมเพล็กซ์ (ระหว่างเอกมัย 19 และ 21)',
      phone: '0854822842',
      image1: 's11.jpg',
      image2: 's12.jpg',
      image3: 's13.jpg',
      description: 'คาเฟ่ขนมหวานที่มีเบเกอรี่โฮมเมดสูตรน้ำตาลน้อย...',
      openCloseTime: 'ทุกวัน 10.00-20.00 น.',
      website: 'https://www.yellowspoonpastry.com/',
      facebook: 'https://www.facebook.com/yspastry',
      latitude: '13.736634',
      longitude: '100.587512',
    ),
    CakeShop(
      name: 'Vista Cafe by Verasu',
      address: 'อาคารวีรสุ ถนนวิทยุ',
      phone: '022548100',
      image1: 's21.jpg',
      image2: 's22.jpg',
      image3: 's23.jpg',
      description: 'Vista Cafe by Verasu ร้านเบเกอรี่เพื่อคนรักสุขภาพ...',
      openCloseTime: 'ทุกวัน 09.00-19.00 น',
      website: 'http://www.vistacafe.co.th/',
      facebook: 'https://www.facebook.com/vistacafe',
      latitude: '13.7403',
      longitude: '100.547417',
    ),
    CakeShop(
      name: 'Sweet Spell',
      address: 'สี่แยกเหม่งจ๋าย ประชาอุทิศ19',
      phone: '0846666828',
      image1: 's31.jpg',
      image2: 's32.jpg',
      image3: 's33.jpg',
      description: 'ร้านเค้กเล็กๆ ที่ความอร่อยไม่เล็ก...',
      openCloseTime: 'ทุกวัน 10.00-20.00 น. \n(หยุดทุกวันที่ 15 ของเดือน)',
      website: 'http://www.sweetspell.com/dessert-menu/',
      facebook: 'https://www.facebook.com/sweetspellcafe',
      latitude: '13.771741',
      longitude: '100.586662',
    ),
    CakeShop(
      name: 'Larna House',
      address: 'พัฒนาการ 61',
      phone: '023215995',
      image1: 's41.jpg',
      image2: 's42.jpg',
      image3: 's43.jpg',
      description: 'คิดถึงเค้กช็อกโกแลต ต้องนึกถึง Larna House...',
      openCloseTime: 'ทุกวัน 09.00-21.00 น.',
      website: 'https://larnahouse.com/',
      facebook: 'https://www.facebook.com/larnahouse',
      latitude: '13.730245',
      longitude: '100.658385',
    ),
    CakeShop(
      name: 'I bake & You take',
      address: 'วิภาวดีรังสิต 60',
      phone: '0934499447',
      image1: 's51.jpg',
      image2: 's52.jpg',
      image3: 's53.jpg',
      description: 'ร้านเค้กโฮมเมดสูตรดั้งเดิมต้นตำรับฝรั่งเศส...',
      openCloseTime: 'ทุกวัน 07.30-19.30 น.',
      website: 'https://ibakeyoutake.com/',
      facebook: 'https://www.facebook.com/Ibakeyoutakebysine',
      latitude: '13.864575',
      longitude: '100.5823',
    ),
    CakeShop(
      name: 'Coffee bean by dao',
      address: 'ชั้น G สยามพารากอน',
      phone: '026109702',
      image1: 's61.jpg',
      image2: 's62.jpg',
      image3: 's63.jpg',
      description: 'Coffee bean by dao ร้านเค้กแสนอร่อย...',
      openCloseTime: 'ทุกวัน 10.00-22.00 น.',
      website: 'http://www.coffeebeans.co.th/',
      facebook: 'https://www.facebook.com/CoffeeBeansbyDao',
      latitude: '13.7469267',
      longitude: '100.5349883',
    ),
    CakeShop(
      name: 'Bake Ministry',
      address: 'สุขุมวิท 26',
      phone: '0891540474',
      image1: 's71.jpg',
      image2: 's72.jpg',
      image3: 's73.jpg',
      description: 'ร้านเค้กสไตล์โฮมเมดที่เริ่มจาก Made to order...',
      openCloseTime: '10.00-18.00 น. \n(หยุดวันอาทิตย์)',
      website: 'http://www.bakeministry.net/',
      facebook: 'https://www.facebook.com/bakeministry',
      latitude: '13.7281129',
      longitude: '100.5705757',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF668C62),
        title: const Text(
          'Cakeyummy',
          style:
              TextStyle(color: Color(0xFF5D4037), fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 15),
          CarouselSlider.builder(
            itemCount: imgCakeShop.length,
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height * 0.25,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 2),
            ),
            itemBuilder: (context, index, realIndex) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(imgCakeShop[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.separated(
              itemCount: cakeShops.length,
              separatorBuilder: (context, index) => Divider(
                color: Color(0xff4F7D62),
                thickness: 1,
              ),
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {},
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/${cakeShops[index].image1}',
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    cakeShops[index].name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(cakeShops[index].phone),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xff7FA868),
                    size: 18,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
