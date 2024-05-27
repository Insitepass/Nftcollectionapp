import 'package:flutter/material.dart';
import 'package:i_dream_of_space/gallery.dart';

class OnboardingPageModel {
  final String title;
  final String description;
  final String? bgGif;
  final Color textColor;

  OnboardingPageModel({
    required this.title,
    required this.description,
    this.bgGif,
    this.textColor = Colors.white,
  });
}

class OnboardingPage extends StatefulWidget {
  final List<OnboardingPageModel> pages;

  const OnboardingPage({super.key, required this.pages});

  @override
  OnboardingPageState createState() => OnboardingPageState();
}

class OnboardingPageState extends State<OnboardingPage> {
  // Store the currently visible page
  int _currentPage = 0;
  // Define a controller for the pageview
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Background Gif
          if (widget.pages[_currentPage].bgGif != null)
            Positioned.fill(
                child: Image.asset(
              widget.pages[_currentPage].bgGif!,
              fit: BoxFit.cover,
            )),

          SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: widget.pages.length,
                    onPageChanged: (idx) {
                      setState(() {
                        _currentPage = idx;
                      });
                    },
                    itemBuilder: (context, idx) {
                      final item = widget.pages[idx];
                      return Column(
                        children: [
                          const Expanded(
                            flex: 3,
                            child: Padding(
                              padding: EdgeInsets.all(32.0),
                              child: Text("welcome"),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(item.title,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: item.textColor,
                                          )),
                                ),
                                Container(
                                  constraints:
                                      const BoxConstraints(maxWidth: 280),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24.0, vertical: 8.0),
                                  child: Text(item.description,
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                            color: item.textColor,
                                          )),
                                )
                              ],
                            ),
                          )
                        ],
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: widget.pages
                      .map((item) => AnimatedContainer(
                            duration: const Duration(milliseconds: 250),
                            width: _currentPage == widget.pages.indexOf(item)
                                ? 20
                                : 4,
                            height: 4,
                            margin: const EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0)),
                          ))
                      .toList(),
                ),
                SizedBox(
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //skip button
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Gallery()));
                          },
                          child: const Text(
                            "Skip",
                            style: TextStyle(color: Colors.white),
                          )),
                      //finish button
                      TextButton(
                        onPressed: () {
                          if (_currentPage == widget.pages.length - 1) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Gallery()));
                          } else {
                            _pageController.animateToPage(_currentPage + 1,
                                curve: Curves.easeInOutCubic,
                                duration: const Duration(milliseconds: 250));
                          }
                        },
                        child: Text(
                          _currentPage == widget.pages.length - 1
                              ? "Finish"
                              : "Next",
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
