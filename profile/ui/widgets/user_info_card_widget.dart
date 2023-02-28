import 'dart:typed_data';

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:neosx/common/ui/widgets/neosx_profile_image.dart';
import 'package:neosx/common/ui/widgets/shimmer/shimmers.dart';
import 'package:neosx/constants/app_colors.dart';
import 'package:neosx/constants/app_styles.dart';
import 'package:neosx/injections.dart';
import 'package:neosx/profile/business_objects/user.dart';
import 'package:neosx/profile/cubits/profile/profile_card_cubit.dart';
import 'package:neosx/profile/cubits/profile/profile_card_state.dart';

class UserInfoCardWidget extends StatelessWidget {
  const UserInfoCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCardCubit, ProfileCardState>(
      builder: (BuildContext ctx, ProfileCardState state) => AnimatedSwitcher(
        duration: const Duration(milliseconds: 350),
        child: state.when(
          loading: () => const _ProfileCardProgressWidget(),
          failed: (String message) => _ProfileCardFailureWidget(
            message: message,
            onRetryPressed: ctx.read<ProfileCardCubit>().retry,
          ),
          fetched: (User user) => _ProfileCardFetchedWidget(user: user),
        ),
      ),
    );
  }
}

class _ProfileCardProgressWidget extends StatelessWidget {
  const _ProfileCardProgressWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeosXShimmer(
      child: ShimmerRect(
        width: 335.w,
        height: 422.h,
      ),
    );
  }
}

class _ProfileCardFailureWidget extends StatelessWidget {
  const _ProfileCardFailureWidget({
    required this.message,
    this.onRetryPressed,
    Key? key,
  }) : super(key: key);

  final String message;
  final VoidCallback? onRetryPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(message),
          ElevatedButton(
            onPressed: onRetryPressed,
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}

class _ProfileCardFetchedWidget extends StatelessWidget {
  const _ProfileCardFetchedWidget({
    required this.user,
    Key? key,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4.r,
      shape: _UserInfoCardShape(perforationOffset: 64.h + 40.h),
      color: Colors.white,
      child: Container(
        width: 335.w,
        height: 422.h,
        padding: EdgeInsets.all(20.w),
        child: Column(
          children: <Widget>[
            // header
            Row(
              children: <Widget>[
                NeosXProfileImage(radius: 32.r, userName: user.name.localizedName),
                SizedBox(width: 15.w),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        user.name.localizedName,
                        overflow: TextOverflow.ellipsis,
                        style: NeosXTypographyEn.subtitle1.copyWith(
                          color: Colors.black,
                          height: 1.2,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Material(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(4.r),
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 8.w,
                            right: 8.w,
                            bottom: 3.h,
                          ),
                          child: Text(
                            user.accountType,
                            textAlign: TextAlign.center,
                            style: NeosXTypographyEn.caption.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            // divider
            DottedLine(
              dashColor: NeosXColors.primaryColor200,
              dashLength: 4.w,
              lineThickness: 1.h,
            ),
            SizedBox(height: 20.h),
            Expanded(
              child: Image.memory(
                Uint8List.fromList(user.qrImageData),
                width: 200.w,
                height: 200.w,
                errorBuilder: (_, __, ___) => _ImageErrorPlaceholder(),
              ),
            ),
            Text(
              tr.accessBadge,
              style: NeosXTypographyEn.body1,
            ),
          ],
        ),
      ),
    );
  }
}

class _ImageErrorPlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 2,
      child: Container(
        color: NeosXColors.primaryColor050,
        child: ConstrainedBox(
          constraints: const BoxConstraints(minWidth: 100, minHeight: 100),
          child: const Icon(
            Icons.image_not_supported,
            color: NeosXColors.onSurfaceMedium,
          ),
        ),
      ),
    );
  }
}

/// shape for QR-code card
class _UserInfoCardShape extends ShapeBorder {
  final double outerCornerRadius;
  final double perforationRadius;

  final double perforationOffset;

  _UserInfoCardShape({
    required this.perforationOffset,
    double? outerCornerRadius,
    double? perforationRadius,
  })  : outerCornerRadius = outerCornerRadius ?? 5.r,
        perforationRadius = perforationRadius ?? 12.r;

  @override
  EdgeInsetsGeometry get dimensions {
    return EdgeInsets.zero;
  }

  @override
  ShapeBorder scale(double t) => this;

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return Path();
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    return Path()
      ..moveTo(
        rect.topLeft.dx,
        rect.topLeft.dy + outerCornerRadius,
      )
      ..arcToPoint(
        Offset(
          rect.topLeft.dx + outerCornerRadius,
          rect.topLeft.dy,
        ),
        radius: Radius.circular(outerCornerRadius),
      )
      ..lineTo(
        rect.topRight.dx - outerCornerRadius,
        rect.topRight.dy,
      )
      ..arcToPoint(
        Offset(
          rect.topRight.dx,
          rect.topLeft.dy + outerCornerRadius,
        ),
        radius: Radius.circular(outerCornerRadius),
      )
      ..lineTo(
        rect.topRight.dx,
        rect.topRight.dy + perforationOffset - perforationRadius,
      )
      ..arcToPoint(
        Offset(
          rect.topRight.dx,
          rect.topRight.dy + perforationOffset + perforationRadius,
        ),
        radius: Radius.circular(perforationRadius),
        clockwise: false,
      )
      ..lineTo(
        rect.bottomRight.dx,
        rect.bottomRight.dy - outerCornerRadius,
      )
      ..arcToPoint(
        Offset(
          rect.bottomRight.dx - outerCornerRadius,
          rect.bottomRight.dy,
        ),
        radius: Radius.circular(outerCornerRadius),
      )
      ..lineTo(
        rect.bottomLeft.dx + outerCornerRadius,
        rect.bottomLeft.dy,
      )
      ..arcToPoint(
        Offset(
          rect.bottomLeft.dx,
          rect.bottomLeft.dy - outerCornerRadius,
        ),
        radius: Radius.circular(outerCornerRadius),
      )
      ..lineTo(
        rect.topLeft.dx,
        rect.topLeft.dy + perforationOffset + perforationRadius,
      )
      ..arcToPoint(
        Offset(
          rect.topLeft.dx,
          rect.topLeft.dy + perforationOffset - perforationRadius,
        ),
        radius: Radius.circular(perforationRadius),
        clockwise: false,
      );
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}
}
