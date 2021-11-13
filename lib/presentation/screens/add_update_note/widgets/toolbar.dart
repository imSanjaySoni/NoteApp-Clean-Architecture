import 'package:flutter/material.dart';
import 'package:note_app/presentation/theme/colors.dart';
import 'package:note_app/presentation/theme/spacing.dart';

class Toolbar extends StatelessWidget {
  const Toolbar({Key? key}) : super(key: key);

  List<_ToolOption> get tools => [
        _ToolOption(
          icon: Icons.text_fields_outlined,
          tooltip: 'Fonts',
          onPressed: () {},
        ),
        _ToolOption(
          icon: Icons.check_box_outlined,
          tooltip: 'checkbox',
          onPressed: () {},
        ),
        _ToolOption(
          icon: Icons.mic_none_outlined,
          tooltip: 'record',
          onPressed: () {},
        ),
        _ToolOption(
          icon: Icons.brush_outlined,
          tooltip: 'record',
          onPressed: () {},
        ),
        _ToolOption(
          icon: Icons.add_photo_alternate_outlined,
          tooltip: 'photos',
          onPressed: () {},
        ),
        _ToolOption(
          icon: Icons.color_lens_outlined,
          tooltip: 'color',
          onPressed: () {},
        ),
      ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.all(AppSpacings.l),
        height: kToolbarHeight,
        child: Material(
          elevation: 3,
          borderRadius: BorderRadius.circular(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: tools,
          ),
        ),
      ),
    );
  }
}

class _ToolOption extends StatelessWidget {
  const _ToolOption({
    Key? key,
    required this.onPressed,
    required this.icon,
    this.tooltip,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final IconData icon;
  final String? tooltip;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        icon,
        size: 26,
        color: AppColors.title,
      ),
      onPressed: onPressed,
      tooltip: tooltip,
    );
  }
}
