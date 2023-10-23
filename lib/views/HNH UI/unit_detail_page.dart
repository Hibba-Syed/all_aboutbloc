import 'package:flutter/material.dart';
import 'package:practice/utils/function.dart';

import '../../widget/custom_app_bar.dart';
import '../../widget/custom_text.dart';

class TenantUnitDetail extends StatelessWidget {
  const TenantUnitDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:  Colors.grey.shade700,
      appBar: BaseAppBar(
        title: "",
        appBar: AppBar(),
        widgets: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Image.asset(
              "assets/bell.png",
              height: 30,
              width: 20,
              color:Colors.grey.shade50,
            ),
          ),
        ],
        appBarHeight: 30,
        automaticallyImplyLeading: true,
        leading: InkWell(
          overlayColor:  const MaterialStatePropertyAll(Colors.grey,),
          onTap: () {
            Navigator.pop(context);
          },
          child:  Icon(Icons.arrow_back,color:Colors.grey.shade500 ,),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width * 0.05),
        child:  Column(
          children: [
            10.sHeight,
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: CustomText(
                  text: "Unit Details",
                  fontWeight: FontWeight.w600,
                  fontsize: 16,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
            10.sHeight,
            Container(
              margin:const EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child:  Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network("https://images.unsplash.com/photo-1501183638710-841dd1904471?auto=format&fit=crop&q=80&w=2070&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 200,
                      errorBuilder: (context, error, stackTrace) =>
                          Image.asset(
                            "assets/bg.png",
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 200,
                          ),
                    ),
                  ),
                  10.sHeight,
                  GridView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(0),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15,
                    ),
                    itemCount: 6,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(1, 1),
                                color: Colors.grey.shade300,
                                spreadRadius: 2,
                                blurRadius: 2,
                              )
                            ],
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Builder(
                                builder: (context) {
                                    return  Image.network("https://images.unsplash.com/photo-1501183638710-841dd1904471?auto=format&fit=crop&q=80&w=2070&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                      height: 200,
                                      errorBuilder: (context, error, stackTrace) =>
                                          Image.asset(
                                            "assets/bg.png",
                                            fit: BoxFit.cover,
                                            width: double.infinity,
                                         //   height: 200,
                                          ),
                                    );
                                  }
                              )));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}