part of '../home_screen.dart';

class _TabBar extends StatelessWidget {
  const _TabBar();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final items = ['Music', 'Podcasts & Shows'];
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      child: Row(
        children: items.map((item) {
          return Container(
            margin: const EdgeInsets.only(right: 8.0),
            child: Chip(
              side: BorderSide.none,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              backgroundColor: colorScheme.onBackground.withOpacity(.15),
              label: Text(item),
            ),
          );
        }).toList(),
      ),
    );
  }
}
