
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:travel_app/core/constans/color_theme.dart';
import 'package:travel_app/core/constans/text_constants.dart';
import 'package:travel_app/product/widgets/clipper_widget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            buildClipPath(context),
            buildFavSee(context),
          ],
        ),
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
            SizedBox(
              height: context.dynamicHeight(0.2),
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Text('data');
                },
              ),
            )
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
        style: context.textTheme.headline5?.copyWith(
            fontWeight: FontWeight.w700, color: AppColor().textColor),
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