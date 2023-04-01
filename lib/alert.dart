import 'package:flutter/material.dart';

class NotificationTab extends StatefulWidget {
  @override
  _NotificationTabState createState() => _NotificationTabState();
}

class _NotificationTabState extends State<NotificationTab> {
  List<String> notifications = [
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
        itemCount: notifications.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(Icons.notifications),
            title: Text(notifications[index]),
            subtitle: Text('Descrição da notificação'),
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
