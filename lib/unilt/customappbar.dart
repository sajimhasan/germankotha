import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String appbarname;
  final VoidCallback ontap;

  const CustomAppBar({super.key, required this.appbarname, required this.ontap});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return AppBar(
      title: Text(appbarname, style: textTheme.displaySmall),
      centerTitle: true,
      automaticallyImplyLeading: true,
      leading: CircleAvatar(
        child:IconButton(onPressed: ontap, icon: Icon(Icons.arrow_back)),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications_none_sharp),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}