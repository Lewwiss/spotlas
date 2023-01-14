class Item {
  late String authorName, authorTag, authorImage;
  late String spotName, spotLocation, spotImage;
  late String caption;
  late List<String> media;
  late List<String> tags;
  late String date;

  Item(
      this.authorName, this.authorTag, this.authorImage,
      this.spotName, this.spotLocation, this.spotImage,
      this.caption,
      this.media,
      this.tags,
      this.date
      );

  Item.fromJson(Map<String, dynamic> json) {

    // Author
    Map<String, dynamic> jsonAuthor = json['author'];
    authorName = jsonAuthor['full_name'].toString();
    authorTag = jsonAuthor['username'].toString();
    authorImage = jsonAuthor['photo_url'].toString();

    // Spot
    Map<String, dynamic> jsonSpot = json['spot'];
    spotName = jsonSpot['name'].toString();
    Map<String, dynamic> jsonLocation = jsonSpot['location'];
    spotLocation = jsonLocation['display'];
    Map<String, dynamic> jsonLogo = jsonSpot['logo'];
    spotImage = jsonLogo['url'].toString();

    // Caption
    Map<String, dynamic> jsonCaption = json['caption'];
    caption = jsonCaption['text'].toString();

    // Media


    // Tags



    // Date
  }
}