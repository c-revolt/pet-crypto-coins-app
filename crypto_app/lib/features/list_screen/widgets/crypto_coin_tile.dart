import 'package:flutter/material.dart';

class CryptoCoinTile extends StatelessWidget {
  const CryptoCoinTile({
    super.key,
    required this.coinName,
  });

  final String coinName;
  

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
        leading: Image.asset(
          'assets/svg/bitcoin_logo.png',
          height: 30,
          width: 30,
        ),
        title: Text(
          coinName, 
          style: theme.textTheme.bodyMedium
          ),
        subtitle: Text(
          '2000000\$', 
          style: theme.textTheme.bodySmall
          ),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.of(context).pushNamed(
            '/detail',
            arguments: coinName,
          );
        });
  }
}