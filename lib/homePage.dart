import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Image.asset("assets/image/MiniWarriorsCover.jpg"),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            children: const [
              Expanded(
                child: Center(
                  child: Text(
                    "Dear Players of Mini Warriors:",
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              Expanded(
                child: Center(
                    child: Text(
                  "We are glad to present you with the Early Access version of Mini Warriors II updated to the current Mini Warriors games. This upgrade is exclusive for the Mini Warriors players.",
                  textAlign: TextAlign.center,
                )),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: const [
              Expanded(
                child: Center(
                    child: Text(
                  "Enjoy tons of new content and features:",
                  textAlign: TextAlign.center,
                )),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              Expanded(
                child: Center(
                    child: Text(
                  "- A completely new game: Mini Warriors 2, not a DLC",
                  textAlign: TextAlign.center,
                )),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: const [
              Expanded(
                child: Center(
                    child: Text(
                  "- Completely new 3D battlefield, with 360 degrees panoramic view",
                  textAlign: TextAlign.center,
                )),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: const [
              Expanded(
                child: Center(
                    child: Text(
                  "- Over 60 New heroes and fantastic new skills",
                  textAlign: TextAlign.center,
                )),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: const [
              Expanded(
                child: Center(
                    child: Text(
                  "- An amazing continent newly-built 10 times larger to conquer",
                  textAlign: TextAlign.center,
                )),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: const [
              Expanded(
                child: Center(
                    child: Text(
                  "- Rule your floating island and build the castle of your own",
                  textAlign: TextAlign.center,
                )),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: const [
              Expanded(
                child: Center(
                    child: Text(
                  "- Vertical and horizontal views can be switched at any time",
                  textAlign: TextAlign.center,
                )),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: const [
              Expanded(
                child: Center(
                    child: Text(
                  "- Single hand operation in vertical mode available",
                  textAlign: TextAlign.center,
                )),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: const [
              Expanded(
                child: Center(
                    child: Text(
                  "- Huge amounts of AFK bonus granted, just keep it easy and enjoy",
                  textAlign: TextAlign.center,
                )),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: const [
              Expanded(
                child: Center(
                    child: Text(
                  "- And hundreds of new features waiting for you to explore",
                  textAlign: TextAlign.center,
                )),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: const [
              Expanded(
                child: Center(
                    child: Text(
                  "- An amazing continent newly-built 10 times larger to conquer",
                  textAlign: TextAlign.center,
                )),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: const [
              Expanded(
                child: Center(
                    child: Text(
                  "With recruiting powerful heroes and leading invincible armies.",
                  textAlign: TextAlign.center,
                )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
