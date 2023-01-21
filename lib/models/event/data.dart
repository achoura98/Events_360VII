import 'package:event_360/models/event/event.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

List<Map> categories = [
  {
    "name": "Tout",
    "icon": LineAwesomeIcons.globe_with_africa_shown,
  },
  {
    "name": "Musique",
    "icon": LineAwesomeIcons.music,
  },
  {
    "name": "Sport",
    "icon": LineAwesomeIcons.basketball_ball,
  },
  {
    "name": "Food",
    "icon": LineAwesomeIcons.hamburger,
  },
  {
    "name": "Art",
    "icon": LineAwesomeIcons.palette,
  },
  {
    "name": "Religion",
    "icon": LineAwesomeIcons.pray,
  },
  {
    "name": "Entreprenariat",
    "icon": LineAwesomeIcons.business_time,
  }
];

List<EventModel> weekEvents = [
  EventModel(
      id: 1,
      cost: '5000-15000',
      regularPrice: 5000,
      premiumPrice: 15000,
      title: "Business Time",
      about:
          "Parlons business, Exercitation adipisicing duis laborum adipisicing dolore occaecat ex. Occaecat ex enim mollit mollit commodo culpa aute elit laboris est aute incididunt esse sint. Amet velit do velit nulla. Non ipsum magna tempor elit. Adipisicing nulla et eu commodo qui esse cupidatat qui velit enim dolore elit anim eu. Nostrud et ut cillum eiusmod duis est do laboris elit ipsum id ea deserunt minim. Incididunt ipsum exercitation veniam eiusmod amet occaecat eu proident exercitation aliquip incididunt est irure.",
      date: "01 Avril 2022",
      day: "Dimanche",
      location: "Foire Togo 2000",
      images: "assets/image/business.png",
      fromTo: "10:00 - 12:00",
      auteur: "Boby Axelroad",
      category: categories[5],
      autorImage: "assets/profil/business_woman.png",
      duration: "3"),
  EventModel(
      id: 2,
      cost: "Gratuit",
      regularPrice: 0,
      title: "Saveur d'Occident",
      about:
          "Autour d'un Café,Commodo mollit ipsum in eu sit dolor dolore ad dolor. Enim amet est et dolor fugiat dolor laboris pariatur veniam pariatur. Exercitation ipsum quis labore fugiat Lorem laboris irure sint. Labore nisi ea sunt commodo eiusmod. Labore ea et commodo aliqua fugiat consectetur incididunt sit nulla. Non ipsum nostrud qui ex voluptate velit. Consectetur ad eiusmod ea adipisicing laborum.",
      date: "05 Février 2022",
      day: "Samedi",
      fromTo: "10:00 - 12:00",
      location: "Le Continental",
      images: "assets/image/cafeE.png",
      auteur: 'Ken Kaneki',
      autorImage: "assets/profil/cafe_matin.png",
      duration: "2"),
  EventModel(
      id: 3,
      cost: "2000-5000",
      regularPrice: 2000,
      premiumPrice: 5000,
      title: "Special Tortiya",
      about:
          "Parlons Saveur,Culpa adipisicing et tempor aliquip. Voluptate aliqua Lorem cupidatat consequat sit elit non deserunt amet. Fugiat laboris proident exercitation elit amet voluptate laborum sint sit Lorem enim id amet. Ad duis do id dolore reprehenderit deserunt tempor anim deserunt ut culpa cupidatat. Do mollit fugiat pariatur et dolor pariatur irure reprehenderit magna consectetur adipisicing. Sit non laborum ut ad amet. Amet enim sunt ea excepteur minim cupidatat cillum laborum aliquip.",
      date: "05 Février 2022",
      day: "Lundi",
      fromTo: "10:00 - 12:00",
      location: "Hotel 2F",
      images: "assets/image/foodE.png",
      auteur: 'Tatumi Aldini',
      autorImage: "assets/profil/deguner.png",
      duration: "2"),
  EventModel(
      id: 4,
      cost: "10000",
      regularPrice: 10000,
      title: "Saveur D'Asie",
      about:
          "Au pays des Samurais,Ullamco in do commodo veniam fugiat aute pariatur aute minim. Ex minim aliquip laboris pariatur do. Irure nostrud occaecat adipisicing incididunt laboris sint enim sint. Dolore voluptate aliquip id tempor eu veniam anim cillum tempor ad. Dolore aliqua do quis exercitation officia officia adipisicing anim qui.",
      date: "10 Mars 2022",
      day: "Lundi",
      fromTo: "10:00 - 12:00",
      location: "Hotel Dolce Plazza",
      images: "assets/image/gastroE.png",
      auteur: 'Marcel Brekelmans',
      autorImage: "assets/profil/degustation.png",
      duration: "2"),
  EventModel(
      id: 5,
      cost: "50000 - 100000",
      regularPrice: 50000,
      premiumPrice: 100000,
      title: "En route pour Jupiter",
      about:
          "Les nouvelles inventions,Laboris culpa ex sint ullamco. Esse aute Lorem eu eu. Elit nostrud nostrud id elit. Velit adipisicing eu cupidatat est Lorem ut labore aliqua officia. Cupidatat laborum nulla laboris nulla ut enim qui ad cupidatat cillum. Esse sunt qui sit voluptate est ipsum quis id duis adipisicing. Adipisicing dolore Lorem eiusmod mollit.",
      date: "06 Mai 2022",
      day: "Jeudi",
      fromTo: "10:00 - 12:00",
      location: "La Tour Tesla",
      images: "assets/image/ImageBannerE.png",
      auteur: "Tony Stark",
      autorImage: "assets/profil/techno.png",
      duration: "3"),
  EventModel(
      id: 6,
      cost: "20000 - 50000 ",
      regularPrice: 20000,
      premiumPrice: 50000,
      title: "Fresh Humans",
      about:
          "Fashion Week, Irure sint cillum in enim culpa irure ipsum sint commodo officia laborum ea. Incididunt Lorem magna eu qui excepteur fugiat ut non pariatur. Lorem quis eu incididunt ex amet et ipsum officia id consectetur sit. Nisi in nulla exercitation dolor proident in incididunt aliquip.",
      date: "24 Mars 2022",
      day: "Mercredi",
      fromTo: "11:00 - 13:00",
      location: "Palais des Congrés",
      images: "assets/image/ImageBannerE2.png",
      auteur: 'Ken Kaneki',
      autorImage: "assets/profil/mode.png",
      duration: "2"),
];
List<EventModel> upcomingHomeEvents = [
  EventModel(
    id: 1,
    title: 'Marwan Pablo Live',
    date: '24 Décembre 2022',
    day: "Samedi",
    images: "assets/image/event1.jpg",
    autorImage: "assets/profil/mode.png",
    auteur: 'Marcel Brekelmans',
    category: categories[3],
    location: 'Barclays Centre',
    fromTo: "10:00 - 12:00",
    cost: '6000',
    regularPrice: 6000,
    duration: "3",
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
  EventModel(
    id: 2,
    title: 'Moon Crush Festival',
    images: 'assets/image/event2.jpg',
    autorImage: "assets/profil/techno.png",
    date: '25 Décembre 2022',
    day: "Mardi",
    category: categories[1],
    location: 'Barclays Centre',
    fromTo: "10:00 - 13:00",
    cost: '7000',
    regularPrice: 7000,
    duration: "3",
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
    auteur: 'Donald Trump',
  ),
  EventModel(
    id: 3,
    title: 'Moon Crush Festival',
    images: 'assets/image/event3.jpg',
    auteur: "Leonard Davinci",
    autorImage: "assets/profil/techno.png",
    date: '25 Décembre 2022',
    day: 'Lundi',
    category: categories[0],
    location: 'Barclays Centre',
    fromTo: "10:00 - 12:00",
    cost: '10000',
    regularPrice: 10000,
    duration: "3",
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
  EventModel(
    id: 4,
    title: 'Moon Crush Festival',
    images: 'assets/image/event4.jpg',
    date: '24 Décembre 2022',
    day: "Dimanche",
    auteur: "Kamilia Stain",
    autorImage: "assets/profil/mode.png",
    category: categories[4],
    location: 'Barclays Centre',
    fromTo: "10:00 - 12:00",
    cost: '5000-10000',
    regularPrice: 5000,
    premiumPrice: 10000,
    duration: "3",
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
  EventModel(
    id: 5,
    title: 'Moon Crush Festival',
    images: 'assets/image/event5.jpg',
    auteur: "Sherlock Holmes",
    autorImage: "assets/profil/islam.png",
    date: '02 Novembre 2022',
    day: "Vendredi",
    category: categories[2],
    location: 'Barclays Centre',
    fromTo: "10:00 - 12:00",
    cost: '2000',
    regularPrice: 2000,
    duration: "3",
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
  EventModel(
    id: 6,
    title: 'Moon Crush Festival',
    images: 'assets/image/event6.jpg',
    date: '20 Octobre 2022',
    day: "Samedi",
    category: categories[5],
    auteur: "Cyprien",
    autorImage: "assets/profil/business.png",
    location: 'Barclays Centre',
    fromTo: "10:00 - 12:00",
    cost: '2000-5000',
    regularPrice: 2000,
    premiumPrice: 5000,
    duration: "3",
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
];

List<EventModel> popularEvents = [
  EventModel(
      id: 1,
      cost: '2000-5000',
      regularPrice: 2000,
      premiumPrice: 5000,
      title: "Business Time",
      about:
          "Parlons business, Exercitation adipisicing duis laborum adipisicing dolore occaecat ex. Occaecat ex enim mollit mollit commodo culpa aute elit laboris est aute incididunt esse sint. Amet velit do velit nulla. Non ipsum magna tempor elit. Adipisicing nulla et eu commodo qui esse cupidatat qui velit enim dolore elit anim eu. Nostrud et ut cillum eiusmod duis est do laboris elit ipsum id ea deserunt minim. Incididunt ipsum exercitation veniam eiusmod amet occaecat eu proident exercitation aliquip incididunt est irure.",
      date: "01 Avril 2022",
      day: "Jeudi",
      location: "Foire Togo 2000",
      images: "assets/image/businessE.png",
      fromTo: "10:00 - 12:00",
      auteur: "Boby Axelroad",
      category: categories[5],
      autorImage: "assets/profil/business_woman.png",
      duration: "3"),
  EventModel(
      id: 2,
      cost: "Gratuit",
      regularPrice: 0,
      title: "Saveur d'Occident",
      about:
          "Autour d'un Café,Commodo mollit ipsum in eu sit dolor dolore ad dolor. Enim amet est et dolor fugiat dolor laboris pariatur veniam pariatur. Exercitation ipsum quis labore fugiat Lorem laboris irure sint. Labore nisi ea sunt commodo eiusmod. Labore ea et commodo aliqua fugiat consectetur incididunt sit nulla. Non ipsum nostrud qui ex voluptate velit. Consectetur ad eiusmod ea adipisicing laborum.",
      date: "05 Février 2022",
      day: "Jeudi",
      fromTo: "10:00 - 12:00",
      location: "Le Continental",
      images: "assets/image/cafeE.png",
      auteur: 'Ken Kaneki',
      autorImage: "assets/profil/cafe_matin.png",
      duration: "2"),
  EventModel(
      id: 3,
      cost: '2000-5000',
      regularPrice: 2000,
      premiumPrice: 5000,
      title: "Special Tortiya",
      about:
          "Parlons Saveur,Culpa adipisicing et tempor aliquip. Voluptate aliqua Lorem cupidatat consequat sit elit non deserunt amet. Fugiat laboris proident exercitation elit amet voluptate laborum sint sit Lorem enim id amet. Ad duis do id dolore reprehenderit deserunt tempor anim deserunt ut culpa cupidatat. Do mollit fugiat pariatur et dolor pariatur irure reprehenderit magna consectetur adipisicing. Sit non laborum ut ad amet. Amet enim sunt ea excepteur minim cupidatat cillum laborum aliquip.",
      date: "05 Février 2022",
      day: "Mercredi",
      fromTo: "10:00 - 12:00",
      location: "Hotel 2F",
      images: "assets/image/foodE.png",
      auteur: 'Tatumi Aldini',
      autorImage: "assets/profil/deguner.png",
      duration: "2"),
  EventModel(
      id: 4,
      cost: '2000-5000',
      regularPrice: 2000,
      premiumPrice: 5000,
      title: "Saveur D'Asie",
      about:
          "Au pays des Samurais,Ullamco in do commodo veniam fugiat aute pariatur aute minim. Ex minim aliquip laboris pariatur do. Irure nostrud occaecat adipisicing incididunt laboris sint enim sint. Dolore voluptate aliquip id tempor eu veniam anim cillum tempor ad. Dolore aliqua do quis exercitation officia officia adipisicing anim qui.",
      date: "10 Mars 2022",
      day: "Mercredi",
      fromTo: "18:00 - 20:00",
      location: "Hotel Dolce Plazza",
      images: "assets/image/gastroE.png",
      auteur: 'Marcel Brekelmans',
      autorImage: "assets/profil/degustation.png",
      duration: "2"),
  EventModel(
      id: 5,
      cost: '2000-5000',
      regularPrice: 2000,
      premiumPrice: 5000,
      title: "En route pour Jupiter",
      about:
          "Les nouvelles inventions,Laboris culpa ex sint ullamco. Esse aute Lorem eu eu. Elit nostrud nostrud id elit. Velit adipisicing eu cupidatat est Lorem ut labore aliqua officia. Cupidatat laborum nulla laboris nulla ut enim qui ad cupidatat cillum. Esse sunt qui sit voluptate est ipsum quis id duis adipisicing. Adipisicing dolore Lorem eiusmod mollit.",
      date: "06 Mai 2022",
      day: "Mardi",
      fromTo: "20:00 - 23:00",
      location: "La Tour Tesla",
      images: "assets/image/ImageBannerE.png",
      auteur: "Tony Stark",
      autorImage: "assets/profil/techno.png",
      duration: "3"),
  EventModel(
      id: 5,
      cost: '20000-50000',
      regularPrice: 20000,
      premiumPrice: 50000,
      title: "Fresh Humans",
      about:
          "Fashion Week, Irure sint cillum in enim culpa irure ipsum sint commodo officia laborum ea. Incididunt Lorem magna eu qui excepteur fugiat ut non pariatur. Lorem quis eu incididunt ex amet et ipsum officia id consectetur sit. Nisi in nulla exercitation dolor proident in incididunt aliquip.",
      date: " 24 Mars 2022",
      day: "Lundi",
      fromTo: "20:00 - 00:00",
      location: "Palais des Congrés",
      images: "assets/image/ImageBannerE2.png",
      auteur: 'Ken Kaneki',
      autorImage: "assets/profil/mode.png",
      duration: "2"),
];