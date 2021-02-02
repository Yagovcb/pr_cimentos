class Produto {
  final String imagem, titulo, descricao, marca, categoria;
  final int preco, id;

  Produto(
      {this.id,
      this.titulo,
      this.imagem,
      this.preco,
      this.categoria,
      this.marca,
      this.descricao});

  factory Produto.fromJson(Map<String, dynamic> json) {
    return Produto(
      id: json["id"],
      titulo: json["titulo"],
      imagem: json["imagem"],
      preco: json["preco"],
      categoria: json["categoria"],
      marca: json["marca"],
      descricao: json["descricao"],
    );
  }
}

List<Produto> produtos = [
  Produto(
    id: 1,
    categoria: "Cimento",
    titulo: "Cimento Nassau",
    descricao: "Marca de Cimento Brasileira",
    marca: "Nassau",
    preco: 50,
    imagem: "assets/images/cimento_nassau.jpeg",
  ),
  Produto(
    id: 2,
    categoria: "Cimento",
    titulo: "Cimento Bravo",
    descricao: "Marca de Cimento Brasileira",
    marca: "Bravo",
    preco: 45,
    imagem: "assets/images/cimento_bravo.jpeg",
  ),
  Produto(
    id: 3,
    categoria: "Cimento",
    titulo: "Cimento Açaí",
    descricao: "Marca de Cimento Brasileira",
    marca: "Açaí",
    preco: 38,
    imagem: "assets/images/cimento_acai.jpeg",
  ),
  Produto(
    id: 4,
    categoria: "Argamassa",
    titulo: "Cimento Açaí",
    descricao: "Marca de Cimento Brasileira",
    marca: "Açaí",
    preco: 38,
    imagem: "assets/images/cimento_acai.jpeg",
  ),
  Produto(
    id: 5,
    categoria: "Argamassa",
    titulo: "Cimento Açaí",
    descricao: "Marca de Cimento Brasileira",
    marca: "Açaí",
    preco: 38,
    imagem: "assets/images/cimento_acai.jpeg",
  )
];
