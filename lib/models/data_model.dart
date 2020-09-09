class Data {
  String nombreApp;
  List<Rutas> rutas;

  Data({this.nombreApp, this.rutas});

  Data.fromJson(Map<String, dynamic> json) {
    nombreApp = json['nombreApp'];
    if (json['rutas'] != null) {
      rutas = new List<Rutas>();
      json['rutas'].forEach((v) {
        rutas.add(new Rutas.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nombreApp'] = this.nombreApp;
    if (this.rutas != null) {
      data['rutas'] = this.rutas.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Rutas {
  String ruta;
  String icon;
  String texto;

  Rutas({this.ruta, this.icon, this.texto});

  Rutas.fromJson(Map<String, dynamic> json) {
    ruta = json['ruta'];
    icon = json['icon'];
    texto = json['texto'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ruta'] = this.ruta;
    data['icon'] = this.icon;
    data['texto'] = this.texto;
    return data;
  }
}