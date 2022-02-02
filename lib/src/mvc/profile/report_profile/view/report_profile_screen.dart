import 'package:alpha_hill_demo/src/mvc/profile/report_profile/controller/report_profile_controller.dart';
import 'package:alpha_hill_demo/src/mvc/profile/report_profile/model/reason_data_model.dart';
import 'package:alpha_hill_demo/src/widgets/widgets.dart';
import 'package:alpha_hill_demo/utilities/utilities.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReportProfileScreen extends StatelessWidget {
  ReportProfileScreen({Key? key}) : super(key: key);

  final ReportProfileController _reportProfileController =
      Get.find(tag: ReportProfileController().toString());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: VariableUtilities.theme.darkBlueGreyTwo,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MobileRatio.getWidth(context, 20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MobileRatio.getHeight(context, 40),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: VariableUtilities.theme.whiteColor,
                  ),
                ],
              ),
              SizedBox(
                height: MobileRatio.getHeight(context, 30),
              ),
              Text(
                'Report Profile',
                style: FontUtilities.h22(
                  fontColor: VariableUtilities.theme.primaryTextColor,
                  fontWeight: FWT.bold,
                ),
              ),
              SizedBox(
                height: MobileRatio.getHeight(context, 15),
              ),
              Text(
                "Trouble in paradise? We have you covered. Provide us with a brief description of the issue and we'll resolve it shortly.",
                style: FontUtilities.h14(
                  fontColor: VariableUtilities.theme.secondaryTextColor,
                  fontWeight: FWT.regular,
                ),
              ),
              SizedBox(
                height: MobileRatio.getHeight(context, 35),
              ),
              GetBuilder<ReportProfileController>(
                init: _reportProfileController,
                builder: (_) => Wrap(
                  direction: Axis.horizontal,
                  runSpacing: 10,
                  spacing: 10,
                  children: _reportProfileController.reasonsList
                      .map(
                        (ReasonDataModel reasonDataModel) => CustomChip(
                          title: reasonDataModel.reason,
                          isSelected: reasonDataModel.isSelected,
                          onSelectChip: (bool isSelected) {
                            _reportProfileController.updateReasonSelectedState(
                                reasonUniqueId: reasonDataModel.uniqueId,
                                value: isSelected);
                          },
                        ),
                      )
                      .toList(),
                ),
              ),
              SizedBox(
                height: MobileRatio.getHeight(context, 18),
              ),
              TextFormField(
                controller:
                    _reportProfileController.additionalNotesTextController,
                style: FontUtilities.h18(
                  fontColor: VariableUtilities.theme.primaryTextColor,
                ),
                decoration: InputDecoration(
                  hintText: "Additional Details",
                  hintStyle: FontUtilities.h14(
                    fontColor: VariableUtilities.theme.secondaryTextColor,
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: VariableUtilities.theme.steel,
                      width: 1,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: VariableUtilities.theme.steel,
                      width: 1,
                    ),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: VariableUtilities.theme.steel,
                      width: 1,
                    ),
                  ),
                ),
                maxLines: 3,
              ),
              SizedBox(
                height: MobileRatio.getHeight(context, 10),
              ),
              Text(
                'Provide any additional details (optional)',
                style: FontUtilities.h14(
                    fontColor: VariableUtilities.theme.coolGrey),
              ),
              SizedBox(
                height: MobileRatio.getHeight(context, 100),
              ),
              CustomButton(
                title: 'Send report',
                onTap: _reportProfileController.sendReport,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
