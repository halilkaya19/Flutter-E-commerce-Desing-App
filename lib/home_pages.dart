import 'package:click_mart_desing/product_detail.dart';
import 'package:flutter/material.dart';

class HomePages extends StatelessWidget {
  HomePages({Key? key}) : super(key: key);

  final List<String> categoryNamed = [
    "Cloth",
    "Shoes",
    "Bags",
    "Clots",
    "Shoes",
  ];

  final List<String> mostPopiler = ["Dream Cream", "Test 1", "Galiden Shops"];

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final TextTheme textTheme = theme.textTheme;
    final ColorScheme csh = theme.colorScheme;
    final MediaQueryData md = MediaQuery.of(context);
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: md.size.width,
              height: md.size.height * 0.10,
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: SizedBox(
                        width: 60,
                        height: 60,
                        child: Image.network(
                          "https://e7.pngegg.com/pngimages/348/800/png-clipart-man-wearing-blue-shirt-illustration-computer-icons-avatar-user-login-avatar-blue-child-thumbnail.png",
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text("ClickMart", style: textTheme.bodyLarge),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.notification_add, size: 32),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 25, right: 25),
              margin: EdgeInsets.only(top: 10),
              width: md.size.width,
              height: md.size.height * 0.07,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: TextField(
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                      ),
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.mic),
                        prefixIcon: Icon(Icons.search),
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                        hintText: "Search here..",
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 9),
                    width: 50,
                    decoration: BoxDecoration(
                      color: csh.primary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.ac_unit_outlined, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25, bottom: 20),
              padding: EdgeInsets.only(left: 20),
              width: md.size.width,
              height: md.size.height * 0.18,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 15),
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        stops: [0.1, 0.75],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0x96E5E5E5), Color(0xFFA4ADDC)],
                      ),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black,
                    ),
                    width: md.size.width - 104,
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "50% offer",
                              style: TextStyle(
                                fontSize: 26,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "On everythink today",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Spacer(),
                            SizedBox(
                              width: 110,
                              height: 34,
                              child: MaterialButton(
                                color: Colors.black,
                                onPressed: () => "",
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    "Get Now",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
                itemCount: 3,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 13),
              width: md.size.width,
              height: 35,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(left: 13),
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    decoration: BoxDecoration(
                      color: index == 0 ? Colors.black : Colors.grey,
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: Center(
                      child: Text(
                        categoryNamed[index],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  );
                },
                itemCount: categoryNamed.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 16,
                left: 25,
                right: 25,
                bottom: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Most Popular",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: md.size.width,
              height: md.size.height * 0.34,
              child: ListView.builder(
                itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductDetailPage(),));
                      },
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 10,bottom:10),
                                alignment: Alignment.center,
                                width:md.size.width / 2 - 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey.shade200
                                ),
                                height: md.size.height * 0.23,
                                child: Image.asset("assets/images/new_${index+1}.png",fit: BoxFit.cover,width: 130,height: 120,),
                              ),
                              Text(mostPopiler[index].toString(),style: TextStyle(fontSize: 14,color: Colors.black),),
                              SizedBox(height:5),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("4.5 (46)",style: TextStyle(fontSize: 13,color: Colors.black),),
                                  SizedBox(width: 16,),
                                  Text("200 sold",style: TextStyle(fontSize: 13,color: Colors.black),),
                                ],
                              ),
                              SizedBox(height: 6,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("40.00",style: TextStyle(fontSize: 14,color: Colors.black),),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    );
                },
                itemCount: mostPopiler.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 16,
                left: 25,
                right: 25,
                bottom: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Most Popular",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: md.size.width,
              height: md.size.height * 0.34,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 10,bottom:10),
                            alignment: Alignment.center,
                            width:md.size.width / 2 - 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.shade200
                            ),
                            height: md.size.height * 0.23,
                            child: Image.asset("assets/images/new_${index+1}.png",fit: BoxFit.cover,width: 130,height: 120,),
                          ),
                          Text(mostPopiler[index].toString(),style: TextStyle(fontSize: 14,color: Colors.black),),
                          SizedBox(height:5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("4.5 (46)",style: TextStyle(fontSize: 13,color: Colors.black),),
                              SizedBox(width: 16,),
                              Text("200 sold",style: TextStyle(fontSize: 13,color: Colors.black),),
                            ],
                          ),
                          SizedBox(height: 6,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("40.00",style: TextStyle(fontSize: 14,color: Colors.black),),
                            ],
                          )
                        ],
                      )
                    ],
                  );
                },
                itemCount: mostPopiler.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
