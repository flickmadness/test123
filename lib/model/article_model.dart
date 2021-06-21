class Article {
  int id;
  String date;
  String dateGmt;
  Guid guid;
  String modified;
  String modifiedGmt;
  String slug;
  String status;
  String type;
  String link;
  Guid title;
  Content content;
  int featuredMedia;
  int parent;
  String template;
  List<int> tipLXlXxl;
  List<int> smrtPozdravSjecanje;
  Acf acf;

  Article(
      {this.id,
      this.date,
      this.dateGmt,
      this.guid,
      this.modified,
      this.modifiedGmt,
      this.slug,
      this.status,
      this.type,
      this.link,
      this.title,
      this.content,
      this.featuredMedia,
      this.parent,
      this.template,
      this.tipLXlXxl,
      this.smrtPozdravSjecanje,
      this.acf});

  Article.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'];
    dateGmt = json['date_gmt'];
    guid = json['guid'] != null ? new Guid.fromJson(json['guid']) : null;
    modified = json['modified'];
    modifiedGmt = json['modified_gmt'];
    slug = json['slug'];
    status = json['status'];
    type = json['type'];
    link = json['link'];
    title = json['title'] != null ? new Guid.fromJson(json['title']) : null;
    content =
        json['content'] != null ? new Content.fromJson(json['content']) : null;
    featuredMedia = json['featured_media'];
    parent = json['parent'];
    template = json['template'];
    tipLXlXxl = json['tip_l_xl_xxl'].cast<int>();
    smrtPozdravSjecanje = json['smrt_pozdrav_sjecanje'].cast<int>();
    acf = json['acf'] != null ? new Acf.fromJson(json['acf']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['date'] = this.date;
    data['date_gmt'] = this.dateGmt;
    if (this.guid != null) {
      data['guid'] = this.guid.toJson();
    }
    data['modified'] = this.modified;
    data['modified_gmt'] = this.modifiedGmt;
    data['slug'] = this.slug;
    data['status'] = this.status;
    data['type'] = this.type;
    data['link'] = this.link;
    if (this.title != null) {
      data['title'] = this.title.toJson();
    }
    if (this.content != null) {
      data['content'] = this.content.toJson();
    }
    data['featured_media'] = this.featuredMedia;
    data['parent'] = this.parent;
    data['template'] = this.template;
    data['tip_l_xl_xxl'] = this.tipLXlXxl;
    data['smrt_pozdrav_sjecanje'] = this.smrtPozdravSjecanje;
    if (this.acf != null) {
      data['acf'] = this.acf.toJson();
    }

    return data;
  }
}

class Guid {
  String rendered;

  Guid({this.rendered});

  Guid.fromJson(Map<String, dynamic> json) {
    rendered = json['rendered'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rendered'] = this.rendered;
    return data;
  }
}

class Content {
  String rendered;
  bool protected;

  Content({this.rendered, this.protected});

  Content.fromJson(Map<String, dynamic> json) {
    rendered = json['rendered'];
    protected = json['protected'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rendered'] = this.rendered;
    data['protected'] = this.protected;
    return data;
  }
}

class Acf {
  String copyright;
  int smrtPozdravSjecanje;
  int tipLXlXxl;
  String velicina;
  String imeIPrezime;
  String godinaSmrti;
  String mjestoPreminulog;
  String text2Osmrtnica;
  String textBoxZaL;
  String text1Osmrtnica;

  Acf(
      {this.copyright,
      this.smrtPozdravSjecanje,
      this.tipLXlXxl,
      this.velicina,
      this.imeIPrezime,
      this.godinaSmrti,
      this.mjestoPreminulog,
      this.text2Osmrtnica,
      this.textBoxZaL,
      this.text1Osmrtnica});

  Acf.fromJson(Map<String, dynamic> json) {
    copyright = json['copyright'];
    smrtPozdravSjecanje = json['smrt_pozdrav_sjecanje'];
    tipLXlXxl = json['tip_l_xl_xxl'];
    velicina = json['velicina'];
    imeIPrezime = json['ime_i_prezime'];
    godinaSmrti = json['godina_smrti'];
    mjestoPreminulog = json['mjesto_preminulog'];
    text2Osmrtnica = json['text_2_-_osmrtnica'];
    textBoxZaL = json['text_box_za_l'];
    text1Osmrtnica = json['text_1_-_osmrtnica'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['copyright'] = this.copyright;
    data['smrt_pozdrav_sjecanje'] = this.smrtPozdravSjecanje;
    data['tip_l_xl_xxl'] = this.tipLXlXxl;
    data['velicina'] = this.velicina;
    data['ime_i_prezime'] = this.imeIPrezime;
    data['godina_smrti'] = this.godinaSmrti;
    data['mjesto_preminulog'] = this.mjestoPreminulog;
    data['text_2_-_osmrtnica'] = this.text2Osmrtnica;

    data['text_box_za_l'] = this.textBoxZaL;

    data['text_1_-_osmrtnica'] = this.text1Osmrtnica;
    return data;
  }
}
