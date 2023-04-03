import 'package:flutter/material.dart';

class NotificationTab extends StatefulWidget {
  @override
  _NotificationTabState createState() => _NotificationTabState();
}

class _NotificationTabState extends State<NotificationTab> {
  List<String> notification = [
    'Aviso',
    'Aviso',
    'Aviso',
    'Aviso',
    'Aviso',
    'Aviso',
    'Aviso',
    'Aviso',
    'Aviso',
    'Aviso',
  ];
  List<String> msn = [
    'Obrigado por realizar o pagamento. Sua transação foi concluída com sucesso!',
    'Seu pedido foi enviado e está a caminho! Você receberá um e-mail de confirmação assim que for entregue',
    'Você recebeu uma nova mensagem. Verifique sua caixa de entrada para ler e responder',
    'Sua assinatura foi renovada automaticamente. Aproveite o acesso contínuo aos nossos serviços',
    'Feliz aniversário! Desejamos a você um dia especial cheio de alegria e felicidade',
    'Informamos que atualizamos nossa política de privacidade. Por favor, leia os termos atualizados antes de continuar a usar nossos serviços.',
    'Notificação 7',
    'Notificação 8',
    'Notificação 9',
    'Notificação 10',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: msn.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: icones(Icons.notifications),
            title: texto(notification[index]),
            subtitle: Text(msn[index]),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // ação ao clicar na notificação
            },
          );
        },
      ),
    );
  }
}

Widget texto(String texto) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(0),
    ),
    padding: EdgeInsets.symmetric(vertical: 1, horizontal: 1),
    child: Text(
      texto,
      textAlign: TextAlign.left,
      style: TextStyle(
        color: Color(0xFF234E98),
        fontSize: 18,
        fontWeight: FontWeight.w400,
        overflow: TextOverflow.ellipsis,
      ),
    ),
  );
}

Widget icones(IconData iconData) {
  return Icon(
    iconData,
    size: 24,
    color: Colors.blue,
  );
}
