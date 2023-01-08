import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final image1 = "https://ih1.redbubble.net/image.2381177486.9484/ssrco,slim_fit_t_shirt,mens,fafafa:ca443f4786,front,square_product,600x600.jpg";
  final image2 = "https://m.media-amazon.com/images/I/51a5Y52mQAL.jpg";
  final image3 = "https://tr.thermaltake.com/media/catalog/product/cache/023a745bb14092c479b288481f91a1bd/x/f/xfit_black-white01.jpg";
  final image4 = "https://images.tokopedia.net/img/cache/700/product-1/2019/8/7/2467769/2467769_76ef8937-714d-4512-ba56-b3e3d2b3e327_2048_2048";
  final image5 = "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/MXJ92?wid=2104&hei=2980&fmt=jpeg&qlt=95&.v=1580420175341";
  final image6 = "https://cdn.vatanbilgisayar.com/Upload/PRODUCT/jbl/thumb/128898_large.jpg";


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.white,
          title:  const Text('Second-Hand', style: TextStyle(color: Colors.black), textAlign: TextAlign.left,),
          leading: const Icon(Icons.chevron_left, size: 48, color: Colors.black,),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Icon(Icons.search, size: 30, color: Colors.black,),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Row(
            children: [
              Column(
                children: [
                  Column(
                    children: [
                    Row(
                      children: [
                        itemsWidget(image: image1, price: '25', product: 'Michaelsoft Binbows'),
                        itemsWidget(image: image2, price: '5', product: 'Anime Girl Figure'),
                      ],
                    ),
                    Row(
                      children: [
                        itemsWidget(image: image3, price: '60', product: 'Gaming Chair'),
                        itemsWidget(image: image4, price: '3', product: 'CJ Figure'),
                      ],
                    ),
                    Row(
                      children: [
                        itemsWidget(image: image5, price: '500', product: 'Beats Studio 3'),
                        itemsWidget(image: image6, price: '100', product: 'JBL T 510BT'),
                      ],
                    )]
                  ),                                    
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}











class itemsWidget extends StatelessWidget {
  const itemsWidget({
    Key? key,
    required this.image, required this.product, required this.price,
  }) : super(key: key);

  final String image;
  final String product;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.4,
        height: MediaQuery.of(context).size.height * 0.4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card (
              child: Image.network(image, height: 260)),
              Expanded(
                child: AutoSizeText(product, minFontSize: 12, maxFontSize: 16, style: Theme.of(context).textTheme.headline6?.copyWith(fontSize: 16), maxLines: 1, overflow: TextOverflow.fade)//Text(product,
                // style: Theme.of(context).textTheme.headline6?.copyWith(fontSize: 16), maxLines: 1, overflow: TextOverflow.fade,),
              ),
          Text("\$$price", style:  Theme.of(context).textTheme.subtitle2?.copyWith(color: Colors.grey)),
      Row(
        children: [
          for(int i = 0 ; i < 5; ++ i) Icon(Icons.star, color: Colors.yellow[700], size: 20,),
          Spacer(),
          const CircleAvatar(
            radius: 15,
            backgroundColor: Colors.black,
            child: Icon(Icons.favorite, color: Colors.grey, size: 17,))
        ],
      )
          ],
        ),
      ),
    );
  }
}