import 'package:flutter/material.dart';
import 'package:real_state_app/constants.dart';
import 'package:real_state_app/models/recommendation.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController _scrollController = ScrollController();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Client Recommendation : ',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: kDefaultPadding),
          SingleChildScrollView(
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            child: Row(
              children:
                List.generate(
                    demoRecommendations.length,
                        (index) => Padding(
                          padding: const EdgeInsets.only(right: kDefaultPadding),
                          child: Container(
                            width: 400.0,
                            padding: const EdgeInsets.all(kDefaultPadding),
                            color: kSecondaryColor,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ListTile(
                                  leading: CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage(
                                      demoRecommendations[index].image!,
                                    ),
                                  ),
                                  title: Text(demoRecommendations[index].name!,
                                  style:Theme.of(context).textTheme.titleSmall
                                  ),
                                  subtitle: Text(demoRecommendations[index].source!,
                                  style: Theme.of(context).textTheme.bodyLarge),

                                ),
                                const SizedBox(height: kDefaultPadding/2),
                                Text(demoRecommendations[index].text!,
                                style: const TextStyle(height: 1.5),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 4,
                                ),
                              ],
                            ),
                          ),
                        ),
                ),
            ),
          )
        ],
      ),
    );
  }
}
