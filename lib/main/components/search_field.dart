import 'package:flutter/material.dart';
import 'package:siclker_admin/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchField extends StatefulWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: "Search",
          fillColor: kRed60,
          filled: true,
          border: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          suffixIcon: InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding * 0.75),
              margin: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding / 2,
              ),
              decoration: const BoxDecoration(
                color: kRed80,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: SvgPicture.asset(
                  "/home/montero/Desktop/map_admin/assets/icons/Search.svg"),
            ),
          )),
    );
  }
}
