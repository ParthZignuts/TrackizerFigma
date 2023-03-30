
import 'package:syncfusion_flutter_gauges/gauges.dart';
import '../view.dart';

class SpendingAndBudgetSemiCircleGraph extends StatelessWidget {
  const SpendingAndBudgetSemiCircleGraph({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.3,
      width:  MediaQuery.of(context).size.width*0.6,
      child: SfRadialGauge(

        axes: [
          RadialAxis(
            maximum: 200.0,
            minimum: 0.0,
            showTicks: false,
            showLabels: false,

            annotations: [
              GaugeAnnotation(
                widget: Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/logo.png'),
                    const Text('\$82,97',style: TextStyles.h1BoldWhiteForPrice,),
                    const Text('of \$2,000 budget',style:  TextStyles.h2NormalWhite,),
                  ],
                ),
              )
            ],
            ranges: [
              GaugeRange(
                endValue: 0,
                startValue:12,
                color: AppColor.cyan,
              ),   GaugeRange(
                endValue: 13,
                startValue:35,
                color: AppColor.red,
              ),   GaugeRange(
                endValue: 36,
                startValue:80,
                color: AppColor.purple,
              ),

            ],
          )
        ],
      ),
    );
  }
}
