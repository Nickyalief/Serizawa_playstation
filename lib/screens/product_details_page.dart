import 'package:flutter/material.dart';
import 'package:gaming_gear_shop/widgets/preview_image.dart';
import 'package:gaming_gear_shop/widgets/rating_stars.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({Key? key, required this.product}) : super(key: key);
  final dynamic product;

  @override
  _ProductDetailsPageState createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  late String heroImage;
  bool isFavorite = false;

  @override
  void initState() {
    super.initState();
    heroImage = widget.product.imageURL[0];
  }

  void _handleState(String image) {
    setState(() {
      heroImage = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[100],
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 360,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: 0,
                      right: 0,
                      left: 0,
                      child: Container(
                        height: 350,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/product_details_background.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 25.0,
                      left: 10.0,
                      right: 10.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: Icon(Icons.arrow_back),
                            iconSize: 30.0,
                            color: Colors.white,
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                          IconButton(
                            icon: Icon(
                              isFavorite
                                  ? Icons.favorite
                                  : Icons.favorite_border_outlined,
                            ),
                            iconSize: 30.0,
                            color: Colors.white,
                            onPressed: () {
                              setState(() {
                                isFavorite = !isFavorite;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: -80,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Hero(
                          tag: widget.product.imageURL[0],
                          child: Image(
                            image: AssetImage(heroImage),
                            width: 300.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 70.0),
              if (widget.product.imageURL.length > 1)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: widget.product.imageURL.map<Widget>((image) {
                    return PreviewImage(
                      image: image,
                      onPressed: _handleState,
                    );
                  }).toList(),
                ),
              Container(
                padding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                margin: EdgeInsets.only(bottom: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.product.name,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontFamily: 'Kanit',
                            letterSpacing: .8,
                          ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      widget.product.productCategory,
                      style: TextStyle(
                        letterSpacing: 1.0,
                        fontSize: 14.5,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    RatingStars(
                      rating: widget.product.rating,
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      widget.product.productInfo,
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.normal,
                            fontSize: 16.0,
                            height: 1.5,
                          ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${widget.product.price}',
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                fontFamily: 'Kanit',
                                letterSpacing: .8,
                              ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 25.0),
                        backgroundColor: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'ADD TO CART',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(
                                fontFamily: 'Kanit',
                                letterSpacing: .8,
                                color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
