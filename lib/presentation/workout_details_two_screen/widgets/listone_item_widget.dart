import '../controller/workout_details_two_controller.dart';
import '../models/listone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jvgod1/core/app_export.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore: must_be_immutable
class ListoneItemWidget extends StatelessWidget {
  ListoneItemWidget(this.listoneItemModelObj);

  ListoneItemModel listoneItemModelObj;

  var controller = Get.find<WorkoutDetailsTwoController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Obx(
                  () => Text(
                    listoneItemModelObj.oneTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular14DeeppurpleA100,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 14,
                  ),
                  child: OutlineGradientButton(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        1,
                      ),
                      top: getVerticalSize(
                        1,
                      ),
                      right: getHorizontalSize(
                        1,
                      ),
                      bottom: getVerticalSize(
                        1,
                      ),
                    ),
                    strokeWidth: getHorizontalSize(
                      1,
                    ),
                    gradient: LinearGradient(
                      begin: Alignment(
                        1,
                        1,
                      ),
                      end: Alignment(
                        -0.24,
                        -0.31,
                      ),
                      colors: [
                        ColorConstant.deepPurpleA100,
                        ColorConstant.pink100,
                      ],
                    ),
                    corners: Corners(
                      topLeft: Radius.circular(
                        10,
                      ),
                      topRight: Radius.circular(
                        10,
                      ),
                      bottomLeft: Radius.circular(
                        10,
                      ),
                      bottomRight: Radius.circular(
                        10,
                      ),
                    ),
                    child: Container(
                      padding: getPadding(
                        all: 5,
                      ),
                      decoration: AppDecoration.outline.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: getSize(
                              10,
                            ),
                            width: getSize(
                              10,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  5,
                                ),
                              ),
                              gradient: LinearGradient(
                                begin: Alignment(
                                  1,
                                  1,
                                ),
                                end: Alignment(
                                  -0.24,
                                  -0.31,
                                ),
                                colors: [
                                  ColorConstant.deepPurpleA100,
                                  ColorConstant.pink100,
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: getPadding(
                right: 9,
              ),
              child: SizedBox(
                height: getVerticalSize(
                  83,
                ),
                child: VerticalDivider(
                  width: getHorizontalSize(
                    1,
                  ),
                  thickness: getVerticalSize(
                    1,
                  ),
                  indent: getHorizontalSize(
                    4,
                  ),
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: getPadding(
              left: 15,
              top: 1,
              bottom: 22,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    listoneItemModelObj.spreadyourarmsTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsRegular14Gray900,
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    239,
                  ),
                  margin: getMargin(
                    top: 4,
                  ),
                  child: Obx(
                    () => Text(
                      listoneItemModelObj.tomakethegesturOneTxt.value,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
