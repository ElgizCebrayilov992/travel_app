import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:travel_app/core/constans/color_theme.dart';
import 'package:travel_app/future/model/up_comming_grid.dart';

class UpComming extends StatelessWidget {
  final List<UpCommingPhoto> items;
  const UpComming({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.dynamicHeight(0.25),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: items.map<Widget>((photo) => UpCommingPhotoCard(context,photo)).toList(),
      ),
    );
  }

  Card UpCommingPhotoCard(BuildContext context,UpCommingPhoto photo) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Stack(
        children: [
          Image.network(
            photo.imageUrl??'',
            width: context.dynamicWidth(0.4),
            height: context.dynamicHeight(0.25),
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              Image.network(
                photo.flagUrl??'',
                width: context.dynamicWidth(0.1),
                height: context.dynamicHeight(0.1),
              ),
              Text(photo.upcommingString??'Loading..',style: context.textTheme.headline6?.copyWith(color: AppColor().white,fontWeight: FontWeight.w800),)
            ],
          )
        ],
      ),
    );
  }
}
