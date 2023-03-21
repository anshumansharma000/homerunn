import 'package:flutter/material.dart';
import 'package:homerunn/features/food_delivery/widgets/kitchen_card.dart';
import 'package:provider/provider.dart';

import '../../../common/providers/loading_provider.dart';
import '../services/food_delivery_api_services.dart';

class Kitchens extends StatefulWidget {
  const Kitchens({
    super.key,
    required this.fontSize,
  });

  final double fontSize;

  @override
  State<Kitchens> createState() => _KitchensState();
}

class _KitchensState extends State<Kitchens> {

  List<dynamic> kitchens = [];
  FoodApiServices foodApiServices = FoodApiServices();
  void getKitchens() async{
    final loadingProvider = Provider.of<LoadingProvider>(context, listen: false);
    loadingProvider.isLoading = true;
    kitchens = await foodApiServices.getKitchens(context);
    setState(() {});
    loadingProvider.isLoading = false;

  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getKitchens();
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: kitchens?.length,primary: false, shrinkWrap: true, itemBuilder: (BuildContext context, index){
      return Column(
        children: [
          KitchenCard(fontSize: widget.fontSize, kitchenName: kitchens[index].kitchenName, displayPhoto: kitchens[index].displayPhoto, homeChefFirstName: kitchens[index].homeChef.firstName, homeChefLastName: kitchens[index].homeChef.lastName, description: kitchens[index].description, costForOne: kitchens[index].costForOne),
          SizedBox(height: 16),
        ],
      );
      return Text('ARAT');
    });
  }
}
