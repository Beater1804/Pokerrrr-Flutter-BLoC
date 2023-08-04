import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokerrrr_bloc/src/constants/app_color.dart';
import 'package:pokerrrr_bloc/src/ui/conta/components/header.dart';
import 'package:pokerrrr_bloc/src/ui/conta/components/sub_header.dart';

class ContaScreen extends StatelessWidget {
  const ContaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 32.h,
          ),
          const Header(title: "Pokédex"),
          const SubHeader(
            title: "Mega evoluções",
            description: "Habilita a exibição de mega evoluções.",
            isShowSwitch: true,
          ),
          const SubHeader(
            title: "Outras formas",
            description:
                "Habilita a exibição de formas alternativas de pokémon.",
            isShowSwitch: true,
          ),
          SizedBox(
            height: 16.h,
          ),
          const Header(title: "Notificações"),
          const SubHeader(
            title: "Atualizações na pokédex",
            description: "Novos Pokémons, habilidades, informações, etc.",
            isShowSwitch: true,
          ),
          const SubHeader(
            title: "Mundo Pokémon",
            description: "Acontecimentos e informações do mundo de pokémon.",
            isShowSwitch: true,
          ),
          SizedBox(
            height: 16.h,
          ),
          const Header(title: "Idioma"),
          const SubHeader(
            title: "Idioma da interface",
            description: "Português (PT-BR)",
          ),
          const SubHeader(
            title: "Idioma de informações em jogo",
            description: "English (US)",
          ),
          SizedBox(
            height: 16.h,
          ),
          const Header(title: "Geral"),
          const SubHeader(
            title: "Versão ",
            description: "0.8.12",
          ),
          const SubHeader(
            title: "Termos e condições",
            description: "Tudo o que você precisa saber.",
          ),
          const SubHeader(
            title: "Central de ajuda",
            description: "Precisa de ajuda? Fale conosco.",
          ),
          const SubHeader(
            title: "Sobre",
            description: "Saiba mais sobre o app.",
          ),
          SizedBox(
            height: 16.h,
          ),
          const Header(title: "Outros"),
          const SubHeader(
            titleColor: AppColors.redTitleColor,
            title: "Sair",
            description: "Você entrou como Junior Saraiva.",
          ),
          SizedBox(
            height: 16.h,
          ),
        ],
      ),
    );
  }
}
