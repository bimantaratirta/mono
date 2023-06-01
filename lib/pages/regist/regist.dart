import 'package:flutter/material.dart';

import '../../constants/button_style.dart';
import '../../constants/colors.dart';
import '../../constants/gaps.dart';
import '../../constants/sizes.dart';

class RegistPage extends StatelessWidget {
  RegistPage({super.key});
  static const String routeName = "/regist";

  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(CSize.medium),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Selamat datang,\nmau dipanggil apa?",
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: CColor.green, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              VerticalGap.medium,
              SizedBox(
                width: 300,
                child: TextField(
                  controller: _controller,
                  focusNode: _focusNode,
                  onTapOutside: (_) {
                    _focusNode.unfocus();
                  },
                  cursorWidth: 1,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: CSize.small,
                    ),
                    isDense: true,
                    isCollapsed: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: CColor.grey,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(CSize.xtraSmall),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: CColor.grey,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(CSize.xtraSmall),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: CColor.green,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(CSize.xtraSmall),
                      ),
                    ),
                  ),
                ),
              ),
              VerticalGap.small,
              ElevatedButton(
                onPressed: () {},
                style: CButtonStyle.rounded,
                child: const Text(
                  "Lanjut",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
