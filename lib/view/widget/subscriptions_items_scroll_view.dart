import '../view.dart';

class SubscriptionsitemsScrollView extends StatelessWidget {
  const SubscriptionsitemsScrollView({
    super.key,
    required this.subscriptions,
    required this.subscriptionsPrices,
  });

  final List subscriptions;
  final List subscriptionsPrices;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: subscriptions.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          int newindex = index;
          return ListTile(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
                side: const BorderSide(
                  width: 5.0,
                  color: Colors.white,
                )
            ),
            leading: SizedBox(
                height: 40,
                width: 40,
                child: Image.asset('assets/images/$newindex.png')),
            title: Text(
              subscriptions[index],
              style: TextStyles.h2NormalWhite,
            ),
            trailing: Text(
              subscriptionsPrices[index],
              style: TextStyles.h2NormalWhite,
            ),
          );
        },
      ),
    );
  }
}
