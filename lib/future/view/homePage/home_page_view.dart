import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:travel_app/core/constans/color_theme.dart';
import 'package:travel_app/core/constans/image_constants.dart';
import 'package:travel_app/core/constans/text_constants.dart';
import 'package:travel_app/product/widgets/clipper_widget.dart';
import 'package:travel_app/product/widgets/upcomming_widget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextStyle? get myStyle => context.textTheme.headline5
      ?.copyWith(fontWeight: FontWeight.w700, color: AppColor().textColor);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            buildClipPath(context),
            buildBody(context)
          ],
        ),
      ),
    );
  }

  Padding buildBody(BuildContext context) {
    return Padding(
            padding: context.horizontalPaddingNormal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildFavSee(context),
                builViewBuilder(context),
                Text(
                  UITrravelConstans.sutitle2,
                  style: myStyle,
                ),
                UpComming(items: upcomming()),
                SizedBox(
                  height: context.height * 0.02,
                ),
                Text(
                  UITrravelConstans.sutitle3,
                  style: myStyle,
                ),
              buildListViewCars()
              ],
            ),
          );
  }

  ListView buildListViewCars() {
    return ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) =>   Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5,
                              offset: Offset(1, 1),
                              color: Colors.grey)
                        ]),
                    child: ListTile(
                      leading: Icon(
                        Icons.car_rental,
                        color: Colors.blue,
                      ),
                      title: Text(
                        'Jannuary 14, Monday',
                        style: context.textTheme.bodyText1?.copyWith(
                            color: AppColor().blue,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        '\$10',
                        style: context.textTheme.subtitle2?.copyWith(color: AppColor().blue),
                      ),
                      trailing: Icon(Icons.phone,color: Colors.green,),
                    ),
                  ),
                ),);
  }

  SizedBox builViewBuilder(BuildContext context) {
    return SizedBox(
      height: context.dynamicHeight(0.2),
      child: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: context.horizontalPaddingNormal,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aHVtYW58ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80',
                    height: context.height * 0.1,
                    width: context.dynamicWidth(0.2),
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  'Elgiz Cebrayilov',
                  style: context.textTheme.subtitle1
                      ?.copyWith(color: AppColor().blue),
                ),
                Text('Developer',
                    style: context.textTheme.subtitle2
                        ?.copyWith(color: context.randomColor)),
              ],
            ),
          );
        },
      ),
    );
  }

  ClipPath buildClipPath(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        padding: context.paddingMedium,
        height: context.dynamicHeight(0.3),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            AppColor().containerBlue,
            AppColor().containerLightBlue
          ]),
        ),
        child: Column(
          children: [
            buildHeaderMenu(context),
            buildTextField(context),
          ],
        ),
      ),
    );
  }

  ListTile buildFavSee(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      leading: Text(
        UITrravelConstans.sutitle1,
        style: myStyle,
      ),
      trailing: TextButton(
        onPressed: () {},
        child: Text(UITrravelConstans.seeAllButton),
      ),
    );
  }

  Padding buildTextField(BuildContext context) {
    return Padding(
      padding: context.verticalPaddingMedium,
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              borderSide: BorderSide.none),
        ).copyWith(
          hintText: 'Search places',
          prefixIcon: Icon(
            Icons.search,
            color: AppColor().grey,
          ),
        ),
      ),
    );
  }

  Row buildHeaderMenu(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.menu,
          color: AppColor().white,
        ),
        Text(
          UITrravelConstans.homePageTitle,
          style: context.textTheme.headline5?.copyWith(
            color: AppColor().white,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox()
      ],
    );
  }
}
/*


Image.network(
                    'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aHVtYW58ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80',
                    height: context.height * 0.2,
                    width: context.dynamicWidth(0.3),
                  )

 */