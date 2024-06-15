import 'package:e_com_app/Global/constants.dart';
import 'package:e_com_app/Provider/Favorite_Model/favorite_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoriteCard extends StatefulWidget {
  final Favorite favorite;

  const FavoriteCard({
    super.key,
    required this.favorite,

  });

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  @override
  Widget build(BuildContext context) {

    final favoritesProvider = Provider.of<FavoritesProvider>(context);
    final isFavorite = favoritesProvider.isFavorite(widget.favorite);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: Stack(
          children: [
            Card(
              color: const Color(0xFFDFDFDF),
              elevation: 0,
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Color.fromARGB(71, 158, 158, 158),
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Image.asset(
                  widget.favorite.imageList,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: IconButton(
                onPressed: (){
                  setState(() {
                    if (isFavorite) {
                      favoritesProvider.removeFavorite(widget.favorite);
                    } else {
                      favoritesProvider.addFavorite(widget.favorite);
                    }
                  });
                },
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: isFavorite ? Colors.red : Colors.grey,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.010),
        Text(
          widget.favorite.titleList,
          textAlign: TextAlign.center,
          style: TEXT_STYLE.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: BOLD,
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.010),
        Text(
          widget.favorite.subtitleList,
          textAlign: TextAlign.center,
          style: TEXT_STYLE.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: BOLD,
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.010),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              '₹${widget.favorite.price.toStringAsFixed(2)}',
              style: TEXT_STYLE.copyWith(
                fontSize: SIZE_SM,
                fontWeight: FontWeight.bold,
                color: BOLD,
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.090),
            Text(
              '₹${widget.favorite.price.toStringAsFixed(2)}', // Assuming original price is constant
              style: TEXT_STYLE.copyWith(
                fontSize: SIZE_SM,
                fontWeight: FontWeight.normal,
                color: LIT_BOLD,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

