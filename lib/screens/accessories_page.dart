import 'package:flutter/material.dart';
import 'package:gaming_gear_shop/models/controller.dart';
import 'package:gaming_gear_shop/screens/product_details_page.dart';
import 'package:gaming_gear_shop/shop_data.dart';
import 'package:gaming_gear_shop/widgets/on_display_prod.dart';
import 'package:gaming_gear_shop/widgets/rating_stars.dart';
import 'package:gaming_gear_shop/widgets/shopping_cart_bottom_right.dart';

class AccessoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildControllersPage(context),
    );
  }

  Widget _buildControllersPage(BuildContext context) {
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

    return Column(
      children: [
        OnDisplayProd(
          onDisplayProdData: onDila,
          key: UniqueKey(),
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.only(left: 15.0),
          // child: const Text(
          //   'Accessories',
          //   textAlign: TextAlign.start,
          //   style: TextStyle(
          //     fontFamily: 'Kanit',
          //     color: Colors.black,
          //     fontSize: 18.5,
          //   ),
          // ),
        ),
        Expanded(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: accessoriesList.length,
            itemBuilder: (BuildContext context, int index) {
              Controller item = accessoriesList[index];
              return Container(
                width: double.infinity,
                height: 150.0,
                margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProductDetailsPage(product: item),
                    ),
                  ),
                  child: Card(
                    elevation: 3.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Hero(
                            tag: item.imageURL[0],
                            child: Image.asset(
                              item.imageURL[0],
                              width: 100,
                              height: 100,
                            ),
                          ),
                          SizedBox(width: 16.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  item.name,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(height: 8.0),
                                RatingStars(
                                  rating: item.rating,
                                  fontSize: 16,
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  '\$${item.price.toString()}',
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ShoppingCartBottomRight(),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
