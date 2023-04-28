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
      title: Strings.tiposOne,
      textColor: AppColors.botaoTodosText,
      backgroundColor: AppColors.botaoTodosButton,
    ),
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

  static List<Pokemon> listPokemon = [
    const Pokemon(
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
          avatarPokemon: ImageAsset.avatarBulbasaur,
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
          avatarPokemon: ImageAsset.avatarIvysaur,
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
          avatarPokemon: ImageAsset.avatarVenusaur,
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
  ];
}
