import 'package:flutter/material.dart';
import 'package:pr3/model/items.dart';
import 'package:pr3/pages/components/ItemPage.dart';

class ListOfItems extends StatelessWidget {
  const ListOfItems({super.key, required this.item});

  final Items item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ItemPage(item: item),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(
            right: 15.0, left: 15.0, top: 5.0, bottom: 10.0),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.54,
          //height: MediaQuery.of(context).size.height * 0.47,
          decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2),
                  ),
                  child: Image.network(
                    item.image,
                    width: MediaQuery.of(context).size.width * 0.65,
                    height: MediaQuery.of(context).size.width * 0.65,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8.0, bottom: 8.0, right: 50.0, left: 50.0),
                child: SizedBox(
                  height: 50.0,
                  child: Text(
                    '${item.name}',
                    style: const TextStyle(fontSize: 16),
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Row(children: [
                  const Text(
                    'Цена: ',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    '${item.cost} ₽',
                    style: const TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 6, 196, 9),
                        fontWeight: FontWeight.bold),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                        color: Colors.grey,
                        width: 2), // Установка цвета и толщины границы
                  ),
                  child: const Text(
                    'Перейти к карточке товара',
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Color.fromARGB(255, 136, 136, 136)),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ItemPage(item: item),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
