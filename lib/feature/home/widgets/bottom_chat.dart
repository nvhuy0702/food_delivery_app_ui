import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/core/util/edg_insets.dart';
import 'package:food_delivery_app_ui/gen/assets.gen.dart';

class BottomChat extends StatefulWidget {
  final Function(String chat)? callback;
  const BottomChat({
    this.callback,
    super.key,
  });

  @override
  State<BottomChat> createState() => _BottomChatState();
}

class _BottomChatState extends State<BottomChat> {

  final TextEditingController _controller = TextEditingController();



  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(displayWidth * .05),
      height: displayWidth * .155,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.1),
            blurRadius: 30,
            offset: const Offset(0, 10),
          ),
        ],
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(
        child: TextFormField(
          controller: _controller,
          onChanged: (value) {
            setState(() {
              _controller.text = value;
              _controller.selection = TextSelection.fromPosition(TextPosition(offset: _controller.text.length));
            });
          },
          onEditingComplete: () {
            setState(() {
              if (_controller.text.isNotEmpty) {
                widget.callback?.call(_controller.text);
                _controller.text = "";
              }
            });
          },
          decoration: InputDecoration(
              contentPadding: AppEdgeInsets.allM,
              border: InputBorder.none,
              suffixIcon: IconButton(
                padding: EdgeInsets.zero,
                visualDensity: const VisualDensity(
                  horizontal: VisualDensity.minimumDensity,
                  vertical: VisualDensity.minimumDensity,
                ),
                onPressed: () {
                  setState(() {
                    if (_controller.text.isNotEmpty) {
                      widget.callback?.call(_controller.text);
                      _controller.text = "";
                    }
                  });
                },
                icon: Image.asset(AppAssets.icons.icSend.path),
              )),
        ),
      ),
    );
  }
}
