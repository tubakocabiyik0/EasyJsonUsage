class Welcome {
  Welcome({
    this.arabaAdi,
    this.ulke,
    this.kurulusYil,
    this.model,
  });

  String arabaAdi;
  String ulke;
  int kurulusYil;
  List<Model> model;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    arabaAdi: json["arabaAdi"],
    ulke: json["ulke"],
    kurulusYil: json["kurulusYil"],
    model: List<Model>.from(json["model"].map((x) => Model.fromJson(x))),

  );

  Map<String, dynamic> toJson() => {
    "arabaAdi": arabaAdi,
    "ulke": ulke,
    "kurulusYil": kurulusYil,
    "model": List<dynamic>.from(model.map((x) => x.toJson())),
  };
}

class Model {
  Model({
    this.modelAdi,
    this.fiyat,
  });

  String modelAdi;
  int fiyat;

  factory Model.fromJson(Map<String, dynamic> json) => Model(
    modelAdi: json["modelAdi"],
    fiyat: json["fiyat"],
  );

  Map<String, dynamic> toJson() => {
    "modelAdi": modelAdi,
    "fiyat": fiyat,
  };
}
