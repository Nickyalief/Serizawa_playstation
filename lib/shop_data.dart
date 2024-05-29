import 'package:gaming_gear_shop/models/controller.dart';

String controllerInfo =
    '''The dualshock wireless controller for PS5 gives you what you want in your gaming from precision control over your games to sharing the best gaming experience with the oncontroller headphone jack ...''';

String controllerInfoGame =
    '''The Dualshock wireless controller for PC gaming offers precise control and easy sharing with its built-in headphone jack, enhancing your gameplay experience ...''';

Controller onDisplay = Controller(
  name: 'Dualshock 5 space custom',
  rating: 4,
  price: 60,
  imageURL: ['assets/images/space_custom_controller.png'],
  productCategory: 'Playstation',
  productInfo: controllerInfo,
);

Controller onDis = Controller(
  name: 'Ghost of Tsushima',
  rating: 4,
  price: 60,
  imageURL: ['assets/images/games_06.jpg'],
  productCategory: 'Playstation',
  productInfo: controllerInfoGame,
);

Controller onDila = Controller(
  name: 'PULSE 3D™ wireless headset',
  rating: 4,
  price: 60,
  imageURL: ['assets/images/accessories_2.png'],
  productCategory: 'Playstation',
  productInfo: controllerInfo,
);

List<Controller> newArrivals = [
  Controller(
    name: 'Dualshock 5 pure white',
    rating: 4,
    price: 60,
    imageURL: [
      'assets/images/white_controller.png',
      'assets/images/white_controller1.png',
      'assets/images/white_controller2.png',
      'assets/images/white_controller4.png',
    ],
    productCategory: 'Playstation',
    productInfo: controllerInfo,
  ),
  Controller(
    name: 'Dualshock 5 Jet black',
    rating: 4,
    price: 55,
    imageURL: [
      'assets/images/black_controller2.png',
      'assets/images/black_controller1.png',
    ],
    productCategory: 'Playstation',
    productInfo: controllerInfo,
  ),
  Controller(
    name: 'Dualshock 4 f-standard',
    rating: 5,
    price: 60,
    imageURL: ['assets/images/f-standard-red_controller.png'],
    productCategory: 'Playstation',
    productInfo: controllerInfo,
  )
];

List<Controller> gameList = [
  Controller(
    name: "Resident Evil Village",
    rating: 4,
    price: 59.86.toInt(),
    imageURL: [
      'assets/images/games_01.jpg',
    ],
    productCategory: 'Playstation',
    productInfo: controllerInfoGame,
  ),
  Controller(
    name: "Ryu Ga Gotoku 7: Hikari To Yami No Yukue",
    rating: 4,
    price: 37.32.toInt(),
    imageURL: [
      'assets/images/games_02.jpg',
    ],
    productCategory: 'Playstation',
    productInfo: controllerInfoGame,
  ),
  Controller(
    name: "Marvel's Spider-Man: Miles Morales",
    rating: 4,
    price: 40.96.toInt(),
    imageURL: [
      'assets/images/games_03.jpg',
    ],
    productCategory: 'Playstation',
    productInfo: controllerInfoGame,
  ),
  Controller(
    name: "SEKIRO: SHADOWS DIE TWICE",
    rating: 4,
    price: 23.26.toInt(),
    imageURL: [
      'assets/images/games_04.jpg',
    ],
    productCategory: 'Playstation',
    productInfo: controllerInfoGame,
  ),
  Controller(
    name: "NBA 2K21 Next Generation",
    rating: 4,
    price: 31.75.toInt(),
    imageURL: [
      'assets/images/games_05.jpg',
    ],
    productCategory: 'Playstation',
    productInfo: controllerInfoGame,
  ),
  Controller(
    name: "Ghost of Tsushima",
    rating: 4,
    price: 23.26.toInt(),
    imageURL: [
      'assets/images/games_06.jpg',
    ],
    productCategory: 'Playstation',
    productInfo: controllerInfoGame,
  ),
  Controller(
    name: "The Last of Us™ Part II",
    rating: 4,
    price: 29.04.toInt(),
    imageURL: [
      'assets/images/games_07.jpg',
    ],
    productCategory: 'Playstation',
    productInfo: controllerInfoGame,
  ),
  Controller(
    name: "Assassin's Creed Valhalla",
    rating: 4,
    price: 43.25.toInt(),
    imageURL: [
      'assets/images/games_08.jpg',
    ],
    productCategory: 'Playstation',
    productInfo: controllerInfoGame,
  ),
];

List<Controller> accessoriesList = [
  Controller(
    name: "DualSense™ charging station",
    rating: 4,
    price: 42.15.toInt(),
    imageURL: ["assets/images/accessories_1.png"],
    productCategory: "Accessories PS5",
    productInfo:
        "Charge up to two DualSense wireless controllers simultaneously without having to connect them to your PlayStation 5 console.",
  ),
  Controller(
    name: "PULSE 3D™ wireless headset",
    rating: 5,
    price: 99.00.toInt(),
    imageURL: ["assets/images/accessories_2.png"],
    productCategory: "Accessories PS5",
    productInfo:
        "Play in comfort with a wireless headset fine-tuned for 3D Audio on PS5 consoles. Featuring USB Type-C® charging and dual noise-cancelling microphones, you can keep the party chat flowing with crystal-clear voice capture.",
  ),
  Controller(
    name: "Media remote",
    rating: 4,
    price: 29.99.toInt(),
    imageURL: ["assets/images/accessories_3.png"],
    productCategory: "Accessories PS5",
    productInfo:
        "Conveniently control movies, streaming services, and more on your PS5 console with an intuitive layout.",
  ),
  Controller(
    name: "HD camera",
    rating: 4,
    price: 49.99.toInt(),
    imageURL: ["assets/images/accessories_4.png"],
    productCategory: "Accessories PS5",
    productInfo:
        "Add yourself to your gameplay videos and broadcasts with smooth, sharp, full-HD capture.",
  ),
  Controller(
    name: "Wireless Headset",
    rating: 5,
    price: 99.00.toInt(),
    imageURL: ["assets/images/accessories_5.png"],
    productCategory: "Accessories PS4",
    productInfo:
        "Experience the gold standard in gaming audio with the redesigned Wireless Headset – now with refined comfort and hidden dual mics for enhanced in-game communication.",
  ),
  Controller(
    name: "PlayStation Camera",
    rating: 4,
    price: 190.00.toInt(),
    imageURL: ["assets/images/accessories_6.png"],
    productCategory: "Accessories PS4",
    productInfo:
        "PlayStation Camera is your key to unlocking amazing new gameplay experiences in PlayStation VR – not to mention a variety of extra PS4 features.",
  ),
  Controller(
    name: "DUALSHOCK 4 Charging Station",
    rating: 4,
    price: 61.99.toInt(),
    imageURL: ["assets/images/accessories_7.png"],
    productCategory: "Accessories PS4",
    productInfo:
        "Make sure the power is in your hands with this official charging station – it can power up to two DUALSHOCK 4 wireless controllers at the same time.",
  ),
  Controller(
    name: "PS4 Vertical stand",
    rating: 3,
    price: 11.99.toInt(),
    imageURL: ["assets/images/accessories_8.png"],
    productCategory: "Accessories PS4",
    productInfo:
        "Display your PS4 the way you want to and save space around your TV.",
  ),
];
