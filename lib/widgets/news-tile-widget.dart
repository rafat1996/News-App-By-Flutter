import 'package:flutter/material.dart';
import 'package:newsapp/models/article-model.dart';
import 'package:cached_network_image/cached_network_image.dart';

class NewsTileWidget extends StatelessWidget {
  const NewsTileWidget({super.key, required this.articleModel});
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: articleModel.image != null
                ? CachedNetworkImage(
                    imageUrl: articleModel.image!,
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  )
                : Image.asset(
                    'assets/images/error.png',
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  )),
        const SizedBox(
          height: 10,
        ),
        Text(
          articleModel.title!,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
              fontSize: 20,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        const SizedBox(
          height: 7,
        ),
        Text(
          articleModel.subTitle ?? '',
          maxLines: 2,
          style: const TextStyle(
              color: Colors.grey, fontFamily: 'Cairo', fontSize: 14),
        )
      ],
    );
  }
}
