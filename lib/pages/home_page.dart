import 'package:flutter/material.dart';
import 'package:template_project/models/item.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final List<Item> items = [
      Item(
      judul: 'Hujan', 
      imageUrl: 'https://www.bing.com/images/search?view=detailV2&ccid=a44ohokp&id=751944551097B3E1BBA840C60953EE4216178489&thid=OIP.a44ohokpn-gXpHkCWeW9ugAAAA&mediaurl=https%3A%2F%2Fi.gr-assets.com%2Fimages%2FS%2Fcompressed.photo.goodreads.com%2Fbooks%2F1522226221i%2F39668868._UY200_.jpg&exph=200&expw=135&q=buku+tere+liye+hujan&simid=608040655579282775&form=IRPRST&ck=191CE7084D0E280D9A28248D0DCCA1B3&selectedindex=0&itb=0&ajaxhist=0&ajaxserp=0&pivotparams=insightsToken%3Dccid_S4MgYBr7*cp_53F92A2ADBF8FAECAB2A6EA5BB1094C7*mid_5353C047F7376549FD587FD4BE80A73D753E041D*simid_608038267590754342*thid_OIP.S4MgYBr7TFzvoqwVFD9StgHaK-&vt=0&sim=11&iss=VSI&ajaxhist=0&ajaxserp=0', 
      penulis: 'Tere Liye', 
      deskripsi: 'persahabatan yang berujung cinta antara Tokoh Lail dan Esok' ),
      
      Item(
      judul: 'Kisah Untuk Geri', 
      imageUrl: 'https://www.bing.com/images/search?view=detailV2&ccid=2%2FNsuqTo&id=6153644D97130B527CC0FE6E7726173C391DBEA4&thid=OIP.2_NsuqTo_fIEsth2Bj7iRwAAAA&mediaurl=https%3A%2F%2Fpbs.twimg.com%2Fmedia%2FD0z491jV4AEZFDk.jpg&exph=694&expw=474&q=buku+kisah+untuk+geri&simid=608049627769478107&form=IRPRST&ck=A29E4392D557212DDD85CE9D4055EE4D&selectedindex=0&itb=0&ajaxhist=0&ajaxserp=0&pivotparams=insightsToken%3Dccid_MeBri3cW*cp_CCA7EF4B6375CE9BDF834B4492C4E17E*mid_337CA64EFEAF9CBF53CB5EA1C89AD38E277AB0C5*simid_608050254810140563*thid_OIP.MeBri3cWZwXMwFWEU08-HgHaHa&vt=0&sim=11&iss=VSI&ajaxhist=0&ajaxserp=0', 
      penulis: 'Eriska Febriani', 
      deskripsi: 'Menceritakan tentang cinta 2 anak remaja SMA yang bernama Geri Alvian Putra dengan Dinda Kamelia Putri'
      ),
    ];
    return Scaffold (
      appBar: AppBar(
        title: Text('Items List'),
      ), 
    body: GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7, 
      ),
      itemCount: items.length,
      itemBuilder: (context, index){
        final item = items[index];
        return GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, '/item', arguments: item);
          },
        );
      },
      child: Hero (
        tag: item.judul,
        child: Card(
          child : Column(
            children: [
              Expanded(
                child: Image.network(
                item.imageUrl,
                fit:BoxFit.cover,
              ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(items.judul, style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: 4),
                    Text(items.penulis, style: TextStyle(fontWeight: FontWeight.normal)),
                    SizedBox(height: 4),
                    Text(items.deskripsi, style: TextStyle(fontWeight: FontWeight.normal)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  },

    BottomNavigationBar:Container(
     padding: EdgeInsets.all(16)
     child: Text ('Nama: Nurvi Amalina, NIM: 362358302001'),
     ),
   );
  }
}
