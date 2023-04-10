import 'package:flutter/material.dart';

import '../../../utils/utils_exports.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      height: h,
      width: w,
      color: Colors.blueAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Hola a todos!!',
            style: FontsApp.oldStandardTt,
          ),
          const SizedBox(
            // height: 400,
            width: 500,
            child: TextFieldWidget(label: 'Este es el label'),
          )
        ],
      ),
    ));
  }
}

class TextFieldWidget extends StatefulWidget {
  final String label;
  const TextFieldWidget({super.key, required this.label});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  late TextEditingController controller;
  OverlayEntry? entry;
  final LayerLink layerLink = LayerLink();
  final focusNode = FocusNode();

  @override
  void initState() {
    controller = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // showOverlay();
    });
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        showOverlay();
      } else {
        hideOverlay();
      }
    });
    super.initState();
  }

  void showOverlay() {
    final overlay = Overlay.of(context);
    final renderBox = context.findRenderObject() as RenderBox;
    final size = renderBox.size;
    final offset = renderBox.localToGlobal(Offset.zero);
    entry = OverlayEntry(
        builder: ((context) => Positioned(
              left: offset.dx,
              top: offset.dy + size.height,
              width: size.width,
              child: CompositedTransformFollower(
                  link: layerLink,
                  showWhenUnlinked: false,
                  offset: Offset(0, size.height + 8),
                  child: buildOverlay()),
            )));
    overlay.insert(entry!);
  }

  hideOverlay() {
    entry?.remove();
    entry = null;
  }

  Widget buildOverlay() => Material(
        elevation: 8,
        child: Column(
          children: [
            ListTile(
              leading: Image.network(
                'https://cdn.icon-icons.com/icons2/2859/PNG/512/avatar_face_girl_female_woman_profile_smiley_happy_people_icon_181665.png',
                fit: BoxFit.cover,
              ),
              title: const Text('Item 1'),
              subtitle: const Text('Flutter Team'),
              onTap: () {
                controller.text = 'Item 1';
                hideOverlay();
                focusNode.unfocus();
              },
            ),
            ListTile(
              leading: Image.network(
                'data:image/jpeg;base64,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',
                fit: BoxFit.cover,
              ),
              title: const Text('Item 2'),
              subtitle: const Text('Falkout Team'),
              onTap: () {
                controller.text = 'Item 2';
                hideOverlay();
                focusNode.unfocus();
              },
            ),
            ListTile(
              leading: Image.network(
                'data:image/jpeg;base64,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',
                fit: BoxFit.cover,
              ),
              title: const Text('Item 3'),
              subtitle: const Text('Test Team'),
              onTap: () {
                controller.text = 'Item 3';
                hideOverlay();
                focusNode.unfocus();
              },
            ),
          ],
        ),
      );

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => CompositedTransformTarget(
        link: layerLink,
        child: TextField(
          controller: controller,
          decoration: StylesApp.inputDecorationItem.copyWith(
            label: Text(widget.label),
          ),
          focusNode: focusNode,
        ),
      );
}
