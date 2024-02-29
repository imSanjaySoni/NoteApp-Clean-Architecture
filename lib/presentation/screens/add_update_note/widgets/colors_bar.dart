part of '../add_update_note_screen.dart';

class ColorsBar extends StatelessWidget {
  const ColorsBar({
    super.key,
    this.selectedColor,
    required this.onChanged,
  });

  final Color? selectedColor;
  final Function(Color color) onChanged;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.only(bottom: 12),
      child: Material(
        color: selectedColor,
        child: SizedBox(
          height: kToolbarHeight,
          child: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: colors
                    .map(
                      (color) => _ColorBox(
                        color: color,
                        isSelected: selectedColor == color,
                        onTap: () => onChanged(color),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ),
      ),
    ).animate(delay: 600.ms).fadeIn().slideX();
  }
}

class _ColorBox extends StatelessWidget {
  const _ColorBox({
    this.isSelected = false,
    this.onTap,
    required this.color,
  });

  final bool isSelected;
  final Color color;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacings.s),
      child: GestureDetector(
        onTap: onTap,
        child: Material(
          color: Colors.white,
          shape: const CircleBorder(),
          elevation: isSelected ? 2 : 0.2,
          child: Container(
            height: 40,
            width: 40,
            margin: const EdgeInsets.all(AppSpacings.s),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
            child: isSelected
                ? const Icon(
                    FeatherIcons.check,
                    color: AppColors.white,
                    size: 36,
                  )
                : null,
          ),
        ),
      ),
    );
  }
}
