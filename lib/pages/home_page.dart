import 'package:flutter/material.dart';
import 'package:app/models/data.dart';
import 'package:app/pages/details_shoes.dart';
import 'package:app/widgets/custom_app_bar.dart';
import 'package:app/widgets/custom_bottom_bar.dart';

class HomePageCar extends StatefulWidget {
  const HomePageCar({Key? key}) : super(key: key);

  @override
  State<HomePageCar> createState() => _HomePageCarState();
}

class _HomePageCarState extends State<HomePageCar> {
  final ValueNotifier<Color> colorNotifier = ValueNotifier(Colors.white);
  final _pageController = PageController(viewportFraction:   0.75);

  double _currentPage =   0.0;
  double indexPage =   0.0;

  void _listener() {
    setState(() {
      _currentPage = _pageController.page!;
      if (_currentPage >=   0 && _currentPage <   0.7) {
        indexPage =   0;
      } else if (_currentPage >   0.7 && _currentPage <   1.7) {
        indexPage =   1;
      } else if (_currentPage >   1.7 && _currentPage <   2.7) {
        indexPage =   2;
      }
      colorNotifier.value = getColor();
    });
  }

  Color getColor() {
    late final Color color;
    if (_currentPage >=   0 && _currentPage <   0.7) {
      color = listCar[0].listImage[0].color;
    } else if (_currentPage >   0.7 && _currentPage <   1.7) {
      color = listCar[1].listImage[0].color;
    } else if (_currentPage >   1.7 && _currentPage <   2.7) {
      color = listCar[2].listImage[0].color;
    }

    return color;
  }

  @override
  void initState() {
    _pageController.addListener(_listener);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        body: Column(
          children: [
            const CustomAppBar(),
            SizedBox(
              height:   50,
              child: Padding(
                padding: const EdgeInsets.only(left:   16.0),
                child: Row(
                  children: List.generate(
                    listCategory.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right:   12.0),
                      child: ValueListenableBuilder<Color>(
                        valueListenable: colorNotifier,
                        builder: (context, color, child) {
                          bool isActive = index == _currentPage.round();
                          return Text(
                            listCategory[index],
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize:   20,
                              color: isActive ? color : Colors.white,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: listCar.length,
                controller: _pageController,
                itemBuilder: (context, index) {
                  final car = listCar[index];
                  final listTitle = car.modelo.split(' ');
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder: (context, animation, _) {
                            return DetailsShoesPage(car: car);
                          },
                        ),
                      );
                    },
                    child: Padding(
                      padding:
                          EdgeInsets.only(right: index == indexPage ?   30 :   60),
                      child: Transform.translate(
                        offset: Offset(index == indexPage ?   0 :   20,   0),
                        child: LayoutBuilder(builder: (context, constraints) {
                          return AnimatedContainer(
                            duration: const Duration(milliseconds:   250),
                            margin: EdgeInsets.only(
                              top: index == indexPage ?   30 :   50,
                              bottom:   30,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(36),
                              color: Colors.white,
                            ),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal:   20.0,
                                    vertical:   40,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Text(
                                        car.modelo,
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize:   16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(height:   8),
                                      Text(
                                        car.name,
                                        style: const TextStyle(
                                          fontSize:   28,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                      const SizedBox(height:   4),
                                      Text(
                                        car.anio,
                                        style: const TextStyle(
                                          fontSize:   18,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                      const SizedBox(height:   4),
                                      FittedBox(
                                        child: Text(
                                          '${listTitle[0]} \n${listTitle[1]}',
                                          style: const TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: constraints.maxHeight *   0.2,
                                  left: constraints.maxWidth *   0.05,
                                  right: -constraints.maxWidth *   0.16,
                                  bottom: constraints.maxHeight *   0.2,
                                  child: Hero(
                                    tag: car.name,
                                    child: Image(
                                      image: AssetImage(
                                        car.listImage[0].image,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom:   0,
                                  right:   0,
                                  child: ValueListenableBuilder<Color>(
                                    valueListenable: colorNotifier,
                                    builder: (context, color, child) {
                                      final car = listCar[_currentPage.round()];
                                      return Material(
                                        color: car.listImage[0].color,
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(36),
                                          bottomRight: Radius.circular(36),
                                        ),
                                        clipBehavior: Clip.antiAliasWithSaveLayer,
                                        child: InkWell(
                                          onTap: () {},
                                          child: SizedBox(
                                            height:   100,
                                            width:   100,
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.money,
                                                  size:   40,
                                                  color: Colors.white,
                                                ),
                                                Text(
                                                  '\$${car.precio}', 
                                                  style: TextStyle(
                                                    color: Colors.white, 
                                                    fontSize:   16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              height:   120,
              padding: const EdgeInsets.all(20),
              child: CustomBottomBar(color: colorNotifier.value),
            )
          ],
        ),
      ),
    );
  }
}
