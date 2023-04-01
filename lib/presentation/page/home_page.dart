// ignore_for_file: deprecated_member_use

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:footesh_store/common/static_gap.dart';
import 'package:footesh_store/common/static_list.dart';
import 'package:footesh_store/presentation/style/custom_style.dart';
import 'package:footesh_store/presentation/widget/button_with_notif_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const routeName = '/home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedCategories = 0;
  List isSelectedFavorite = List.generate(shoesList.length, (index) => false);
  List isSelectedCart = List.generate(shoesList.length, (index) => false);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              _appBarContainer(),
              const VerticalGap15(),
              _searchContainer(context),
              const VerticalGap15(),
              _offersContainer(context),
              const VerticalGap15(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Most Popular',
                      style: poppins2.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const VerticalGap10(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: ListView.separated(
                      itemBuilder: ((context, index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedCategories = index;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: selectedCategories == index
                                  ? secondaryColor
                                  : quaternaryColor,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            child: Row(
                              children: [
                                Icon(
                                  categoriesOffersIcon[index],
                                  color: selectedCategories == index
                                      ? tertiaryColor
                                      : secondaryColor,
                                ),
                                const HorizontalGap10(),
                                Text(
                                  categoriesOffers[index],
                                  style: poppins4.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                      itemCount: categoriesOffers.length,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) =>
                          const HorizontalGap10(),
                    ),
                  ),
                  const VerticalGap10(),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 825,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 16,
                        childAspectRatio: .75,
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            color: quaternaryColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Stack(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 100,
                                      child: CachedNetworkImage(
                                        imageUrl: shoesImageUrl[index],
                                        imageBuilder:
                                            (context, imageProvider) =>
                                                Container(
                                          width: 150,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: imageProvider,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        placeholder: (context, url) =>
                                            const Center(
                                          child: CircularProgressIndicator(),
                                        ),
                                        errorWidget: (context, url, error) =>
                                            const Icon(Icons.error),
                                      ),
                                    ),
                                    Text(
                                      shoesList[index],
                                      style: poppins3.copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const VerticalGap5(),
                                    Row(
                                      children: [
                                        Text('Colors: ', style: poppins4),
                                        const HorizontalGap5(),
                                        Stack(
                                          children: [
                                            const SizedBox(
                                              width: 40,
                                              height: 20,
                                            ),
                                            Positioned(
                                              left: 0,
                                              child: Container(
                                                width: 20,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                  color: shoesColor1[index],
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 10,
                                              child: Container(
                                                width: 20,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                  color: shoesColor2[index],
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 20,
                                              child: Container(
                                                width: 20,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                  color: shoesColor3[index],
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    const VerticalGap5(),
                                    Text(
                                      shoesListPrice[index],
                                      style: poppins2.copyWith(
                                        color: Colors.amber,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          isSelectedCart[index] =
                                              !isSelectedCart[index];
                                        });
                                      },
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                          ),
                                          color: primaryColor,
                                        ),
                                        padding: const EdgeInsets.all(10),
                                        child: FaIcon(
                                          isSelectedCart[index]
                                              ? FontAwesomeIcons.shoppingCart
                                              : FontAwesomeIcons.add,
                                          color: isSelectedCart[index]
                                              ? Colors.amber
                                              : secondaryColor,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 1),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          isSelectedFavorite[index] =
                                              !isSelectedFavorite[index];
                                        });
                                      },
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(20),
                                          ),
                                          color: primaryColor,
                                        ),
                                        padding: const EdgeInsets.all(10),
                                        child: FaIcon(
                                          isSelectedFavorite[index]
                                              ? FontAwesomeIcons.solidHeart
                                              : FontAwesomeIcons.heart,
                                          color: isSelectedFavorite[index]
                                              ? Colors.red
                                              : secondaryColor,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      itemCount: 6,
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _appBarContainer() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: CachedNetworkImage(
                  imageUrl:
                      'https://orig00.deviantart.net/a4b8/f/2013/100/0/2/oreki_vector_by_fncombo-d5zlp2t.png',
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      Center(
                    child: CircularProgressIndicator(
                      color: secondaryColor,
                      value: downloadProgress.progress,
                    ),
                  ),
                  errorWidget: (context, url, error) => const FaIcon(
                    FontAwesomeIcons.image,
                    color: tertiaryColor,
                  ),
                  height: 80,
                  width: 80,
                  fit: BoxFit.cover,
                ),
              ),
              const HorizontalGap10(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Good Morning',
                    style: poppins3.copyWith(
                      color: tertiaryColor.withOpacity(.5),
                    ),
                  ),
                  Text(
                    'Listyo Adi',
                    style: poppins3.copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          const HorizontalGap10(),
          SizedBox(
            width: MediaQuery.of(context).size.width / 3.75,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                ButtonWithNotifWidget(
                  icon: FaIcon(
                    FontAwesomeIcons.cartShopping,
                    color: tertiaryColor,
                    size: 26,
                  ),
                  notifCount: '2',
                  navigator: '/home_page',
                ),
                ButtonWithNotifWidget(
                  icon: FaIcon(
                    FontAwesomeIcons.message,
                    color: tertiaryColor,
                    size: 26,
                  ),
                  notifCount: '70',
                  navigator: '/home_page',
                ),
                ButtonWithNotifWidget(
                  icon: FaIcon(
                    FontAwesomeIcons.bell,
                    color: tertiaryColor,
                    size: 26,
                  ),
                  notifCount: '20',
                  navigator: '/home_page',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Container _searchContainer(BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: InkWell(
      onTap: () {},
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 1.3,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                hintText: 'Search for your shoes',
                hintStyle: poppins4.copyWith(
                  color: tertiaryColor.withOpacity(.5),
                ),
                prefixIcon: Icon(
                  FontAwesomeIcons.search,
                  color: tertiaryColor.withOpacity(.5),
                  size: 20,
                ),
                filled: true,
                fillColor: quaternaryColor,
                enabled: false,
              ),
            ),
          ),
          const HorizontalGap10(),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: quaternaryColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Icon(
              FontAwesomeIcons.filter,
              color: tertiaryColor,
            ),
          )
        ],
      ),
    ),
  );
}

Column _offersContainer(BuildContext context) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Special Offers',
              style: poppins2.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'See All',
                style: poppins3.copyWith(
                  color: secondaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
      const VerticalGap10(),
      CarouselSlider.builder(
        itemCount: images.length,
        itemBuilder: (context, index, realIndex) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CachedNetworkImage(
                imageUrl: images[index],
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    Center(
                  child: CircularProgressIndicator(
                    color: secondaryColor,
                    value: downloadProgress.progress,
                  ),
                ),
                errorWidget: (context, url, error) => const FaIcon(
                  FontAwesomeIcons.image,
                  color: tertiaryColor,
                ),
                fit: BoxFit.fill,
              ),
            ),
          );
        },
        options: CarouselOptions(
          viewportFraction: .95,
          initialPage: 0,
          enableInfiniteScroll: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 5),
          autoPlayAnimationDuration: const Duration(milliseconds: 500),
          autoPlayCurve: Curves.fastOutSlowIn,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ),
      ),
    ],
  );
}
