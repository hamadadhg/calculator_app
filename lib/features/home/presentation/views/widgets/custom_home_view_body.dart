import 'package:calculator/features/home/presentation/views/widgets/custom_sliver_grid_view.dart';
import 'package:calculator/features/home/presentation/views/widgets/custom_top_section.dart';
import 'package:flutter/material.dart';

class CustomHomeViewBody extends StatelessWidget {
  const CustomHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: CustomTopSection()),
          const CustomSliverGridView(),
          SliverToBoxAdapter(child: SizedBox(height: size.height * 0.03)),
        ],
      ),
    );
  }
}
