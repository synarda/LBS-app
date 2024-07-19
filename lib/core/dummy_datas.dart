import 'package:latlong2/latlong.dart';
import 'package:wix_navigation/features/delivers/domain/models/delivery/delivery_list_model.dart';
import 'package:wix_navigation/features/delivers/domain/models/delivery_detail/delivery_detail_model.dart';

const List<DeliveryListModel> deliverList = [
  DeliveryListModel(
    id: 1,
    name: "BİM",
    imagePath:
        "https://upload.wikimedia.org/wikipedia/commons/3/30/Logo_of_B%C4%B0M.PNG",
    location: LatLng(38.467315539938284, 27.111642786494787),
    phone: "02165640303",
    address: "Soğukkuyu, Gün Sazak Bulvari No:41/A, 35600 Karşıyaka/İzmir",
    shoppingChartList: [
      DeliveryDetailModel(
          id: 0,
          name: "Domates",
          imagePath:
              "https://i.lezzet.com.tr/images-xxlarge-secondary/domates-meyve-mi-sebze-mi-68f04593-f07c-43de-afe2-bc9948bcfbdd.jpg",
          piece: 5),
      DeliveryDetailModel(
          id: 1,
          name: "Algida Dondurma",
          imagePath:
              "https://www.buseterim.com.tr/upload/default/2022/8/6/6802.jpg",
          piece: 7),
      DeliveryDetailModel(
          id: 2,
          name: "Kahve",
          imagePath:
              "https://productimages.hepsiburada.net/s/31/375-375/10333266313266.jpg",
          piece: 5),
      DeliveryDetailModel(
          id: 3,
          name: "Kola",
          imagePath:
              "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/15-09-26-RalfR-WLC-0098_-_Coca-Cola_glass_bottle_%28Germany%29.jpg/300px-15-09-26-RalfR-WLC-0098_-_Coca-Cola_glass_bottle_%28Germany%29.jpg",
          piece: 10),
      DeliveryDetailModel(
          id: 4,
          name: "Kellogg's® Yulaf Ezmesi",
          imagePath:
              "https://images.kglobalservices.com/www.kelloggs.tr_tr/tr_tr/product/product_921075/prod_img-1570167_tr_tr_08682530000136_2207302142_p_1.png",
          piece: 50),
      DeliveryDetailModel(
          id: 5,
          name: "Ülker Çikolatalı Gofret",
          imagePath:
              "https://www.diyetkolik.com/site_media/media/nutrition_images/ulker-cikolatali-gofret.webp",
          piece: 100),
      DeliveryDetailModel(
          id: 6,
          name: "Monster Enerji",
          imagePath:
              "https://www.diyetkolik.com/site_media/media/nutrition_images/monster-enerji-icecegi.webp",
          piece: 50),
    ],
    isDelivered: false,
  ),
  DeliveryListModel(
    id: 2,
    name: "A101",
    imagePath:
        "https://play-lh.googleusercontent.com/NzBRKSRLPF8xPe5tD4QhbZzVgUc2uQbS7CQU2Kl7r5L7FRtqTXhs0hyMM1XLCkn9SA=w480-h960",
    location: LatLng(38.47020980726112, 27.105230490653835),
    phone: "02166332500",
    address: "Dedebaşı, 6120. Sk. No:34, 35000 Karşıyaka/İzmir",
    shoppingChartList: [
      DeliveryDetailModel(
          id: 0,
          name: "Domates",
          imagePath:
              "https://i.lezzet.com.tr/images-xxlarge-secondary/domates-meyve-mi-sebze-mi-68f04593-f07c-43de-afe2-bc9948bcfbdd.jpg",
          piece: 5),
      DeliveryDetailModel(
          id: 1,
          name: "Algida Dondurma",
          imagePath:
              "https://www.buseterim.com.tr/upload/default/2022/8/6/6802.jpg",
          piece: 7),
      DeliveryDetailModel(
          id: 2,
          name: "Kahve",
          imagePath:
              "https://productimages.hepsiburada.net/s/31/375-375/10333266313266.jpg",
          piece: 5),
      DeliveryDetailModel(
          id: 3,
          name: "Kola",
          imagePath:
              "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/15-09-26-RalfR-WLC-0098_-_Coca-Cola_glass_bottle_%28Germany%29.jpg/300px-15-09-26-RalfR-WLC-0098_-_Coca-Cola_glass_bottle_%28Germany%29.jpg",
          piece: 10),
    ],
    isDelivered: false,
  ),
  DeliveryListModel(
    id: 3,
    name: "ŞOK",
    imagePath: "https://news-files.foreks.com/images/1717006130889.jpeg",
    location: LatLng(38.46263688130432, 27.09259093704553),
    phone: "08508080000",
    address: "Şemikler, 6349 SOK NO: 28/ B, 35590 Karşıyaka/İzmir",
    shoppingChartList: [
      DeliveryDetailModel(
          id: 4,
          name: "İndomie Special Noodle",
          imagePath:
              "https://www.diyetkolik.com/site_media/media/nutrition_images/indomie-special-noodle.webp",
          piece: 50),
      DeliveryDetailModel(
          id: 0,
          name: "Domates",
          imagePath:
              "https://i.lezzet.com.tr/images-xxlarge-secondary/domates-meyve-mi-sebze-mi-68f04593-f07c-43de-afe2-bc9948bcfbdd.jpg",
          piece: 5),
      DeliveryDetailModel(
          id: 1,
          name: "Algida Dondurma",
          imagePath:
              "https://www.buseterim.com.tr/upload/default/2022/8/6/6802.jpg",
          piece: 7),
      DeliveryDetailModel(
          id: 2,
          name: "Kahve",
          imagePath:
              "https://productimages.hepsiburada.net/s/31/375-375/10333266313266.jpg",
          piece: 5),
      DeliveryDetailModel(
          id: 3,
          name: "Kola",
          imagePath:
              "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/15-09-26-RalfR-WLC-0098_-_Coca-Cola_glass_bottle_%28Germany%29.jpg/300px-15-09-26-RalfR-WLC-0098_-_Coca-Cola_glass_bottle_%28Germany%29.jpg",
          piece: 10),
    ],
    isDelivered: false,
  ),
  DeliveryListModel(
    id: 4,
    name: "MİGROS",
    imagePath:
        "https://w7.pngwing.com/pngs/359/129/png-transparent-migros-cooperative-lucerne-retail-outlet-migros-gossau-supermarket-others-miscellaneous-angle-text-thumbnail.png",
    location: LatLng(38.461101198960165, 27.12048389364419),
    phone: "08502155611",
    address: "Bahariye, Hidayet Erzeybek Cd. No:28, 35600 Karşıyaka/İzmir",
    shoppingChartList: [
      DeliveryDetailModel(
          id: 0,
          name: "Domates",
          imagePath:
              "https://i.lezzet.com.tr/images-xxlarge-secondary/domates-meyve-mi-sebze-mi-68f04593-f07c-43de-afe2-bc9948bcfbdd.jpg",
          piece: 5),
      DeliveryDetailModel(
          id: 1,
          name: "Algida Dondurma",
          imagePath:
              "https://www.buseterim.com.tr/upload/default/2022/8/6/6802.jpg",
          piece: 7),
      DeliveryDetailModel(
          id: 2,
          name: "Kahve",
          imagePath:
              "https://productimages.hepsiburada.net/s/31/375-375/10333266313266.jpg",
          piece: 5),
      DeliveryDetailModel(
          id: 3,
          name: "Kola",
          imagePath:
              "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/15-09-26-RalfR-WLC-0098_-_Coca-Cola_glass_bottle_%28Germany%29.jpg/300px-15-09-26-RalfR-WLC-0098_-_Coca-Cola_glass_bottle_%28Germany%29.jpg",
          piece: 10),
      DeliveryDetailModel(
          id: 4,
          name: "İçim Taze Kaşar",
          imagePath:
              "https://www.diyetkolik.com/site_media/media/nutrition_images/icim-taze-kasar-peyniri.webp",
          piece: 10),
    ],
    isDelivered: false,
  ),
  DeliveryListModel(
    id: 5,
    name: "Kipa",
    imagePath:
        "https://upload.wikimedia.org/wikipedia/tr/c/c8/Kipa_logo.png?20200610180947",
    location: LatLng(38.45497253384907, 27.114167163258248),
    phone: "08509550491",
    address: "Donanmacı, 7611 Sok No:4, 35530 Karşıyaka/İzmir",
    shoppingChartList: [
      DeliveryDetailModel(
          id: 0,
          name: "Domates",
          imagePath:
              "https://i.lezzet.com.tr/images-xxlarge-secondary/domates-meyve-mi-sebze-mi-68f04593-f07c-43de-afe2-bc9948bcfbdd.jpg",
          piece: 5),
      DeliveryDetailModel(
          id: 1,
          name: "Algida Dondurma",
          imagePath:
              "https://www.buseterim.com.tr/upload/default/2022/8/6/6802.jpg",
          piece: 7),
      DeliveryDetailModel(
          id: 2,
          name: "Kahve",
          imagePath:
              "https://productimages.hepsiburada.net/s/31/375-375/10333266313266.jpg",
          piece: 5),
    ],
    isDelivered: false,
  ),
];
