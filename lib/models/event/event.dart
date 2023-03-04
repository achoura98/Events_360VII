import 'package:flutter/widgets.dart';

class EventModel with ChangeNotifier {
  final String title,
      duration,
      day,
      images,
      fromTo,
      about,
      date,
      location,
      auteur,
      cost,
      autorImage;
  final int regularPrice;
  final int quantity = 1;
  final int? premiumPrice;
  final String categoryName;
  final String id;
  final bool isFavorite, isPopular;

  EventModel({
    required this.cost,
    required this.regularPrice,
    this.premiumPrice,
    required this.day,
    required this.id,
    required this.categoryName,
    required this.title,
    required this.about,
    required this.date,
    required this.fromTo,
    required this.location,
    required this.images,
    required this.auteur,
    required this.autorImage,
    required this.duration,
    this.isFavorite = false,
    this.isPopular = false,
  });
}

// ignore: non_constant_identifier_names
// List<EventModel> Events = [
//   EventModel(
//     id: 1,
//     images: [
//       "assets/images/businessE.png",
//       "assets/images/cafeE.png",
//       "assets/images/foodE.png",
//       "assets/images/gastroE.png",
//       "assets/images/ImageBannerE.png",
//       "assets/images/ImageBannerE2.png",
//       "assets/images/luxeE.png",
//       "assets/images/ramadanE.png",
//       "assets/images/skateE.png",
//       "assets/images/sportE.png",
//       "assets/images/vinE.png"
//     ],
//     profil: [
//       "assets/profil/business_woman.png",
//       "assets/profil/cafe_matin.png",
//       "assets/profil/deguner.png",
//       "assets/profil/degustation.png",
//       "assets/profil/islam.png",
//       "assets/profil/mode.png",
//       "assets/profil/sport.jpeg",
//       "assets/profil/techno.png",
//       "assets/profil/business.png"
//     ],
//     colors: [
//       Color(0xFFF6625E),
//       Color(0xFF83D6B8),
//       Color(0xFFDECB9C),
//       Colors.white,
//     ],
//     title: "Business Time",
//     about:
//         "Parlons business, Exercitation adipisicing duis laborum adipisicing dolore occaecat ex. Occaecat ex enim mollit mollit commodo culpa aute elit laboris est aute incididunt esse sint. Amet velit do velit nulla. Non ipsum magna tempor elit. Adipisicing nulla et eu commodo qui esse cupidatat qui velit enim dolore elit anim eu. Nostrud et ut cillum eiusmod duis est do laboris elit ipsum id ea deserunt minim. Incididunt ipsum exercitation veniam eiusmod amet occaecat eu proident exercitation aliquip incididunt est irure.",
//     date: "Jeu., 01 Avr. À 15:00 UTC",
//     location: "Lomé",
//     duration: "2h00",
//     isFavorite: true,
//     isPopular: true,
//     auteur: 'Boby Axelroad',
//     cost: '15',
//   ),
//   EventModel(
//     id: 2,
//     title: "Café Matin",
//     about:
//         "Autour d'un Café,Commodo mollit ipsum in eu sit dolor dolore ad dolor. Enim amet est et dolor fugiat dolor laboris pariatur veniam pariatur. Exercitation ipsum quis labore fugiat Lorem laboris irure sint. Labore nisi ea sunt commodo eiusmod. Labore ea et commodo aliqua fugiat consectetur incididunt sit nulla. Non ipsum nostrud qui ex voluptate velit. Consectetur ad eiusmod ea adipisicing laborum.",
//     date: "Ven., 02 Avr. À 09:00 UTC",
//     location: "Hotel 2F",
//     duration: "1h30",
//     cost: "10",
//     isPopular: true,
//     auteur: 'Ken Kaneki',
//     images: ["assets/images/cafeE.png"],
//     profil: ["assets/profil/cafe_matin.png"],
//     colors: [
//       Color(0xFFF6625E),
//       Color(0xFF83D6B8),
//       Color(0xFFDECB9C),
//       Colors.white,
//     ],
//   ),
//   EventModel(
//     id: 3,
//     title: "Special Tortiya",
//     about:
//         "Parlons Saveur,Culpa adipisicing et tempor aliquip. Voluptate aliqua Lorem cupidatat consequat sit elit non deserunt amet. Fugiat laboris proident exercitation elit amet voluptate laborum sint sit Lorem enim id amet. Ad duis do id dolore reprehenderit deserunt tempor anim deserunt ut culpa cupidatat. Do mollit fugiat pariatur et dolor pariatur irure reprehenderit magna consectetur adipisicing. Sit non laborum ut ad amet. Amet enim sunt ea excepteur minim cupidatat cillum laborum aliquip.",
//     date: "Ven., 08 Avr. À 12:00 UTC",
//     location: "Hotel 2F",
//     isPopular: true,
//     auteur: 'Tatumi Aldini',
//     duration: "1h00",
//     images: ["assets/images/foodE.png"],
//     profil: [
//       "assets/profil/deguner.png",
//     ],
//     colors: [
//       Color(0xFFF6625E),
//       Color(0xFF83D6B8),
//       Color(0xFFDECB9C),
//       Colors.white,
//     ],
//     cost: '5',
//   ),
//   EventModel(
//     id: 4,
//     title: "Special Sushi",
//     about:
//         "Au pays des Samurais,Ullamco in do commodo veniam fugiat aute pariatur aute minim. Ex minim aliquip laboris pariatur do. Irure nostrud occaecat adipisicing incididunt laboris sint enim sint. Dolore voluptate aliquip id tempor eu veniam anim cillum tempor ad. Dolore aliqua do quis exercitation officia officia adipisicing anim qui.",
//     date: "Ven., 12 Mai. À 14:00 UTC",
//     location: "Hotel Dolce Plazza",
//     duration: "45min",
//     isFavorite: true,
//     auteur: 'Marcel Brekelmans',
//     images: ["assets/images/gastroE.png"],
//     profil: ["assets/profil/degustation.png"],
//     colors: [
//       Color(0xFFF6625E),
//       Color(0xFF83D6B8),
//       Color(0xFFDECB9C),
//       Colors.white,
//     ],
//     cost: '8',
//   ),
//   EventModel(
//       id: 5,
//       title: "En route pour Jupiter",
//       about:
//           "Les nouvelles inventions,Laboris culpa ex sint ullamco. Esse aute Lorem eu eu. Elit nostrud nostrud id elit. Velit adipisicing eu cupidatat est Lorem ut labore aliqua officia. Cupidatat laborum nulla laboris nulla ut enim qui ad cupidatat cillum. Esse sunt qui sit voluptate est ipsum quis id duis adipisicing. Adipisicing dolore Lorem eiusmod mollit.",
//       date: "Mer., 02 Mai. À 20:00 UTC",
//       location: "Zone tech",
//       auteur: "Tony Stark",
//       duration: "2h30",
//       isFavorite: true,
//       images: ["assets/images/ImageBannerE.png"],
//       profil: ["assets/profil/techno.png"],
//       colors: [
//         Color(0xFFF6625E),
//         Color(0xFF83D6B8),
//         Color(0xFFDECB9C),
//         Colors.white,
//       ],
//       cost: '30'),
//   EventModel(
//       id: 6,
//       title: "Fresh Humans",
//       about:
//           "Fashion Week, Irure sint cillum in enim culpa irure ipsum sint commodo officia laborum ea. Incididunt Lorem magna eu qui excepteur fugiat ut non pariatur. Lorem quis eu incididunt ex amet et ipsum officia id consectetur sit. Nisi in nulla exercitation dolor proident in incididunt aliquip.",
//       date: "Mer., 02 Mai. À 17:00 UTC",
//       location: "Palais des Congrés",
//       isFavorite: true,
//       auteur: "Cruella d'enfer",
//       duration: "2h00",
//       profil: ["assets/profil/mode.png"],
//       images: ["assets/images/ImageBannerE2.png"],
//       colors: [
//         Color(0xFFF6625E),
//         Color(0xFF83D6B8),
//         Color(0xFFDECB9C),
//         Colors.white,
//       ],
//       cost: '14'),
//   EventModel(
//       id: 7,
//       title: "Fortune",
//       about:
//           "Les fortunes du XXI Siècles Ipsum officia fugiat commodo labore. Elit ad aliquip adipisicing elit. Tempor reprehenderit tempor non elit. Aliqua occaecat do officia in eiusmod nostrud consequat culpa cupidatat deserunt.",
//       date: "Lun., 24 Mai. À 21:00 UTC",
//       location: "Hotel 2F",
//       isPopular: true,
//       isFavorite: true,
//       duration: "1h00",
//       auteur: "Elon Musk",
//       images: ["assets/images/luxeE.png"],
//       profil: ["assets/profil/business.png"],
//       colors: [
//         Color(0xFFF6625E),
//         Color(0xFF83D6B8),
//         Color(0xFFDECB9C),
//         Colors.white,
//       ],
//       cost: '50'),
//   EventModel(
//       id: 8,
//       title: "Road to Makka",
//       about:
//           "Autour d'un Café Elit enim qui et ea amet adipisicing. Duis cupidatat in cupidatat anim mollit ad nisi aliquip cillum nostrud laborum ut anim. Proident proident sint est irure et non veniam est veniam duis dolore consequat. Dolore esse elit adipisicing dolore qui cillum sunt adipisicing magna dolore magna laboris in consequat.",
//       date: "Ven., 24 Juin. À 15:00 UTC",
//       location: "Maison Hadj",
//       auteur: "Sheikh Seydou Agoro",
//       duration: "2h00",
//       isPopular: true,
//       images: ["assets/images/ramadanE.png"],
//       profil: [
//         "assets/profil/islam.png",
//       ],
//       colors: [
//         Color(0xFFF6625E),
//         Color(0xFF83D6B8),
//         Color(0xFFDECB9C),
//         Colors.white,
//       ],
//       cost: '30'),
//   EventModel(
//       id: 9,
//       title: "Road trip",
//       about:
//           "Depasser vos limites, Ipsum qui ad id dolor nostrud aute voluptate qui. Fugiat cupidatat elit minim adipisicing. Velit consequat deserunt est aute officia consectetur enim. Eu reprehenderit anim tempor aliqua mollit id ullamco officia sit cillum non qui. Pariatur magna irure Lorem nulla occaecat anim Lorem qui exercitation mollit aliqua labore ad pariatur. Sit nulla magna do do non eiusmod est velit ex Lorem exercitation sunt proident. ",
//       date: "Sam., 10 Juillet. À 06:00 UTC",
//       location: "MotoCross",
//       isPopular: true,
//       isFavorite: true,
//       auteur: "José Morinho",
//       duration: "1h00",
//       images: ["assets/images/sportE.png"],
//       profil: ["assets/profil/sport.jpeg"],
//       colors: [
//         Color(0xFFF6625E),
//         Color(0xFF83D6B8),
//         Color(0xFFDECB9C),
//         Colors.white,
//       ],
//       cost: '8'),
//   EventModel(
//       id: 10,
//       title: "Degustation",
//       about:
//           "Delice du pays, Labore quis est laboris enim eiusmod dolore sunt ea commodo. Consectetur deserunt pariatur enim est ea cupidatat sit. Veniam veniam veniam minim ad ex voluptate proident mollit fugiat cupidatat. Laborum nulla cillum nisi duis. Sit est quis qui laborum exercitation nisi excepteur non eu ex nostrud magna cillum.",
//       date: "Dim., 31 Aout. À 22:00 UTC",
//       location: "Hotel 2F",
//       isFavorite: true,
//       auteur: "Soma Yukihira",
//       duration: "50min",
//       images: ["assets/images/vinE.png"],
//       profil: ["assets/profil/degustation.png"],
//       colors: [
//         Color(0xFFF6625E),
//         Color(0xFF83D6B8),
//         Color(0xFFDECB9C),
//         Colors.white,
//       ],
//       cost: '60'),
// ];
