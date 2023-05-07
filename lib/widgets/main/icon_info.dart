import 'package:flutter/material.dart';
import 'package:real_state_app/constants.dart';
import 'package:real_state_app/responsive.dart';

class IconInfo extends StatelessWidget {
  const IconInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding*3),
      child: Responsive.isMobileLarge(context)? 
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: buildIconInfo(
                  context: context,
                  text: '67+',
                  label: 'Clients',
                  icon: Icons.supervisor_account,
                ),
              ),
              Expanded(
                child: buildIconInfo(
                  context: context,
                  text: '139+',
                  label: 'Projects',
                  icon: Icons.location_on,
                ),
              ),
            ],
          ),
          const SizedBox(height: kDefaultPadding*3,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: buildIconInfo(
                  context: context,
                  text: '67+',
                  label: 'Clients',
                  icon: Icons.supervisor_account,
                ),
              ),
              Expanded(
                child: buildIconInfo(
                context: context,
                text: '139+',
                label: 'Projects',
                icon: Icons.location_on,
              ),)
            ],
          ),
        ],
      ):
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildIconInfo(
            context: context,
            text: '67+',
            label: 'Clients',
            icon: Icons.supervisor_account,
          ),
          buildIconInfo(
            context: context,
            text: '139+',
            label: 'Projects',
            icon: Icons.location_on,
          ),
          buildIconInfo(
            context: context,
            text: '30+',
            label: 'Countries',
            icon: Icons.public,
          ),
          buildIconInfo(
            context: context,
            text: '13K+',
            label: 'stars',
            icon: Icons.star,
          ),
        ],
      )
    );
  }

  Column buildIconInfo({required BuildContext context,
    required String text , required String label,
    required IconData icon,
  }) {
    return Column(
          children: [
             Icon(icon,
            size: 50,),
            const SizedBox(height: 10.0,),
            Text(text,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: kPrimaryColor,
              fontSize: 30,
            ),),
            Text(label,
              style: Theme.of(context).textTheme.titleSmall
              ),
          ],
        );
  }
}
