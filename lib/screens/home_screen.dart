import 'package:flutter/material.dart';
import 'package:gaming_gear_shop/models/controller.dart';
import 'package:gaming_gear_shop/screens/accessories_page.dart';
import 'package:gaming_gear_shop/screens/games_list_page.dart';
import 'package:gaming_gear_shop/screens/product_details_page.dart';
import 'package:gaming_gear_shop/shop_data.dart';
import 'package:gaming_gear_shop/widgets/accessories_tabBar.dart';
import 'package:gaming_gear_shop/widgets/on_display_prod.dart';
import 'package:gaming_gear_shop/widgets/rating_stars.dart';
import 'package:gaming_gear_shop/widgets/shopping_cart_bottom_right.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedTabIndex = 0;

  void _handleTabChange(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  Widget _buildPageContent() {
    switch (_selectedTabIndex) {
      case 0:
        return _buildControllersPage();
      case 1:
        return GameListPage();
      case 2:
        return AccessoriesPage();
      default:
        return _buildControllersPage();
    }
  }

  Widget _buildControllersPage() {
    return Column(
      children: [
        OnDisplayProd(
          onDisplayProdData: onDisplay, key: UniqueKey(),
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.only(left: 15.0),
          child: const Text(
            'New Arrival',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontFamily: 'Kanit',
              color: Colors.black,
              fontSize: 18.5,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: newArrivals.length,
            itemBuilder: (BuildContext context, int index) {
              Controller item = newArrivals[index];
              return Container(
                width: double.infinity,
                height: 100.0,
                margin: const EdgeInsets.symmetric(vertical: 15.0),
                child: GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProductDetailsPage(product: item),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        right: 0,
                        child: Container(
                          width: 280,
                          height: 100.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                offset: const Offset(0.2, 0.5),
                                blurRadius: 0.6,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 50.0, bottom: 5.0),
                                child: Text(
                                  item.name,
                                  style: const TextStyle(
                                    fontSize: 15.5,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  softWrap: false,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 50.0, bottom: 5.0),
                                child: RatingStars(
                                  rating: item.rating,
                                  fontSize: 16,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 50.0),
                                child: Text(
                                  '\$${item.price.toString()}',
                                  style: const TextStyle(
                                    fontSize: 15.5,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  softWrap: false,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        child: Hero(
                          tag: item.imageURL[0],
                          child: Image.asset(
                            item.imageURL[0],
                            width: 120,
                            height: 100,
                          ),
                        ),
                      ),
                      ShoppingCartBottomRight(),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: IconButton(
            icon: const Icon(Icons.drag_handle_sharp),
            onPressed: () {},
            color: Colors.black,
            iconSize: 30,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
              color: Colors.black,
              iconSize: 30,
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey[100],
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: const Text(
                    'Welcome to\nSerizawa Gaming Shop',
                    style: TextStyle(
                      fontFamily: 'Kanit',
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      height: 1.2,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
            AccessoriesTabBar(
              startIndex: _selectedTabIndex,
              tabItems: const ['controllers', 'games', 'accessories'],
              onTabChange: _handleTabChange,
            ),
            Expanded(
              child: _buildPageContent(),
            ),
          ],
        ),
      ),
    );
  }
}
