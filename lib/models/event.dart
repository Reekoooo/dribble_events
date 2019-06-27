class Event {
  final String title;
  final String shortDescription;
  final String longDescription;
  final String location;
  final String imageUrl;
  final DateTime dateTime;

  Event({
    this.title,
    this.shortDescription,
    this.longDescription,
    this.location,
    this.imageUrl,
    this.dateTime,
  });

  static List<Event> getMockEvents(){
    return <Event>[
      Event(
        title: 'Amr Diab',
        dateTime: DateTime.now().add(Duration(days: 1)),
        location: 'Montaza Palace,Alexandria',
        shortDescription: 'Borg Elhot',
        longDescription: 'Amr Diab is an Egyptian vocalist and writer. He has established himself as an acclaimed recording artist and author in most Mediterranean countries. According to a research by Michael Frishkopf, he has created his style termed as "Mediterranean Music", a blend of Western and Egyptian rhythms. By 1992, he became the first Egyptian and Middle Eastern artist to start making high-tech music videos.',
        imageUrl: 'http://2.bp.blogspot.com/-PSc8oqZwn4M/VlTdTfeUgpI/AAAAAAAACV0/jKzlnButK0A/s1600/amr-diab12.jpg',
      ),
      Event(
        title: 'Angham',
        dateTime: DateTime.now().add(Duration(days: 6)),
        location: 'Festival City,Cairo',
        shortDescription: 'Sedi Wesalak',
        longDescription: 'Angham Mohamed Ali Suleiman is an Egyptian singer, recording artist, and actress. Her debut was in 1987 under the guidance of her father, Mohammad Suleiman. Following her divorce from Magdy Aref in 2000, Angham took much more control over her image and musical style after that Leih Sebtaha record established her into a strong position amid the constant emerge of new voices in the Middle East music scene.',
        imageUrl: 'http://www.aghanyna.com/english/wp-content/uploads/2017/05/Angham-2017-e1495560372685.jpeg',
      ),
      Event(
        title: 'Tamer Hosni',
        dateTime: DateTime.now().add(Duration(days: 12)),
        location: 'Luxor Temple,Luxor',
        shortDescription: 'Naseeny Leeh',
        longDescription: 'Tamer Hosny is an Egyptian singer, actor, composer, director and songwriter. He first came to public attention when he appeared on mix tapes with other Egyptian artists. Hosny launched his solo career with his 2004 album Hob, becoming a successful singer of romantic music and was given the nickname "King of the Generation" by his fans.',
        imageUrl: 'https://static2.annahar.com/storage/attachments/938/7366af3a-d6a4-4a72-ac95-639d6e57336c_352857_large.jpg',
      ),

    ];
  }
}
