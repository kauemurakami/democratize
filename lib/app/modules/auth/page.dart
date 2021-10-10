import 'package:democratize_app/app/modules/auth/controller.dart';
import 'package:democratize_app/core/utils/size.dart';
import 'package:democratize_app/core/values/colors.dart';
import 'package:democratize_app/routes/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AuthPage extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: Stack(
      children: [
        FlutterLogin(
          navigateBackAfterRecovery: true,
          userType: LoginUserType.phone,
          theme: LoginTheme(
              cardTheme: const CardTheme(shadowColor: Colors.blue),
              textFieldStyle: const TextStyle(color: Colors.black),
              inputTheme: const InputDecorationTheme(
                prefixStyle: TextStyle(
                  color: Colors.black,
                ),
              ),
              primaryColor: Colors.white,
              accentColor: roxin,
              switchAuthTextColor: roxin,
              buttonTheme: const LoginButtonTheme(
                backgroundColor: roxin,
                splashColor: Colors.white,
              )),
          title: 'LOGIN',
          messages: LoginMessages(
              loginButton: 'ENTRAR',
              signupButton: 'CADASTRO',
              flushbarTitleError:
                  'Ops... Verifique os dados e tente novamente.',
              confirmPasswordHint: 'Confirmar senha',
              passwordHint: 'Senha',
              goBackButton: 'Voltar',
              confirmPasswordError: 'Verifique a senha e tente novamente.',
              userHint: 'CPF',
              signUpSuccess: 'Tudo certo!',
              flushbarTitleSuccess: 'Tudo certo!'),
          userValidator: (s) =>
              GetUtils.isCpf(s!) ? null : 'Insira um CPF válido.',
          onLogin: (a) => controller.login(a),
          onSignup: (a) => controller.signup(a),
          hideForgotPasswordButton: true,
          onSubmitAnimationCompleted: () {
            Get.offAllNamed(Routes.DASHBOARD);
          },
          onRecoverPassword: (a) => controller.login(a),
        ),
        Positioned(
            width: SizeConfig.wp(40.0),
            height: SizeConfig.hp(40.0),
            top: -SizeConfig.hp(10.0),
            left: 4.0,
            child: SvgPicture.asset('assets/images/login_image_1.svg')),
        Positioned(
            width: SizeConfig.wp(40.0),
            height: SizeConfig.hp(40.0),
            bottom: -SizeConfig.hp(10.0),
            right: 4.0,
            child: SvgPicture.asset('assets/images/login_image_2.svg')),
        Positioned(
            width: SizeConfig.wp(40.0),
            height: SizeConfig.hp(40.0),
            bottom: -SizeConfig.hp(10.0),
            left: 50.0,
            child: Column(children: const [
              Text(
                'Acompanhamento, opiniões e participação continua da populações na toma de decisões das politicas públicas locais.',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16.0,
                    color: roxin,
                    fontFamily: 'Cairo'),
              ),
            ])),
        Positioned(
          bottom: 0,
          child: MaterialButton(
            color: Colors.black,
            child: Text('dash'),
            onPressed: () => Get.offAllNamed(Routes.DASHBOARD),
          ),
        )
      ],
    ));
  }
}
