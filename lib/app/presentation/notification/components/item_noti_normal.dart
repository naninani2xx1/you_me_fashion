import 'package:flutter_fashion/app/blocs/notification/notification_cubit.dart';
import 'package:flutter_fashion/app/models/notification/notification_model.dart';
import 'package:flutter_fashion/utils/extensions/datetime.dart';
import 'package:flutter_fashion/utils/extensions/list.dart';

import '../../../../export.dart';

class ItemNotiNormal extends StatelessWidget {
  const ItemNotiNormal(
      {super.key, required this.notification, required this.isRead});

  final NotificationModel notification;
  final bool isRead;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () => context.read<NotificationCubit>().read(notification.id),
          child: Container(
            padding: const EdgeInsets.symmetric(
                horizontal: horizontalPadding - 4,
                vertical: verticalPadding - 6),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                (isRead)
                    ? const SizedBox()
                    : Container(
                        width: 8.0,
                        height: 8.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: secondaryColor,
                        ),
                      ),
                (isRead)
                    ? const SizedBox()
                    : const SizedBox(
                        width: 15.0,
                      ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        notification.title,
                        style: PrimaryFont.instance.copyWith(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          height: 1.0,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/loudspeaker.png",
                            width: 18.0,
                            height: 18.0,
                          ),
                          const SizedBox(width: 8.0),
                          Expanded(
                            child: Text(
                              notification.subtitle,
                              style: PrimaryFont.instance.copyWith(
                                fontSize: 11.0,
                                color: darkColor.withOpacity(0.6),
                                fontWeight: FontWeight.w300,
                              ),
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/calendar.svg",
                            width: 18.0,
                            height: 18.0,
                            colorFilter: const ColorFilter.mode(
                                secondaryColor, BlendMode.srcIn),
                          ),
                          const SizedBox(width: 8.0),
                          Text(
                            notification.created_at.formatDateTime(),
                            style: PrimaryFont.instance.copyWith(
                              fontSize: 12.0,
                              color: darkColor.withOpacity(0.6),
                              fontWeight: FontWeight.w300,
                            ),
                            softWrap: true,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Divider(color: skeletonColor),
      ],
    );
  }
}
