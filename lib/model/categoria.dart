class Categoria {
  final titulo, imagem;
  final int numProdutos, id;

  Categoria({this.id, this.titulo, this.imagem, this.numProdutos});

  // It creates an Category from JSON
  factory Categoria.fromJson(Map<String, dynamic> json) {
    return Categoria(
      id: json["id"],
      titulo: json["titulo"],
      imagem: json["imagem"],
      numProdutos: json["numProdutos"],
    );
  }
}

Categoria categoria = Categoria(
  id: 1,
  titulo: "Cimento",
  imagem: "",
  numProdutos: 100,
);
