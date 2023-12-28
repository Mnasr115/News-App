import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
       ClipRRect(
         borderRadius: BorderRadius.circular(6),
         child: Image.asset('assets/entertainment.jpg',
         height: 200,
         width: double.infinity,
           fit: BoxFit.cover,
         ),
       ),
        const SizedBox(height: 12,),
        const Text(
          'hfggjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjkjfkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk',
        maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black
          ),
        ),
        const Text('hfggjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.grey
          ),
        )
      ],
    );
  }
}
