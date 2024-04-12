import 'package:flutter/material.dart';

class BottomBarViewDetails extends StatelessWidget {
  final int priceOfProduct;
  const BottomBarViewDetails({super.key, required this.priceOfProduct});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Price',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 67, 163, 242),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    priceOfProduct != 0 ? '\u20B9$priceOfProduct.0' : 'Free',
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(13),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 67, 163, 242)),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                minimumSize: MaterialStateProperty.all(const Size(180, 60)),
              ),
              child: Text(
                priceOfProduct != 0 ? 'Buy Now' : 'Access Now',
                style: const TextStyle(fontSize: 19),
              ),
            ),
          )
        ],
      ),
    );
  }
}
