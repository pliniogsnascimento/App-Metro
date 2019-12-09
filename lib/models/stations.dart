import 'package:train_station/models/station.dart';

import 'line.dart';

final List<Line> lines = [
  Line(
      name: 'Azul',
      image: 'assets/metro.jpg',
      stations: <Station>[
        Station(name: 'Jabaquara', id: 'ChIJGeqxXN1azpQReOktTOQJGK8'),
        Station(name: 'Conceição', id: 'ChIJV8LdrPpazpQRpB9Sj_uJ1Ww'),
        Station(name: 'São Judas', id: 'ChIJQRIx7VdazpQRgL9W35lxi-M'),
        Station(name: 'Saúde', id: 'ChIJfYbHU1BazpQRHyKqfBrRyfE'),
        Station(name: 'Praça da Árvore', id: 'ChIJw8hM5rRbzpQRQdtJ2ivTZ3U'),
        Station(name: 'Santa Cruz', id: 'ChIJxYfY1DNazpQRpcAmbOPOYRU'),
        Station(name: 'Vila Mariana', id: 'ChIJwY5kpitazpQRNUtDjycZDoM'),
        Station(name: 'Ana Rosa', id: 'ChIJtfvLP4RZzpQRR6LbsWmq0gs'),
        Station(name: 'Paraíso', id: 'ChIJC9WRFppZzpQRZ0ibkIlYF_g'),
        Station(name: 'Vergueiro', id: 'ChIJyWgPbMVbzpQRNOKobXleKOg'),
        Station(name: 'São Joaquim', id: 'ChIJ8brYUaRZzpQRvLJOxBxv5gk'),
        Station(name: 'Japão-Liberdade', id: 'ChIJR1Y3PqlZzpQRlZA82jzXaxw'),
        Station(name: 'Sé', id: 'ChIJiUYAW6pZzpQR2YtcUuwgxzc'),
        Station(name: 'São Bento', id: ''),
        Station(name: 'Luz', id: ''),
        Station(name: 'Tiradentes', id: ''),
        Station(name: 'Armênia', id: ''),
        Station(name: 'Portuguesa-Tietê', id: ''),
        Station(name: 'Carandiru', id: ''),
        Station(name: 'Santana', id: ''),
        Station(name: 'Jardim São Paulo-Ayrton Senna', id: ''),
        Station(name: 'Parada Inglesa', id: ''),
        Station(name: 'Tucuruvi', id: ''),
      ],
    ),
    Line(
      name: 'Amarela', 
      image: 'assets/metro.jpg',
      stations: <Station>[
        Station(name: "Butantã", id: 'ChIJDVSj16pXzpQRs7F5EE7Em3g'),
        Station(name: "Faria Lima", id: ''),
        Station(name: "Fradique Coutinho", id: ''),
        Station(name: "Higienópolis-Mackenzie", id: ''),
        Station(name: "Luz", id: ''),
        Station(name: "Oscar Freire", id: ''),
        Station(name: "Paulista", id: ''),
        Station(name: "Pinheiros", id: ''),
        Station(name: "República", id: ''),
        Station(name: "São Paulo-Morumbi", id: '')
      ]
    ),
    Line(
      name: 'Verde', 
      image: 'assets/metro.jpg',
      stations: <Station>[
        Station(name: 'Vila Prudente', id: ''),
        Station(name: 'Metrô Tamanduateí', id: ''),
        Station(name: 'Sacomã', id: ''),
        Station(name: 'Alto do Ipiranga', id: ''),
        Station(name: 'Santos Imigrantes', id: ''),
        Station(name: 'Chácara Klabin', id: ''),
        Station(name: 'Ana Rosa', id: ''),
        Station(name: 'Paraíso', id: ''),
        Station(name: 'Brigadeiro', id: ''),
        Station(name: 'Trianon MASP', id: ''),
        Station(name: 'Sei lá', id: ''),
        Station(name: 'Vila Mariana', id: '')
      ]
    ),
    Line(
      name: 'Coral', 
      image: 'assets/metro.jpg',
      stations: <Station>[
        Station(name: "Antonio Gianetti", id: ''),
        Station(name: "Braz Cubas", id: ''),
        Station(name: "Calmon Viana", id: ''),
        Station(name: "Estudantes", id: ''),
        Station(name: "Ferraz de Vasconcelos", id: ''),
        Station(name: "Guaianazes", id: ''),
        Station(name: "Jundiapeba", id: ''),
        Station(name: "Mogi das Cruzes", id: ''),
        Station(name: "Poá", id: ''),
        Station(name: "Suzano", id: ''),
        Station(name: "Brás", id: ''),
        Station(name: "Corinthians-Itaquera", id: ''),
        Station(name: "Dom Bosco", id: ''),
        Station(name: "Guaianazes", id: ''),
        Station(name: "José Bonifácio", id: ''),
        Station(name: "Luz", id: ''),
        Station(name: "Tatuapé", id: '')
      ]
    ),
    Line(
      name: 'Diamante', 
      image: 'assets/metro.jpg',
      stations: <Station>[
        Station(name: 'Antônio João', id: ''),
        Station(name: 'Barueri', id: ''),
        Station(name: 'Carapicuíba', id: ''),
        Station(name: 'Comandante Sampaio', id: ''),
        Station(name: 'Domingos de Moraes', id: ''),
        Station(name: 'Engenheiro Cardoso', id: ''),
        Station(name: 'General Miguel Costa', id: ''),
        Station(name: 'Imperatriz Leopoldina', id: ''),
        Station(name: 'Itapevi', id: ''),
        Station(name: 'Jandira', id: ''),
        Station(name: 'Jardim Belval', id: ''),
        Station(name: 'Jardim Silveira', id: ''),
        Station(name: 'Júlio Prestes', id: ''),
        Station(name: 'Lapa', id: ''),
        Station(name: 'Osasco', id: ''),
        Station(name: 'Palmeiras-Barra Funda', id: ''),
        Station(name: 'Presidente Altino', id: ''),
        Station(name: 'Quitaúna', id: ''),
        Station(name: 'Sagrado Coração', id: ''),
        Station(name: 'Santa Terezinha', id: '')
      ]
    ),
    Line(
      name: 'Esmeralda', 
      image: 'assets/metro.jpg',
      stations: <Station>[
        Station(name: 'Autódromo', id: ''),
        Station(name: 'Berrini', id: ''),
        Station(name: 'Ceasa', id: ''),
        Station(name: 'Cidade Jardim', id: ''),
        Station(name: 'Cidade Universitária', id: ''),
        Station(name: 'Grajaú', id: ''),
        Station(name: 'Granja Julieta', id: ''),
        Station(name: 'Hebraica-Rebouças', id: ''),
        Station(name: 'Jurubatuba', id: ''),
        Station(name: 'Morumbi', id: ''),
        Station(name: 'Osasco', id: ''),
        Station(name: 'Pinheiros', id: ''),
        Station(name: 'Presidente Altino', id: ''),
        Station(name: 'Primavera-Interlagos', id: ''),
        Station(name: 'Santo Amaro', id: ''),
        Station(name: 'Socorro', id: ''),
        Station(name: 'Vila Lobos-Jaguaré', id: ''),
        Station(name: 'Vila Olímpia', id: '')
      ]
    ),
    Line(
      name: 'Vermelha', 
      image: 'assets/metro.jpg',
      stations: <Station>[
        Station(name: 'Anhangabaú', id: ''),
        Station(name: 'Artur Alvim', id: ''),
        Station(name: 'Belém', id: ''),
        Station(name: 'Brás', id: ''),
        Station(name: 'Bresser-Mooca', id: ''),
        Station(name: 'Carrão', id: ''),
        Station(name: 'Corinthians-Itaquera', id: ''),
        Station(name: 'Guilhermina-Esperança', id: ''),
        Station(name: 'Marechal Deodoro', id: ''),
        Station(name: 'Palmeiras-Barra Funda', id: ''),
        Station(name: 'Patriarca', id: ''),
        Station(name: 'Pedro II', id: 'ChIJmyU_QwRZzpQRKPLU9vG9iNA'),
        Station(name: 'Penha', id: ''),
        Station(name: 'República', id: ''),
        Station(name: 'Santa Cecília', id: ''),
        Station(name: 'Sé', id: ''),
        Station(name: 'Tatuapé', id: ''),
        Station(name: 'Vila Matilde', id: '')
      ]
    )
];