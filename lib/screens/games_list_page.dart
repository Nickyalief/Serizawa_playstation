import 'package:flutter/material.dart';
import 'package:gaming_gear_shop/models/controller.dart';
import 'package:gaming_gear_shop/screens/product_details_page.dart';
import 'package:gaming_gear_shop/shop_data.dart';
import 'package:gaming_gear_shop/widgets/on_display_prod.dart';

class GameListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildControllersPage(context),
    );
  }

  Widget _buildControllersPage(BuildContext context) {
    List<Controller> gameList = [
      Controller(
        name: "Resident Evil Village",
        rating: 4,
        price: 59,
        imageURL: [
          'assets/images/games_01.jpg',
        ],
        productCategory: 'Playstation',
        productInfo: controllerInfoGame,
      ),
      Controller(
        name: "Ryu Ga Gotoku 7: Hikari To Yami No Yukue",
        rating: 4,
        price: 37,
        imageURL: [
          'assets/images/games_02.jpg',
        ],
        productCategory: 'Playstation',
        productInfo: controllerInfoGame,
      ),
      Controller(
        name: "Marvel's Spider-Man: Miles Morales",
        rating: 4,
        price: 40,
        imageURL: [
          'assets/images/games_03.jpg',
        ],
        productCategory: 'Playstation',
        productInfo: controllerInfoGame,
      ),
      Controller(
        name: "SEKIRO: SHADOWS DIE TWICE",
        rating: 4,
        price: 23,
        imageURL: [
          'assets/images/games_04.jpg',
        ],
        productCategory: 'Playstation',
        productInfo: controllerInfoGame,
      ),
      Controller(
        name: "NBA 2K21 Next Generation",
        rating: 4,
        price: 31,
        imageURL: [
          'assets/images/games_05.jpg',
        ],
        productCategory: 'Playstation',
        productInfo: controllerInfoGame,
      ),
      Controller(
        name: "Ghost of Tsushima",
        rating: 4,
        price: 23,
        imageURL: [
          'assets/images/games_06.jpg',
        ],
        productCategory: 'Playstation',
        productInfo: controllerInfoGame,
      ),
      Controller(
        name: "The Last of Us™ Part II",
        rating: 4,
        price: 29,
        imageURL: [
          'assets/images/games_07.jpg',
        ],
        productCategory: 'Playstation',
        productInfo: controllerInfoGame,
      ),
      Controller(
        name: "Assassin's Creed Valhalla",
        rating: 4,
        price: 43,
        imageURL: [
          'assets/images/games_08.jpg',
        ],
        productCategory: 'Playstation',
        productInfo: controllerInfoGame,
      ),
    ];

    return Column(
      children: [
        OnDisplayProd(
          onDisplayProdData: onDis,
          key: UniqueKey(),
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.only(left: 15.0, top: 10.0),
          // child: const Text(
          //   'Game List',
          //   textAlign: TextAlign.start,
          //   style: TextStyle(
          //     fontFamily: 'Kanit',
          //     color: Colors.black,
          //     fontSize: 18.5,
          //   ),
          ),
        // ),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(8.0),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Two items per row
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              childAspectRatio: 0.7, // Adjust aspect ratio as needed
            ),
            itemCount: gameList.length,
            itemBuilder: (BuildContext context, int index) {
              Controller item = gameList[index];
              return GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductDetailsPage(product: item),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    // boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5)],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          item.imageURL[0],
                          width: double.infinity,
                          height: 222,
                          // fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Text(
                            //   item.name,
                            //   style: const TextStyle(
                            //     fontSize: 16.0,
                            //     fontWeight: FontWeight.bold,
                            //   ),
                            //   overflow: TextOverflow.ellipsis,
                            // ),
                            SizedBox(height: 8.0),
                          ],
                        ),
                      ),
                    ],
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
