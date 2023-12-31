import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: CachedNetworkImage(
            imageUrl: articleModel.image ??
                'https://s.yimg.com/ny/api/res/1.2/9.VX7JLONmASvt3t8bY3Rg--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD04OTI-/https://media.zenfs.com/en/techcrunch_350/0ac3866f955ea527afe575551d9d9535',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ), /*Image.asset(
            articleModel.image!,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),*/
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        Text(
          articleModel.subtitle ?? '',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
              fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey),
        )
      ],
    );
  }
}
