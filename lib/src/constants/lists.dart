import 'package:pokerrrr_bloc/src/constants/app_color.dart';
import 'package:pokerrrr_bloc/src/constants/image_asset.dart';
import 'package:pokerrrr_bloc/src/constants/strings.dart';
import 'package:pokerrrr_bloc/src/models/elemento.dart';
import 'package:pokerrrr_bloc/src/models/evolucoes.dart';
import 'package:pokerrrr_bloc/src/models/mini_elemento.dart';
import 'package:pokerrrr_bloc/src/models/onboarding.dart';
import 'package:pokerrrr_bloc/src/models/pokemon.dart';
import 'package:pokerrrr_bloc/src/models/tipos.dart';

class Lists {
  static const List<OnBoarding> listOnboarding = [
    OnBoarding(
      image: ImageAsset.onBoardingFirst,
      title: Strings.titleOnBoardingFirst,
      subTitle: Strings.subTitleOnBoardingFirst,
      texButton: Strings.textOnBoardingFirstButton,
    ),
    OnBoarding(
      image: ImageAsset.onBoardingSecond,
      title: Strings.titleOnBoardingSecond,
      subTitle: Strings.subTitleOnBoardingSecond,
      texButton: Strings.textOnBoardingSecondButton,
    ),
  ];
  static const List<String> listIcon = [
    ImageAsset.iconNavigationOne,
    ImageAsset.iconNavigationTwo,
    ImageAsset.iconNavigationThree,
    ImageAsset.iconNavigationFour,
  ];
  static const List<String> listIconSelect = [
    ImageAsset.iconNavigationOneSelect,
    ImageAsset.iconNavigationTwoSelect,
    ImageAsset.iconNavigationThreeSelect,
    ImageAsset.iconNavigationFourSelect,
  ];
  static const List<String> listMenuName = [
    Strings.nameNavigationOne,
    Strings.nameNavigationTwo,
    Strings.nameNavigationThree,
    Strings.nameNavigationFour,
  ];
  static const List<Tipos> listTipos = [
    Tipos(
      title: Strings.tiposTwo,
      textColor: AppColors.botaoAguaText,
      backgroundColor: AppColors.botaoAguaButton,
    ),
    Tipos(
      title: Strings.tiposThree,
      textColor: AppColors.botaoDragaoText,
      backgroundColor: AppColors.botaoDragaoButton,
    ),
    Tipos(
      title: Strings.tiposFour,
      textColor: AppColors.botaoEletricoText,
      backgroundColor: AppColors.botaoEletricoButton,
    ),
    Tipos(
      title: Strings.tiposFive,
      textColor: AppColors.botaoFadaText,
      backgroundColor: AppColors.botaoFadaButton,
    ),
    Tipos(
      title: Strings.tiposSix,
      textColor: AppColors.botaoFantasmaText,
      backgroundColor: AppColors.botaoFantasmaButton,
    ),
    Tipos(
      title: Strings.tiposSeven,
      textColor: AppColors.botaoFogoText,
      backgroundColor: AppColors.botaoFogoButton,
    ),
    Tipos(
      title: Strings.tiposEight,
      textColor: AppColors.botaoGeloText,
      backgroundColor: AppColors.botaoGeloButton,
    ),
    Tipos(
      title: Strings.tiposNine,
      textColor: AppColors.botaoGramaText,
      backgroundColor: AppColors.botaoGramaButton,
    ),
    Tipos(
      title: Strings.tiposTen,
      textColor: AppColors.botaoInsetoText,
      backgroundColor: AppColors.botaoInsetoButton,
    ),
    Tipos(
      title: Strings.tiposEleven,
      textColor: AppColors.botaoLutadorText,
      backgroundColor: AppColors.botaoLutadorButton,
    ),
    Tipos(
      title: Strings.tiposTwelve,
      textColor: AppColors.botaoNormalText,
      backgroundColor: AppColors.botaoNormalButton,
    ),
    Tipos(
      title: Strings.tiposThirteen,
      textColor: AppColors.botaoNoturnoText,
      backgroundColor: AppColors.botaoNoturnoButton,
    ),
    Tipos(
      title: Strings.tiposFourteen,
      textColor: AppColors.botaoMetalText,
      backgroundColor: AppColors.botaoMetalButton,
    ),
    Tipos(
      title: Strings.tiposFifteen,
      textColor: AppColors.botaoPedraText,
      backgroundColor: AppColors.botaoPedraButton,
    ),
    Tipos(
      title: Strings.tiposSixteen,
      textColor: AppColors.botaoPsiquisoText,
      backgroundColor: AppColors.botaoPsiquisoButton,
    ),
    Tipos(
      title: Strings.tiposSeventeen,
      textColor: AppColors.botaoTerrestreText,
      backgroundColor: AppColors.botaoTerrestreButton,
    ),
    Tipos(
      title: Strings.tiposEighteen,
      textColor: AppColors.botaoVenenosoText,
      backgroundColor: AppColors.botaoVenenosoButton,
    ),
    Tipos(
      title: Strings.tiposNineteen,
      textColor: AppColors.botaoVoadorText,
      backgroundColor: AppColors.botaoVoadorButton,
    ),
  ];
  static List<String> listOrdem = [
    Strings.ordemOne,
    Strings.ordemTwo,
    Strings.ordemThree,
    Strings.ordemFour,
  ];

  static const List<Pokemon> listPokemon = [
    Pokemon(
      isFavorite: false,
      backgroundElemento: ImageAsset.backgroundGrama,
      elementoImage: ImageAsset.elementoGrama,
      elementoOutlineImage: ImageAsset.elementoOutlineGrama,
      avatarPokemon: ImageAsset.avatarBulbasaur,
      namePokemon: Strings.bulbasaur,
      nome: Strings.nome001,
      listElemento: [
        Elemento(
          imageElemento: ImageAsset.elementoGrama,
          nameElemento: Strings.grama,
          colorElemento: AppColors.botaoGramaButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoVenenoso,
          nameElemento: Strings.venenoso,
          colorElemento: AppColors.botaoVenenosoButton,
        )
      ],
      descriptionPokemon: Strings.descBulbasaur,
      peso: 6.9,
      altura: 0.7,
      categoria: Strings.seed,
      habilidade: Strings.overgrow,
      generoMale: 87.5,
      listFraquezas: [
        Elemento(
          imageElemento: ImageAsset.elementoFogo,
          nameElemento: Strings.fogo,
          colorElemento: AppColors.botaoFogoButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoPsiquico,
          nameElemento: Strings.psiquico,
          colorElemento: AppColors.botaoPsiquisoButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoVoador,
          nameElemento: Strings.voador,
          colorElemento: AppColors.botaoVoadorButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoGelo,
          nameElemento: Strings.gelo,
          colorElemento: AppColors.botaoGeloButton,
        )
      ],
      listEvolucoes: [
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundGrama,
          avatarPokemon: ImageAsset.avatarPngBulbasaur,
          namePokemon: Strings.bulbasaur,
          nome: Strings.nome001,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineGrama,
              colorElemento: AppColors.botaoGramaButton,
            ),
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineVenenoso,
              colorElemento: AppColors.botaoVenenosoButton,
            ),
          ],
          level: Strings.lv16,
        ),
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundGrama,
          avatarPokemon: ImageAsset.avatarPngIvysaur,
          namePokemon: Strings.ivysaur,
          nome: Strings.nome002,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineGrama,
              colorElemento: AppColors.botaoGramaButton,
            ),
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineVenenoso,
              colorElemento: AppColors.botaoVenenosoButton,
            ),
          ],
          level: Strings.lv36,
        ),
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundGrama,
          avatarPokemon: ImageAsset.avatarPngVenusaur,
          namePokemon: Strings.venusaur,
          nome: Strings.nome003,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineGrama,
              colorElemento: AppColors.botaoGramaButton,
            ),
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineVenenoso,
              colorElemento: AppColors.botaoVenenosoButton,
            ),
          ],
        ),
      ],
    ),
    Pokemon(
      isFavorite: false,
      backgroundElemento: ImageAsset.backgroundGrama,
      elementoImage: ImageAsset.elementoGrama,
      elementoOutlineImage: ImageAsset.elementoOutlineGrama,
      avatarPokemon: ImageAsset.avatarIvysaur,
      namePokemon: Strings.ivysaur,
      nome: Strings.nome002,
      listElemento: [
        Elemento(
          imageElemento: ImageAsset.elementoGrama,
          nameElemento: Strings.grama,
          colorElemento: AppColors.botaoGramaButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoVenenoso,
          nameElemento: Strings.venenoso,
          colorElemento: AppColors.botaoVenenosoButton,
        )
      ],
      descriptionPokemon: Strings.descIvysaur,
      peso: 13.0,
      altura: 1.0,
      categoria: Strings.seed,
      habilidade: Strings.overgrow,
      generoMale: 87.5,
      listFraquezas: [
        Elemento(
          imageElemento: ImageAsset.elementoFogo,
          nameElemento: Strings.fogo,
          colorElemento: AppColors.botaoFogoButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoPsiquico,
          nameElemento: Strings.psiquico,
          colorElemento: AppColors.botaoPsiquisoButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoVoador,
          nameElemento: Strings.voador,
          colorElemento: AppColors.botaoVoadorButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoGelo,
          nameElemento: Strings.gelo,
          colorElemento: AppColors.botaoGeloButton,
        )
      ],
      listEvolucoes: [
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundGrama,
          avatarPokemon: ImageAsset.avatarPngBulbasaur,
          namePokemon: Strings.bulbasaur,
          nome: Strings.nome001,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineGrama,
              colorElemento: AppColors.botaoGramaButton,
            ),
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineVenenoso,
              colorElemento: AppColors.botaoVenenosoButton,
            ),
          ],
          level: Strings.lv16,
        ),
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundGrama,
          avatarPokemon: ImageAsset.avatarPngIvysaur,
          namePokemon: Strings.ivysaur,
          nome: Strings.nome002,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineGrama,
              colorElemento: AppColors.botaoGramaButton,
            ),
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineVenenoso,
              colorElemento: AppColors.botaoVenenosoButton,
            ),
          ],
          level: Strings.lv36,
        ),
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundGrama,
          avatarPokemon: ImageAsset.avatarPngVenusaur,
          namePokemon: Strings.venusaur,
          nome: Strings.nome003,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineGrama,
              colorElemento: AppColors.botaoGramaButton,
            ),
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineVenenoso,
              colorElemento: AppColors.botaoVenenosoButton,
            ),
          ],
        ),
      ],
    ),
    Pokemon(
      isFavorite: false,
      backgroundElemento: ImageAsset.backgroundGrama,
      elementoImage: ImageAsset.elementoGrama,
      elementoOutlineImage: ImageAsset.elementoOutlineGrama,
      avatarPokemon: ImageAsset.avatarVenusaur,
      namePokemon: Strings.venusaur,
      nome: Strings.nome003,
      listElemento: [
        Elemento(
          imageElemento: ImageAsset.elementoGrama,
          nameElemento: Strings.grama,
          colorElemento: AppColors.botaoGramaButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoVenenoso,
          nameElemento: Strings.venenoso,
          colorElemento: AppColors.botaoVenenosoButton,
        )
      ],
      descriptionPokemon: Strings.descVenusaur,
      peso: 100.0,
      altura: 2.0,
      categoria: Strings.seed,
      habilidade: Strings.overgrow,
      generoMale: 87.5,
      listFraquezas: [
        Elemento(
          imageElemento: ImageAsset.elementoFogo,
          nameElemento: Strings.fogo,
          colorElemento: AppColors.botaoFogoButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoPsiquico,
          nameElemento: Strings.psiquico,
          colorElemento: AppColors.botaoPsiquisoButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoVoador,
          nameElemento: Strings.voador,
          colorElemento: AppColors.botaoVoadorButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoGelo,
          nameElemento: Strings.gelo,
          colorElemento: AppColors.botaoGeloButton,
        )
      ],
      listEvolucoes: [
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundGrama,
          avatarPokemon: ImageAsset.avatarPngBulbasaur,
          namePokemon: Strings.bulbasaur,
          nome: Strings.nome001,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineGrama,
              colorElemento: AppColors.botaoGramaButton,
            ),
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineVenenoso,
              colorElemento: AppColors.botaoVenenosoButton,
            ),
          ],
          level: Strings.lv16,
        ),
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundGrama,
          avatarPokemon: ImageAsset.avatarPngIvysaur,
          namePokemon: Strings.ivysaur,
          nome: Strings.nome002,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineGrama,
              colorElemento: AppColors.botaoGramaButton,
            ),
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineVenenoso,
              colorElemento: AppColors.botaoVenenosoButton,
            ),
          ],
          level: Strings.lv36,
        ),
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundGrama,
          avatarPokemon: ImageAsset.avatarPngVenusaur,
          namePokemon: Strings.venusaur,
          nome: Strings.nome003,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineGrama,
              colorElemento: AppColors.botaoGramaButton,
            ),
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineVenenoso,
              colorElemento: AppColors.botaoVenenosoButton,
            ),
          ],
        ),
      ],
    ),
    Pokemon(
      isFavorite: false,
      backgroundElemento: ImageAsset.backgroundFogo,
      elementoImage: ImageAsset.elementoFogo,
      elementoOutlineImage: ImageAsset.elementoOutlineFogo,
      avatarPokemon: ImageAsset.avatarCharmander,
      namePokemon: Strings.charmander,
      nome: Strings.nome004,
      listElemento: [
        Elemento(
          imageElemento: ImageAsset.elementoFogo,
          nameElemento: Strings.fogo,
          colorElemento: AppColors.botaoFogoButton,
        ),
      ],
      descriptionPokemon: Strings.descCharmander,
      peso: 8.5,
      altura: 0.6,
      categoria: Strings.lizard,
      habilidade: Strings.blaze,
      generoMale: 87.5,
      listFraquezas: [
        Elemento(
          imageElemento: ImageAsset.elementoAgua,
          nameElemento: Strings.agua,
          colorElemento: AppColors.botaoAguaButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoTerrestre,
          nameElemento: Strings.terrestre,
          colorElemento: AppColors.botaoTerrestreButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoPedra,
          nameElemento: Strings.pedra,
          colorElemento: AppColors.botaoPedraButton,
        ),
      ],
      listEvolucoes: [
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundFogo,
          avatarPokemon: ImageAsset.avatarPngCharmander,
          namePokemon: Strings.bulbasaur,
          nome: Strings.nome004,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineFogo,
              colorElemento: AppColors.botaoFogoButton,
            ),
          ],
          level: Strings.lv16,
        ),
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundFogo,
          avatarPokemon: ImageAsset.avatarPngCharmeleon,
          namePokemon: Strings.charmeleon,
          nome: Strings.nome005,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineFogo,
              colorElemento: AppColors.botaoFogoButton,
            ),
          ],
          level: Strings.lv36,
        ),
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundFogo,
          avatarPokemon: ImageAsset.avatarPngCharizard,
          namePokemon: Strings.charizard,
          nome: Strings.nome006,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineFogo,
              colorElemento: AppColors.botaoFogoButton,
            ),
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineVoador,
              colorElemento: AppColors.botaoVoadorButton,
            ),
          ],
        ),
      ],
    ),
    Pokemon(
      isFavorite: false,
      backgroundElemento: ImageAsset.backgroundFogo,
      elementoImage: ImageAsset.elementoFogo,
      elementoOutlineImage: ImageAsset.elementoOutlineFogo,
      avatarPokemon: ImageAsset.avatarCharmeleon,
      namePokemon: Strings.charmeleon,
      nome: Strings.nome005,
      listElemento: [
        Elemento(
          imageElemento: ImageAsset.elementoFogo,
          nameElemento: Strings.fogo,
          colorElemento: AppColors.botaoFogoButton,
        ),
      ],
      descriptionPokemon: Strings.descCharmeleon,
      peso: 19.0,
      altura: 1.1,
      categoria: Strings.flame,
      habilidade: Strings.blaze,
      generoMale: 87.5,
      listFraquezas: [
        Elemento(
          imageElemento: ImageAsset.elementoAgua,
          nameElemento: Strings.agua,
          colorElemento: AppColors.botaoAguaButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoTerrestre,
          nameElemento: Strings.terrestre,
          colorElemento: AppColors.botaoTerrestreButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoPedra,
          nameElemento: Strings.pedra,
          colorElemento: AppColors.botaoPedraButton,
        ),
      ],
      listEvolucoes: [
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundFogo,
          avatarPokemon: ImageAsset.avatarPngCharmander,
          namePokemon: Strings.bulbasaur,
          nome: Strings.nome004,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineFogo,
              colorElemento: AppColors.botaoFogoButton,
            ),
          ],
          level: Strings.lv16,
        ),
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundFogo,
          avatarPokemon: ImageAsset.avatarPngCharmeleon,
          namePokemon: Strings.charmeleon,
          nome: Strings.nome005,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineFogo,
              colorElemento: AppColors.botaoFogoButton,
            ),
          ],
          level: Strings.lv36,
        ),
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundFogo,
          avatarPokemon: ImageAsset.avatarPngCharizard,
          namePokemon: Strings.charizard,
          nome: Strings.nome006,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineFogo,
              colorElemento: AppColors.botaoFogoButton,
            ),
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineVoador,
              colorElemento: AppColors.botaoVoadorButton,
            ),
          ],
        ),
      ],
    ),
    Pokemon(
      isFavorite: false,
      backgroundElemento: ImageAsset.backgroundFogo,
      elementoImage: ImageAsset.elementoFogo,
      elementoOutlineImage: ImageAsset.elementoOutlineFogo,
      avatarPokemon: ImageAsset.avatarCharizard,
      namePokemon: Strings.charizard,
      nome: Strings.nome006,
      listElemento: [
        Elemento(
          imageElemento: ImageAsset.elementoFogo,
          nameElemento: Strings.fogo,
          colorElemento: AppColors.botaoFogoButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoVoador,
          nameElemento: Strings.voador,
          colorElemento: AppColors.botaoVoadorButton,
        )
      ],
      descriptionPokemon: Strings.descCharizard,
      peso: 90.5,
      altura: 1.7,
      categoria: Strings.lizard,
      habilidade: Strings.blaze,
      generoMale: 87.5,
      listFraquezas: [
        Elemento(
          imageElemento: ImageAsset.elementoAgua,
          nameElemento: Strings.agua,
          colorElemento: AppColors.botaoAguaButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoEletrico,
          nameElemento: Strings.eletrico,
          colorElemento: AppColors.botaoEletricoButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoPedra,
          nameElemento: Strings.pedra,
          colorElemento: AppColors.botaoPedraButton,
        ),
      ],
      listEvolucoes: [
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundFogo,
          avatarPokemon: ImageAsset.avatarPngCharmander,
          namePokemon: Strings.bulbasaur,
          nome: Strings.nome004,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineFogo,
              colorElemento: AppColors.botaoFogoButton,
            ),
          ],
          level: Strings.lv16,
        ),
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundFogo,
          avatarPokemon: ImageAsset.avatarPngCharmeleon,
          namePokemon: Strings.charmeleon,
          nome: Strings.nome005,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineFogo,
              colorElemento: AppColors.botaoFogoButton,
            ),
          ],
          level: Strings.lv36,
        ),
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundFogo,
          avatarPokemon: ImageAsset.avatarPngCharizard,
          namePokemon: Strings.charizard,
          nome: Strings.nome006,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineFogo,
              colorElemento: AppColors.botaoFogoButton,
            ),
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineVoador,
              colorElemento: AppColors.botaoVoadorButton,
            ),
          ],
        ),
      ],
    ),
    Pokemon(
      isFavorite: false,
      backgroundElemento: ImageAsset.backgroundAgua,
      elementoImage: ImageAsset.elementoAgua,
      elementoOutlineImage: ImageAsset.elementoOutlineAgua,
      avatarPokemon: ImageAsset.avatarSquirtle,
      namePokemon: Strings.squirtle,
      nome: Strings.nome007,
      listElemento: [
        Elemento(
          imageElemento: ImageAsset.elementoAgua,
          nameElemento: Strings.agua,
          colorElemento: AppColors.botaoAguaButton,
        ),
      ],
      descriptionPokemon: Strings.descSquirtle,
      peso: 9.0,
      altura: 0.5,
      categoria: Strings.tinyTurtle,
      habilidade: Strings.torrent,
      generoMale: 87.5,
      listFraquezas: [
        Elemento(
          imageElemento: ImageAsset.elementoGrama,
          nameElemento: Strings.grama,
          colorElemento: AppColors.botaoGramaButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoEletrico,
          nameElemento: Strings.eletrico,
          colorElemento: AppColors.botaoEletricoButton,
        ),
      ],
      listEvolucoes: [
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundAgua,
          avatarPokemon: ImageAsset.avatarPngSquirtle,
          namePokemon: Strings.squirtle,
          nome: Strings.nome007,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineAgua,
              colorElemento: AppColors.botaoAguaButton,
            ),
          ],
          level: Strings.lv16,
        ),
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundAgua,
          avatarPokemon: ImageAsset.avatarPngWartortle,
          namePokemon: Strings.wartortle,
          nome: Strings.nome008,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineAgua,
              colorElemento: AppColors.botaoAguaButton,
            ),
          ],
          level: Strings.lv36,
        ),
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundAgua,
          avatarPokemon: ImageAsset.avatarPngBlastoise,
          namePokemon: Strings.blastoise,
          nome: Strings.nome009,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineAgua,
              colorElemento: AppColors.botaoAguaButton,
            ),
          ],
        ),
      ],
    ),
    Pokemon(
      isFavorite: false,
      backgroundElemento: ImageAsset.backgroundAgua,
      elementoImage: ImageAsset.elementoAgua,
      elementoOutlineImage: ImageAsset.elementoOutlineAgua,
      avatarPokemon: ImageAsset.avatarWartortle,
      namePokemon: Strings.wartortle,
      nome: Strings.nome008,
      listElemento: [
        Elemento(
          imageElemento: ImageAsset.elementoAgua,
          nameElemento: Strings.agua,
          colorElemento: AppColors.botaoAguaButton,
        ),
      ],
      descriptionPokemon: Strings.descWartortle,
      peso: 22.5,
      altura: 1.0,
      categoria: Strings.turtle,
      habilidade: Strings.torrent,
      generoMale: 87.5,
      listFraquezas: [
        Elemento(
          imageElemento: ImageAsset.elementoGrama,
          nameElemento: Strings.grama,
          colorElemento: AppColors.botaoGramaButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoEletrico,
          nameElemento: Strings.eletrico,
          colorElemento: AppColors.botaoEletricoButton,
        ),
      ],
      listEvolucoes: [
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundAgua,
          avatarPokemon: ImageAsset.avatarPngSquirtle,
          namePokemon: Strings.squirtle,
          nome: Strings.nome007,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineAgua,
              colorElemento: AppColors.botaoAguaButton,
            ),
          ],
          level: Strings.lv16,
        ),
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundAgua,
          avatarPokemon: ImageAsset.avatarPngWartortle,
          namePokemon: Strings.wartortle,
          nome: Strings.nome008,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineAgua,
              colorElemento: AppColors.botaoAguaButton,
            ),
          ],
          level: Strings.lv36,
        ),
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundAgua,
          avatarPokemon: ImageAsset.avatarPngBlastoise,
          namePokemon: Strings.blastoise,
          nome: Strings.nome009,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineAgua,
              colorElemento: AppColors.botaoAguaButton,
            ),
          ],
        ),
      ],
    ),
    Pokemon(
      isFavorite: false,
      backgroundElemento: ImageAsset.backgroundAgua,
      elementoImage: ImageAsset.elementoAgua,
      elementoOutlineImage: ImageAsset.elementoOutlineAgua,
      avatarPokemon: ImageAsset.avatarBlastoise,
      namePokemon: Strings.blastoise,
      nome: Strings.nome009,
      listElemento: [
        Elemento(
          imageElemento: ImageAsset.elementoAgua,
          nameElemento: Strings.agua,
          colorElemento: AppColors.botaoAguaButton,
        ),
      ],
      descriptionPokemon: Strings.descBlastoise,
      peso: 85.5,
      altura: 1.6,
      categoria: Strings.sellfish,
      habilidade: Strings.torrent,
      generoMale: 87.5,
      listFraquezas: [
        Elemento(
          imageElemento: ImageAsset.elementoGrama,
          nameElemento: Strings.grama,
          colorElemento: AppColors.botaoGramaButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoEletrico,
          nameElemento: Strings.eletrico,
          colorElemento: AppColors.botaoEletricoButton,
        ),
      ],
      listEvolucoes: [
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundAgua,
          avatarPokemon: ImageAsset.avatarPngSquirtle,
          namePokemon: Strings.squirtle,
          nome: Strings.nome007,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineAgua,
              colorElemento: AppColors.botaoAguaButton,
            ),
          ],
          level: Strings.lv16,
        ),
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundAgua,
          avatarPokemon: ImageAsset.avatarPngWartortle,
          namePokemon: Strings.wartortle,
          nome: Strings.nome008,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineAgua,
              colorElemento: AppColors.botaoAguaButton,
            ),
          ],
          level: Strings.lv36,
        ),
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundAgua,
          avatarPokemon: ImageAsset.avatarPngBlastoise,
          namePokemon: Strings.blastoise,
          nome: Strings.nome009,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineAgua,
              colorElemento: AppColors.botaoAguaButton,
            ),
          ],
        ),
      ],
    ),
    Pokemon(
      isFavorite: false,
      backgroundElemento: ImageAsset.backgroundInseto,
      elementoImage: ImageAsset.elementoInseto,
      elementoOutlineImage: ImageAsset.elementoOutlineInseto,
      avatarPokemon: ImageAsset.avatarBeedrill,
      namePokemon: Strings.beedrill,
      nome: Strings.nome015,
      listElemento: [
        Elemento(
          imageElemento: ImageAsset.elementoInseto,
          nameElemento: Strings.inseto,
          colorElemento: AppColors.botaoInsetoButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoVenenoso,
          nameElemento: Strings.venenoso,
          colorElemento: AppColors.botaoInsetoButton,
        ),
      ],
      descriptionPokemon: Strings.descBeedrill,
      peso: 29.5,
      altura: 1.0,
      categoria: Strings.poisonBee,
      habilidade: Strings.swarm,
      generoMale: 50.0,
      listFraquezas: [
        Elemento(
          imageElemento: ImageAsset.elementoFogo,
          nameElemento: Strings.fogo,
          colorElemento: AppColors.botaoFogoButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoPsiquico,
          nameElemento: Strings.psiquico,
          colorElemento: AppColors.botaoPsiquisoButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoVoador,
          nameElemento: Strings.voador,
          colorElemento: AppColors.botaoVoadorButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoPedra,
          nameElemento: Strings.pedra,
          colorElemento: AppColors.botaoPedraButton,
        ),
      ],
      listEvolucoes: [
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundInseto,
          avatarPokemon: ImageAsset.avatarPngWeedle,
          namePokemon: Strings.weedle,
          nome: Strings.nome013,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineInseto,
              colorElemento: AppColors.botaoInsetoButton,
            ),
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineVenenoso,
              colorElemento: AppColors.botaoVenenosoButton,
            ),
          ],
          level: Strings.lv07,
        ),
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundInseto,
          avatarPokemon: ImageAsset.avatarPngKakuna,
          namePokemon: Strings.kakuna,
          nome: Strings.nome014,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineInseto,
              colorElemento: AppColors.botaoInsetoButton,
            ),
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineVenenoso,
              colorElemento: AppColors.botaoVenenosoButton,
            ),
          ],
          level: Strings.lv10,
        ),
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundInseto,
          avatarPokemon: ImageAsset.avatarPngBeedrill,
          namePokemon: Strings.beedrill,
          nome: Strings.nome015,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineInseto,
              colorElemento: AppColors.botaoInsetoButton,
            ),
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineVenenoso,
              colorElemento: AppColors.botaoVenenosoButton,
            ),
          ],
        ),
      ],
    ),
    Pokemon(
      isFavorite: false,
      backgroundElemento: ImageAsset.backgroundEletrico,
      elementoImage: ImageAsset.elementoEletrico,
      elementoOutlineImage: ImageAsset.elementoOutlineEletrico,
      avatarPokemon: ImageAsset.avatarPikachu,
      namePokemon: Strings.pikachu,
      nome: Strings.nome025,
      listElemento: [
        Elemento(
          imageElemento: ImageAsset.elementoEletrico,
          nameElemento: Strings.eletrico,
          colorElemento: AppColors.botaoEletricoButton,
        ),
      ],
      descriptionPokemon: Strings.descPikachu,
      peso: 6.0,
      altura: 0.4,
      categoria: Strings.mouse,
      habilidade: Strings.staticHabilidade,
      generoMale: 50.0,
      listFraquezas: [
        Elemento(
          imageElemento: ImageAsset.elementoTerrestre,
          nameElemento: Strings.terrestre,
          colorElemento: AppColors.botaoTerrestreButton,
        ),
      ],
      listEvolucoes: [
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundEletrico,
          avatarPokemon: ImageAsset.avatarPngPichu,
          namePokemon: Strings.pichu,
          nome: Strings.nome172,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineEletrico,
              colorElemento: AppColors.botaoEletricoButton,
            ),
          ],
          level: Strings.conditionFirst,
        ),
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundEletrico,
          avatarPokemon: ImageAsset.avatarPngPikachu,
          namePokemon: Strings.pikachu,
          nome: Strings.nome025,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineEletrico,
              colorElemento: AppColors.botaoEletricoButton,
            ),
          ],
          level: Strings.conditionUseOne,
        ),
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundEletrico,
          avatarPokemon: ImageAsset.avatarPngRaichu,
          namePokemon: Strings.raichu,
          nome: Strings.nome026,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineEletrico,
              colorElemento: AppColors.botaoEletricoButton,
            ),
          ],
        ),
      ],
    ),
    Pokemon(
      isFavorite: false,
      backgroundElemento: ImageAsset.backgroundFada,
      elementoImage: ImageAsset.elementoFada,
      elementoOutlineImage: ImageAsset.elementoOutlineFada,
      avatarPokemon: ImageAsset.avatarClefairy,
      namePokemon: Strings.clefairy,
      nome: Strings.nome035,
      listElemento: [
        Elemento(
          imageElemento: ImageAsset.elementoFada,
          nameElemento: Strings.fada,
          colorElemento: AppColors.botaoFadaButton,
        ),
      ],
      descriptionPokemon: Strings.descClefairy,
      peso: 7.5,
      altura: 0.6,
      categoria: Strings.fairy,
      habilidade: Strings.cuteCharmMagicGuard,
      generoMale: 25.0,
      listFraquezas: [
        Elemento(
          imageElemento: ImageAsset.elementoMetal,
          nameElemento: Strings.metal,
          colorElemento: AppColors.botaoMetalButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoVenenoso,
          nameElemento: Strings.venenoso,
          colorElemento: AppColors.botaoVenenosoButton,
        ),
      ],
      listEvolucoes: [
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundFada,
          avatarPokemon: ImageAsset.avatarPngCleffa,
          namePokemon: Strings.cleffa,
          nome: Strings.nome173,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineFada,
              colorElemento: AppColors.botaoFadaButton,
            ),
          ],
          level: Strings.conditionFirst,
        ),
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundFada,
          avatarPokemon: ImageAsset.avatarPngClefairy,
          namePokemon: Strings.clefairy,
          nome: Strings.nome035,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineFada,
              colorElemento: AppColors.botaoFadaButton,
            ),
          ],
          level: Strings.conditionUseTwo,
        ),
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundFada,
          avatarPokemon: ImageAsset.avatarPngClefable,
          namePokemon: Strings.clefable,
          nome: Strings.nome036,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineFada,
              colorElemento: AppColors.botaoFadaButton,
            ),
          ],
        ),
      ],
    ),
    Pokemon(
      isFavorite: false,
      backgroundElemento: ImageAsset.backgroundTerrestre,
      elementoImage: ImageAsset.elementoTerrestre,
      elementoOutlineImage: ImageAsset.elementoOutlineTerrestre,
      avatarPokemon: ImageAsset.avatarDugtrio,
      namePokemon: Strings.dugtrio,
      nome: Strings.nome051,
      listElemento: [
        Elemento(
          imageElemento: ImageAsset.elementoTerrestre,
          nameElemento: Strings.terrestre,
          colorElemento: AppColors.botaoTerrestreButton,
        ),
      ],
      descriptionPokemon: Strings.descDugtrio,
      peso: 33.3,
      altura: 0.7,
      categoria: Strings.mole,
      habilidade: Strings.sandVeilArenaTrap,
      generoMale: 50.0,
      listFraquezas: [
        Elemento(
          imageElemento: ImageAsset.elementoAgua,
          nameElemento: Strings.agua,
          colorElemento: AppColors.botaoAguaButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoGrama,
          nameElemento: Strings.grama,
          colorElemento: AppColors.botaoGramaButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoGelo,
          nameElemento: Strings.gelo,
          colorElemento: AppColors.botaoGeloButton,
        ),
      ],
      listEvolucoes: [
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundTerrestre,
          avatarPokemon: ImageAsset.avatarPngDiglett,
          namePokemon: Strings.diglett,
          nome: Strings.nome050,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineTerrestre,
              colorElemento: AppColors.botaoTerrestreButton,
            ),
          ],
          level: Strings.lv26,
        ),
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundTerrestre,
          avatarPokemon: ImageAsset.avatarPngDugtrio,
          namePokemon: Strings.dugtrio,
          nome: Strings.nome051,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineTerrestre,
              colorElemento: AppColors.botaoTerrestreButton,
            ),
          ],
        ),
      ],
    ),
    Pokemon(
      isFavorite: false,
      backgroundElemento: ImageAsset.backgroundPedra,
      elementoImage: ImageAsset.elementoPedra,
      elementoOutlineImage: ImageAsset.elementoOutlinePedra,
      avatarPokemon: ImageAsset.avatarOnix,
      namePokemon: Strings.onix,
      nome: Strings.nome095,
      listElemento: [
        Elemento(
          imageElemento: ImageAsset.elementoPedra,
          nameElemento: Strings.pedra,
          colorElemento: AppColors.botaoPedraButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoTerrestre,
          nameElemento: Strings.terrestre,
          colorElemento: AppColors.botaoTerrestreButton,
        ),
      ],
      descriptionPokemon: Strings.descOnix,
      peso: 210.0,
      altura: 8.8,
      categoria: Strings.rockSnake,
      habilidade: Strings.rockHeadSturdy,
      generoMale: 50.0,
      listFraquezas: [
        Elemento(
          imageElemento: ImageAsset.elementoMetal,
          nameElemento: Strings.metal,
          colorElemento: AppColors.botaoMetalButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoLutador,
          nameElemento: Strings.lutador,
          colorElemento: AppColors.botaoLutadorButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoAgua,
          nameElemento: Strings.agua,
          colorElemento: AppColors.botaoAguaButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoGelo,
          nameElemento: Strings.gelo,
          colorElemento: AppColors.botaoGeloButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoGrama,
          nameElemento: Strings.grama,
          colorElemento: AppColors.botaoGramaButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoTerrestre,
          nameElemento: Strings.terrestre,
          colorElemento: AppColors.botaoTerrestreButton,
        ),
      ],
      listEvolucoes: [
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundPedra,
          avatarPokemon: ImageAsset.avatarPngOnix,
          namePokemon: Strings.onix,
          nome: Strings.nome095,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlinePedra,
              colorElemento: AppColors.botaoPedraButton,
            ),
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineTerrestre,
              colorElemento: AppColors.botaoTerrestreButton,
            ),
          ],
          level: Strings.conditionFirst,
        ),
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundPedra,
          avatarPokemon: ImageAsset.avatarPngSteelix,
          namePokemon: Strings.steelix,
          nome: Strings.nome208,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlinePedra,
              colorElemento: AppColors.botaoPedraButton,
            ),
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineMetal,
              colorElemento: AppColors.botaoMetalButton,
            ),
          ],
        ),
      ],
    ),
    Pokemon(
      isFavorite: false,
      backgroundElemento: ImageAsset.backgroundNormal,
      elementoImage: ImageAsset.elementoNormal,
      elementoOutlineImage: ImageAsset.elementoOutlineNormal,
      avatarPokemon: ImageAsset.avatarLickitung,
      namePokemon: Strings.lickitung,
      nome: Strings.nome108,
      listElemento: [
        Elemento(
          imageElemento: ImageAsset.elementoNormal,
          nameElemento: Strings.normal,
          colorElemento: AppColors.botaoNormalButton,
        ),
      ],
      descriptionPokemon: Strings.descLickitung,
      peso: 65.5,
      altura: 1.2,
      categoria: Strings.licking,
      habilidade: Strings.obliviousOwnTempo,
      generoMale: 50.0,
      listFraquezas: [
        Elemento(
          imageElemento: ImageAsset.elementoLutador,
          nameElemento: Strings.lutador,
          colorElemento: AppColors.botaoLutadorButton,
        ),
      ],
      listEvolucoes: [
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundNormal,
          avatarPokemon: ImageAsset.avatarPngLickitung,
          namePokemon: Strings.lickitung,
          nome: Strings.nome108,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineNormal,
              colorElemento: AppColors.botaoNormalButton,
            ),
          ],
          level: Strings.conditionUpLevel,
        ),
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundNormal,
          avatarPokemon: ImageAsset.avatarPngLickilicky,
          namePokemon: Strings.lickilicky,
          nome: Strings.nome463,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineNormal,
              colorElemento: AppColors.botaoNormalButton,
            ),
          ],
        ),
      ],
    ),
    Pokemon(
      isFavorite: false,
      backgroundElemento: ImageAsset.backgroundVenenoso,
      elementoImage: ImageAsset.elementoVenenoso,
      elementoOutlineImage: ImageAsset.elementoOutlineVenenoso,
      avatarPokemon: ImageAsset.avatarKoffing,
      namePokemon: Strings.koffing,
      nome: Strings.nome109,
      listElemento: [
        Elemento(
          imageElemento: ImageAsset.elementoVenenoso,
          nameElemento: Strings.venenoso,
          colorElemento: AppColors.botaoVenenosoButton,
        ),
      ],
      descriptionPokemon: Strings.descKoffing,
      peso: 1.0,
      altura: 0.6,
      categoria: Strings.poisonGas,
      habilidade: Strings.levitateNeutralizing,
      generoMale: 50.0,
      listFraquezas: [
        Elemento(
          imageElemento: ImageAsset.elementoPsiquico,
          nameElemento: Strings.psiquico,
          colorElemento: AppColors.botaoPsiquisoButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoTerrestre,
          nameElemento: Strings.terrestre,
          colorElemento: AppColors.botaoTerrestreButton,
        ),
      ],
      listEvolucoes: [
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundVenenoso,
          avatarPokemon: ImageAsset.avatarPngKoffing,
          namePokemon: Strings.koffing,
          nome: Strings.nome109,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineVenenoso,
              colorElemento: AppColors.botaoVenenosoButton,
            ),
          ],
          level: Strings.lv35,
        ),
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundVenenoso,
          avatarPokemon: ImageAsset.avatarPngWeezing,
          namePokemon: Strings.weezing,
          nome: Strings.nome110,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineVenenoso,
              colorElemento: AppColors.botaoVenenosoButton,
            ),
          ],
        ),
      ],
    ),
    Pokemon(
      isFavorite: false,
      backgroundElemento: ImageAsset.backgroundPsiquico,
      elementoImage: ImageAsset.elementoPsiquico,
      elementoOutlineImage: ImageAsset.elementoOutlinePsiquico,
      avatarPokemon: ImageAsset.avatarMew,
      namePokemon: Strings.mew,
      nome: Strings.nome151,
      listElemento: [
        Elemento(
          imageElemento: ImageAsset.elementoPsiquico,
          nameElemento: Strings.psiquico,
          colorElemento: AppColors.botaoPsiquisoButton,
        ),
      ],
      descriptionPokemon: Strings.descMew,
      peso: 4.0,
      altura: 0.4,
      categoria: Strings.newSpecies,
      habilidade: Strings.synchronize,
      generoMale: 0.0,
      listFraquezas: [
        Elemento(
          imageElemento: ImageAsset.elementoFantasma,
          nameElemento: Strings.fantasma,
          colorElemento: AppColors.botaoFantasmaButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoNoturno,
          nameElemento: Strings.noturno,
          colorElemento: AppColors.botaoNoturnoButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoInseto,
          nameElemento: Strings.inseto,
          colorElemento: AppColors.botaoInsetoButton,
        ),
      ],
      listEvolucoes: [
        Evolucoes(
          descriptionEvolucoes: Strings.descriptionEvolucoes,
          backgroundEvolucoes: ImageAsset.backgroundPsiquico,
          avatarPokemon: ImageAsset.avatarPngMew,
          namePokemon: Strings.mew,
          nome: Strings.nome151,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineFada,
              colorElemento: AppColors.botaoFadaButton,
            ),
          ],
        ),
      ],
    ),
    Pokemon(
      isFavorite: false,
      backgroundElemento: ImageAsset.backgroundAgua,
      elementoImage: ImageAsset.elementoAgua,
      elementoOutlineImage: ImageAsset.elementoOutlineAgua,
      avatarPokemon: ImageAsset.avatarSuicune,
      namePokemon: Strings.suicune,
      nome: Strings.nome245,
      listElemento: [
        Elemento(
          imageElemento: ImageAsset.elementoAgua,
          nameElemento: Strings.agua,
          colorElemento: AppColors.botaoAguaButton,
        ),
      ],
      descriptionPokemon: Strings.descSuicune,
      peso: 187.0,
      altura: 2.0,
      categoria: Strings.aurora,
      habilidade: Strings.pressure,
      generoMale: 0.0,
      listFraquezas: [
        Elemento(
          imageElemento: ImageAsset.elementoGrama,
          nameElemento: Strings.grama,
          colorElemento: AppColors.botaoGramaButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoEletrico,
          nameElemento: Strings.eletrico,
          colorElemento: AppColors.botaoEletricoButton,
        ),
      ],
      listEvolucoes: [
        Evolucoes(
          descriptionEvolucoes: Strings.descriptionEvolucoes,
          backgroundEvolucoes: ImageAsset.backgroundAgua,
          avatarPokemon: ImageAsset.avatarPngSuicune,
          namePokemon: Strings.suicune,
          nome: Strings.nome245,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineAgua,
              colorElemento: AppColors.botaoAguaButton,
            ),
          ],
        ),
      ],
    ),
    Pokemon(
      isFavorite: false,
      backgroundElemento: ImageAsset.backgroundMetal,
      elementoImage: ImageAsset.elementoMetal,
      elementoOutlineImage: ImageAsset.elementoOutlineMetal,
      avatarPokemon: ImageAsset.avatarAggron,
      namePokemon: Strings.aggron,
      nome: Strings.nome306,
      listElemento: [
        Elemento(
          imageElemento: ImageAsset.elementoMetal,
          nameElemento: Strings.metal,
          colorElemento: AppColors.botaoMetalButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoPedra,
          nameElemento: Strings.pedra,
          colorElemento: AppColors.botaoPedraButton,
        ),
      ],
      descriptionPokemon: Strings.descAggron,
      peso: 360.0,
      altura: 2.1,
      categoria: Strings.ironArmor,
      habilidade: Strings.rockHeadSturdy,
      generoMale: 50.0,
      listFraquezas: [
        Elemento(
          imageElemento: ImageAsset.elementoAgua,
          nameElemento: Strings.agua,
          colorElemento: AppColors.botaoAguaButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoLutador,
          nameElemento: Strings.lutador,
          colorElemento: AppColors.botaoLutadorButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoTerrestre,
          nameElemento: Strings.terrestre,
          colorElemento: AppColors.botaoTerrestreButton,
        ),
      ],
      listEvolucoes: [
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundMetal,
          avatarPokemon: ImageAsset.avatarPngAron,
          namePokemon: Strings.aron,
          nome: Strings.nome304,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineMetal,
              colorElemento: AppColors.botaoMetalButton,
            ),
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlinePedra,
              colorElemento: AppColors.botaoPedraButton,
            ),
          ],
          level: Strings.lv32,
        ),
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundMetal,
          avatarPokemon: ImageAsset.avatarPngLairon,
          namePokemon: Strings.lairon,
          nome: Strings.nome305,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineMetal,
              colorElemento: AppColors.botaoMetalButton,
            ),
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlinePedra,
              colorElemento: AppColors.botaoPedraButton,
            ),
          ],
          level: Strings.lv42,
        ),
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundMetal,
          avatarPokemon: ImageAsset.avatarPngAggron,
          namePokemon: Strings.aggron,
          nome: Strings.nome306,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineMetal,
              colorElemento: AppColors.botaoMetalButton,
            ),
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlinePedra,
              colorElemento: AppColors.botaoPedraButton,
            ),
          ],
        ),
      ],
    ),
    Pokemon(
      isFavorite: false,
      backgroundElemento: ImageAsset.backgroundDragao,
      elementoImage: ImageAsset.elementoDragao,
      elementoOutlineImage: ImageAsset.elementoOutlineDragao,
      avatarPokemon: ImageAsset.avatarRayquaza,
      namePokemon: Strings.rayquaza,
      nome: Strings.nome384,
      listElemento: [
        Elemento(
          imageElemento: ImageAsset.elementoDragao,
          nameElemento: Strings.dragao,
          colorElemento: AppColors.botaoDragaoButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoVoador,
          nameElemento: Strings.voador,
          colorElemento: AppColors.botaoVoadorButton,
        ),
      ],
      descriptionPokemon: Strings.descRayquaza,
      peso: 206.5,
      altura: 7.0,
      categoria: Strings.skyHigh,
      habilidade: Strings.airLock,
      generoMale: 0.0,
      listFraquezas: [
        Elemento(
          imageElemento: ImageAsset.elementoFada,
          nameElemento: Strings.fada,
          colorElemento: AppColors.botaoFadaButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoDragao,
          nameElemento: Strings.dragao,
          colorElemento: AppColors.botaoDragaoButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoGelo,
          nameElemento: Strings.gelo,
          colorElemento: AppColors.botaoGeloButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoPedra,
          nameElemento: Strings.pedra,
          colorElemento: AppColors.botaoPedraButton,
        ),
      ],
      listEvolucoes: [
        Evolucoes(
          descriptionEvolucoes: Strings.descriptionEvolucoes,
          backgroundEvolucoes: ImageAsset.backgroundDragao,
          avatarPokemon: ImageAsset.avatarPngRayquaza,
          namePokemon: Strings.rayquaza,
          nome: Strings.nome384,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineDragao,
              colorElemento: AppColors.botaoDragaoButton,
            ),
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineVoador,
              colorElemento: AppColors.botaoVoadorButton,
            ),
          ],
        ),
      ],
    ),
    Pokemon(
      isFavorite: false,
      backgroundElemento: ImageAsset.backgroundLutador,
      elementoImage: ImageAsset.elementoLutador,
      elementoOutlineImage: ImageAsset.elementoOutlineLutador,
      avatarPokemon: ImageAsset.avatarLucario,
      namePokemon: Strings.lucario,
      nome: Strings.nome448,
      listElemento: [
        Elemento(
          imageElemento: ImageAsset.elementoLutador,
          nameElemento: Strings.lutador,
          colorElemento: AppColors.botaoLutadorButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoMetal,
          nameElemento: Strings.metal,
          colorElemento: AppColors.botaoMetalButton,
        ),
      ],
      descriptionPokemon: Strings.descLucario,
      peso: 54.0,
      altura: 1.2,
      categoria: Strings.aura,
      habilidade: Strings.innerFocusSteadfast,
      generoMale: 87.5,
      listFraquezas: [
        Elemento(
          imageElemento: ImageAsset.elementoFogo,
          nameElemento: Strings.fogo,
          colorElemento: AppColors.botaoFogoButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoLutador,
          nameElemento: Strings.lutador,
          colorElemento: AppColors.botaoLutadorButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoTerrestre,
          nameElemento: Strings.terrestre,
          colorElemento: AppColors.botaoTerrestreButton,
        ),
      ],
      listEvolucoes: [
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundLutador,
          avatarPokemon: ImageAsset.avatarPngRiolu,
          namePokemon: Strings.riolu,
          nome: Strings.nome447,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineLutador,
              colorElemento: AppColors.botaoLutadorButton,
            ),
          ],
          level: Strings.conditionFirst,
        ),
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundLutador,
          avatarPokemon: ImageAsset.avatarPngLucario,
          namePokemon: Strings.lucario,
          nome: Strings.nome448,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineLutador,
              colorElemento: AppColors.botaoLutadorButton,
            ),
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineMetal,
              colorElemento: AppColors.botaoMetalButton,
            ),
          ],
        ),
      ],
    ),
    Pokemon(
      isFavorite: false,
      backgroundElemento: ImageAsset.backgroundGrama,
      elementoImage: ImageAsset.elementoGrama,
      elementoOutlineImage: ImageAsset.elementoOutlineGrama,
      avatarPokemon: ImageAsset.avatarSerperior,
      namePokemon: Strings.serperior,
      nome: Strings.nome497,
      listElemento: [
        Elemento(
          imageElemento: ImageAsset.elementoGrama,
          nameElemento: Strings.grama,
          colorElemento: AppColors.botaoGramaButton,
        ),
      ],
      descriptionPokemon: Strings.descSerperior,
      peso: 60.3,
      altura: 3.3,
      categoria: Strings.regal,
      habilidade: Strings.overgrow,
      generoMale: 87.5,
      listFraquezas: [
        Elemento(
          imageElemento: ImageAsset.elementoFogo,
          nameElemento: Strings.fogo,
          colorElemento: AppColors.botaoFogoButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoVoador,
          nameElemento: Strings.voador,
          colorElemento: AppColors.botaoVoadorButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoGelo,
          nameElemento: Strings.gelo,
          colorElemento: AppColors.botaoGeloButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoVenenoso,
          nameElemento: Strings.venenoso,
          colorElemento: AppColors.botaoVenenosoButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoInseto,
          nameElemento: Strings.inseto,
          colorElemento: AppColors.botaoInsetoButton,
        ),
      ],
      listEvolucoes: [
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundGrama,
          avatarPokemon: ImageAsset.avatarPngSnivy,
          namePokemon: Strings.snivy,
          nome: Strings.nome495,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineGrama,
              colorElemento: AppColors.botaoGramaButton,
            ),
          ],
          level: Strings.lv17,
        ),
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundGrama,
          avatarPokemon: ImageAsset.avatarPngServine,
          namePokemon: Strings.servine,
          nome: Strings.nome496,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineGrama,
              colorElemento: AppColors.botaoGramaButton,
            ),
          ],
          level: Strings.lv36,
        ),
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundGrama,
          avatarPokemon: ImageAsset.avatarPngSerperior,
          namePokemon: Strings.serperior,
          nome: Strings.nome497,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineGrama,
              colorElemento: AppColors.botaoGramaButton,
            ),
          ],
        ),
      ],
    ),
    Pokemon(
      isFavorite: false,
      backgroundElemento: ImageAsset.backgroundNoturno,
      elementoImage: ImageAsset.elementoNoturno,
      elementoOutlineImage: ImageAsset.elementoOutlineNoturno,
      avatarPokemon: ImageAsset.avatarZoroark,
      namePokemon: Strings.zoroark,
      nome: Strings.nome571,
      listElemento: [
        Elemento(
          imageElemento: ImageAsset.elementoNoturno,
          nameElemento: Strings.noturno,
          colorElemento: AppColors.botaoNoturnoButton,
        ),
      ],
      descriptionPokemon: Strings.descZoroark,
      peso: 81.1,
      altura: 1.6,
      categoria: Strings.illusionFox,
      habilidade: Strings.illusion,
      generoMale: 87.5,
      listFraquezas: [
        Elemento(
          imageElemento: ImageAsset.elementoFada,
          nameElemento: Strings.fada,
          colorElemento: AppColors.botaoFadaButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoInseto,
          nameElemento: Strings.inseto,
          colorElemento: AppColors.botaoInsetoButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoLutador,
          nameElemento: Strings.lutador,
          colorElemento: AppColors.botaoLutadorButton,
        ),
      ],
      listEvolucoes: [
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundNoturno,
          avatarPokemon: ImageAsset.avatarPngZorua,
          namePokemon: Strings.zorua,
          nome: Strings.nome570,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineNoturno,
              colorElemento: AppColors.botaoNoturnoButton,
            ),
          ],
          level: Strings.lv30,
        ),
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundNoturno,
          avatarPokemon: ImageAsset.avatarPngZoroark,
          namePokemon: Strings.zoroark,
          nome: Strings.nome571,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineNoturno,
              colorElemento: AppColors.botaoNoturnoButton,
            ),
          ],
        ),
      ],
    ),
    Pokemon(
      isFavorite: false,
      backgroundElemento: ImageAsset.backgroundFantasma,
      elementoImage: ImageAsset.elementoFantasma,
      elementoOutlineImage: ImageAsset.elementoOutlineFantasma,
      avatarPokemon: ImageAsset.avatarChandelure,
      namePokemon: Strings.chandelure,
      nome: Strings.nome609,
      listElemento: [
        Elemento(
          imageElemento: ImageAsset.elementoFantasma,
          nameElemento: Strings.fantasma,
          colorElemento: AppColors.botaoFantasmaButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoFogo,
          nameElemento: Strings.fogo,
          colorElemento: AppColors.botaoFogoButton,
        ),
      ],
      descriptionPokemon: Strings.descChandelure,
      peso: 34.3,
      altura: 1.0,
      categoria: Strings.luring,
      habilidade: Strings.flashFireFlameBody,
      generoMale: 50.0,
      listFraquezas: [
        Elemento(
          imageElemento: ImageAsset.elementoFantasma,
          nameElemento: Strings.fantasma,
          colorElemento: AppColors.botaoFantasmaButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoNoturno,
          nameElemento: Strings.noturno,
          colorElemento: AppColors.botaoNoturnoButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoTerrestre,
          nameElemento: Strings.terrestre,
          colorElemento: AppColors.botaoTerrestreButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoAgua,
          nameElemento: Strings.agua,
          colorElemento: AppColors.botaoAguaButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoPedra,
          nameElemento: Strings.pedra,
          colorElemento: AppColors.botaoPedraButton,
        ),
      ],
      listEvolucoes: [
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundFantasma,
          avatarPokemon: ImageAsset.avatarPngLitwick,
          namePokemon: Strings.litwick,
          nome: Strings.nome607,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineFantasma,
              colorElemento: AppColors.botaoFantasmaButton,
            ),
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineFogo,
              colorElemento: AppColors.botaoFogoButton,
            ),
          ],
          level: Strings.lv41,
        ),
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundFantasma,
          avatarPokemon: ImageAsset.avatarPngLampet,
          namePokemon: Strings.lampet,
          nome: Strings.nome608,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineFantasma,
              colorElemento: AppColors.botaoFantasmaButton,
            ),
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineFogo,
              colorElemento: AppColors.botaoFogoButton,
            ),
          ],
          level: Strings.conditionUseTwo,
        ),
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundFantasma,
          avatarPokemon: ImageAsset.avatarPngChandelure,
          namePokemon: Strings.chandelure,
          nome: Strings.nome609,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineFantasma,
              colorElemento: AppColors.botaoFantasmaButton,
            ),
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineFogo,
              colorElemento: AppColors.botaoFogoButton,
            ),
          ],
        ),
      ],
    ),
    Pokemon(
      isFavorite: false,
      backgroundElemento: ImageAsset.backgroundGelo,
      elementoImage: ImageAsset.elementoGelo,
      elementoOutlineImage: ImageAsset.elementoOutlineGelo,
      avatarPokemon: ImageAsset.avatarCubchoo,
      namePokemon: Strings.cubchoo,
      nome: Strings.nome613,
      listElemento: [
        Elemento(
          imageElemento: ImageAsset.elementoGelo,
          nameElemento: Strings.gelo,
          colorElemento: AppColors.botaoGeloButton,
        ),
      ],
      descriptionPokemon: Strings.descCubchoo,
      peso: 8.5,
      altura: 0.5,
      categoria: Strings.chill,
      habilidade: Strings.snowCloakSlushRush,
      generoMale: 50.0,
      listFraquezas: [
        Elemento(
          imageElemento: ImageAsset.elementoFogo,
          nameElemento: Strings.fogo,
          colorElemento: AppColors.botaoFogoButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoMetal,
          nameElemento: Strings.metal,
          colorElemento: AppColors.botaoMetalButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoLutador,
          nameElemento: Strings.lutador,
          colorElemento: AppColors.botaoLutadorButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoPedra,
          nameElemento: Strings.pedra,
          colorElemento: AppColors.botaoPedraButton,
        ),
      ],
      listEvolucoes: [
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundGelo,
          avatarPokemon: ImageAsset.avatarPngCubchoo,
          namePokemon: Strings.cubchoo,
          nome: Strings.nome613,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineGelo,
              colorElemento: AppColors.botaoGeloButton,
            ),
          ],
          level: Strings.lv37,
        ),
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundGelo,
          avatarPokemon: ImageAsset.avatarPngBeartic,
          namePokemon: Strings.beartic,
          nome: Strings.nome614,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineGelo,
              colorElemento: AppColors.botaoGeloButton,
            ),
          ],
        ),
      ],
    ),
    Pokemon(
      isFavorite: false,
      backgroundElemento: ImageAsset.backgroundVoador,
      elementoImage: ImageAsset.elementoVoador,
      elementoOutlineImage: ImageAsset.elementoOutlineVoador,
      avatarPokemon: ImageAsset.avatarToucannon,
      namePokemon: Strings.toucannon,
      nome: Strings.nome733,
      listElemento: [
        Elemento(
          imageElemento: ImageAsset.elementoVoador,
          nameElemento: Strings.voador,
          colorElemento: AppColors.botaoVoadorButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoNormal,
          nameElemento: Strings.normal,
          colorElemento: AppColors.botaoNormalButton,
        ),
      ],
      descriptionPokemon: Strings.descToucannon,
      peso: 26.0,
      altura: 1.1,
      categoria: Strings.cannon,
      habilidade: Strings.keenEyeSkillLink,
      generoMale: 50.0,
      listFraquezas: [
        Elemento(
          imageElemento: ImageAsset.elementoEletrico,
          nameElemento: Strings.eletrico,
          colorElemento: AppColors.botaoEletricoButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoGelo,
          nameElemento: Strings.gelo,
          colorElemento: AppColors.botaoGeloButton,
        ),
        Elemento(
          imageElemento: ImageAsset.elementoPedra,
          nameElemento: Strings.pedra,
          colorElemento: AppColors.botaoPedraButton,
        ),
      ],
      listEvolucoes: [
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundVoador,
          avatarPokemon: ImageAsset.avatarPngPipipek,
          namePokemon: Strings.pipipek,
          nome: Strings.nome731,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineVoador,
              colorElemento: AppColors.botaoVoadorButton,
            ),
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineNormal,
              colorElemento: AppColors.botaoNormalButton,
            ),
          ],
          level: Strings.lv14,
        ),
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundVoador,
          avatarPokemon: ImageAsset.avatarPngTrumbeak,
          namePokemon: Strings.trumbeak,
          nome: Strings.nome732,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineVoador,
              colorElemento: AppColors.botaoVoadorButton,
            ),
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineNormal,
              colorElemento: AppColors.botaoNormalButton,
            ),
          ],
          level: Strings.lv28,
        ),
        Evolucoes(
          backgroundEvolucoes: ImageAsset.backgroundVoador,
          avatarPokemon: ImageAsset.avatarPngToucannon,
          namePokemon: Strings.toucannon,
          nome: Strings.nome733,
          listMiniElementos: [
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineVoador,
              colorElemento: AppColors.botaoVoadorButton,
            ),
            MiniElemento(
              iconElemento: ImageAsset.elementoOutlineNormal,
              colorElemento: AppColors.botaoNormalButton,
            ),
          ],
        ),
      ],
    ),
  ];
}
