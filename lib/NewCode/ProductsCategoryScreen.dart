import 'package:flutter/material.dart';
import 'package:grocery/Item%20Detail%20Module/itemDetails.dart';

class ProductsCategoryScreen extends StatelessWidget {
  String title;
  ProductsCategoryScreen({super.key, required this.title});
  List categoryImage = [
    "https://images.pexels.com/photos/1656666/pexels-photo-1656666.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/65175/pexels-photo-65175.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/197907/pexels-photo-197907.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/2064366/pexels-photo-2064366.jpeg?auto=compress&cs=tinysrgb&w=600https://images.pexels.com/photos/825661/pexels-photo-825661.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/2789328/pexels-photo-2789328.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/6532373/pexels-photo-6532373.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/4871159/pexels-photo-4871159.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/1639565/pexels-photo-1639565.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/1633578/pexels-photo-1633578.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/96974/pexels-photo-96974.jpeg?auto=compress&cs=tinysrgb&w=600"
  ];
  List vegatbleImages = [
    "https://images.pexels.com/photos/1656666/pexels-photo-1656666.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://post.healthline.com/wp-content/uploads/2019/09/daikon-radish-1296x728-header-1296x728.jpg",
    "https://visitokinawajapan.com/wp-content/themes/visit-okinawa/assets/img/discover/133/di133_kv_okinawan-island-vegetables.jpg",
    "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/carrot-overhead-group-lined-up-on-old-brown-wooden-royalty-free-image-625009188-1564523268.jpg?crop=0.66635xw:1xh;center,top&resize=480:*",
    "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/rustic-organic-turnips-on-genuine-wood-background-royalty-free-image-628310684-1564523177.jpg?crop=0.670xw:1.00xh;0.109xw,0&resize=480:*",
    "https://cdn.qvm.com.au/wp-content/uploads/2020/10/BerriesCorner-Broccoli-2-600x600.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Australia_Cucumbers_for_sale_at_store.jpg/1200px-Australia_Cucumbers_for_sale_at_store.jpg"
  ];
  List vegetableNames = [
    "Spinach",
    "Radish",
    "Gourd",
    "Carrots",
    "Turnip",
    "Brocolli",
    "Cucumber",
  ];
  List storeName = [
    "D Mart Phase 3 Hayatabad Peshawar",
    "Wadud Home Store, PDA Complex Phase 4 Hayatabad Peshawar",
    "Smart Care Phase 2 Hayatabad Peshawar",
    "Wadud Home Store, PDA Complex Phase 4 Hayatabad Peshawar",
    "D Mart Phase 3 Hayatabad Peshawar",
    "Wadud Home Store, PDA Complex Phase 4 Hayatabad Peshawar",
    "D Mart Phase 3 Hayatabad Peshawar",
    "Wadud Home Store, PDA Complex Phase 4 Hayatabad Peshawar",
  ];
  List fruitImages = [
    "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/Oranges_-_whole-halved-segment.jpg/1200px-Oranges_-_whole-halved-segment.jpg",
    "https://images-prod.healthline.com/hlcmsresource/images/AN_images/health-benefits-of-apples-1296x728-feature.jpg",
    "https://images.heb.com/is/image/HEBGrocery/000583329?fit=constrain,1&wid=800&hei=800&fmt=jpg&qlt=85,0&resMode=sharp2&op_usm=1.75,0.3,2,0",
  ];
  List fruitNames = [
    "Oranges",
    "Apple",
    "Watermelon",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemCount: title == "Vegetables"
            ? vegetableNames.length
            : title == "Fruit"
                ? fruitNames.length
                : vegetableNames.length,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.only(
            bottom: title == "Vegetables"
                ? index == vegetableNames.length - 1
                    ? 18
                    : 0
                : index == fruitImages.length - 1
                    ? 18
                    : 0,
          ),
          child: ProductCard(
            image: title == "Vegetables"
                ? vegatbleImages[index]
                : title == "Fruit"
                    ? fruitImages[index]
                    : vegatbleImages[index],
            itemName: title == "Vegetables"
                ? vegetableNames[index]
                : title == "Fruit"
                    ? fruitNames[index]
                    : vegatbleImages[index],
            storeName: storeName[index],
          ),
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  String image;
  String storeName;
  String itemName;
  ProductCard({
    super.key,
    required this.image,
    required this.itemName,
    required this.storeName,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
onTap: (){
  Navigator.push(context, MaterialPageRoute(builder: (_){
    return ItemDetails();
  }));
},

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [],
          ),
          SizedBox(
            height: 20,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Container(
              height: 180,
              width: MediaQuery.of(context).size.width * .95,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(image),
                  fit: BoxFit.cover,
                ),
                // color: Colors.red,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(19),
                            bottomRight: Radius.circular(19),
                          ),
                        ),
                        child: Text(
                          "Featured",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.only(right: 10),
                        child: (Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                          size: 18,
                        )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(19),
                        bottomRight: Radius.circular(19),
                      ),
                    ),
                    child: Text(
                      "Special Discount 25% OFF ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * .95,
            margin: EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    "$itemName",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * .95,
            // margin: EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    "$storeName",
                    style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  width: 7.5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 18,
                    ),
                    Text(
                      "3.7 ",
                      // style: TextStyle(fontWeight: FontWeight.bold),
                      // overflow: TextOverflow.ellipsis,
                    ),
                    Text("(100)"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
