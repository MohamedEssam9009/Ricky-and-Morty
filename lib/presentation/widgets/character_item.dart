import '../../constants/my_colors.dart';
import '../../constants/strings.dart';
import '../../data/models/characters.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CharacterItem extends StatelessWidget {
  const CharacterItem({super.key, required this.character});

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      padding: const EdgeInsetsDirectional.all(4),
      decoration: BoxDecoration(
        color: MyColors.myWhite,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: InkWell(
        onTap: () => Navigator.pushNamed(
          context,
          charactersDetailsScreen,
          arguments: character,
        ),
        child: GridTile(
          footer: Hero(
            tag: character.id,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 10.w),
              color: Colors.black54,
              alignment: Alignment.bottomCenter,
              child: Text(
                character.name,
                style: TextStyle(
                  height: 1.3.h,
                  fontSize: 16.sp,
                  color: MyColors.myWhite,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          child: Container(
            color: MyColors.myGrey,
            child: character.image.isNotEmpty
                ? FadeInImage.assetNetwork(
                    width: double.infinity,
                    height: double.infinity,
                    placeholder: 'assets/images/loading.gif',
                    image: character.image,
                    fit: BoxFit.cover,
                  )
                : Image.asset('assets/images/placeholder.jpg'),
          ),
        ),
      ),
    );
  }
}
