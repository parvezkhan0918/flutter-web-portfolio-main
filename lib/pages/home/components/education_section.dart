import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_portfolio/models/education.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/screen_helper.dart';

final List<Education> educationList = [
  Education(
    description:
        "Android App Development – We Create What You Imagine - We understand that each and every business has its own needs and distinguished service pattern and target audience. That is why, we incorporate a completely tailored plan that is based on the ideology to draft your imagination and business objective into a reflective, receptive and catchy Android app development. We pledge and are fully committed to develop the product that you are looking for, that is unique, symbolizes your brand and connect with your audience in a meaningful way.",
    linkName: "www.app-techsolutions.com",
    period: "2022 - PRESENT",
  ),
  Education(
    description:
        "BEST IPHONE & IPAD APP DEVELOPMENT SERVICES - The app war that we see today can be rendered to be laid down by the inception of Apple devices, the makers of iconic iPhones. Since then smartphone segment has evolved exponentially and so do the applications catering to these platforms. We, at App Tech Solutions Pvt. Ltd. are a top iOS app development company in India, and experts in rendering impeccable power and functionality to a diverse range of iOS applications, targeted towards the segmented Apple device owners.",
    linkName: "www.app-techsolutions.com",
    period: "2022 - PRESENT",
  ),
  Education(
    description:
        "Budget Web Designing Services - If you are looking for low cost website design services then you are at right place. We provide quality services in an affordable price range. We understand budget issues and hence develop websites not just need based but budget based as well. We assure you that a Low Budget does not mean a compromise on Quality or Service. We believe that Quality in a service or product is not what you put into it. It is what the client or customer gets out of it.",
    linkName: "www.app-techsolutions.com",
    period: "2022 - PRESENT",
  ),
  Education(
    description:
        "SEO Services in India - As a business owner, you want to thrive. You want your products to reach out to new prospects every day and want your services to be known in a wider group. To acquire these outcomes, there is no other tool as powerful as digital marketing at this time and you know it well. SEO or search engine optimization is one predominant aspect of digital marketing.",
    linkName: "www.app-techsolutions.com",
    period: "2022 - PRESENT",
  ),
];

class EducationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
        desktop: _buildUi(kDesktopMaxWidth),
        tablet: _buildUi(kTabletMaxWidth),
        mobile: _buildUi(getMobileMaxWidth(context)),
      ),
    );
  }

  Widget _buildUi(double width) {
    return Container(
      alignment: Alignment.center,
      child: ResponsiveWrapper(
        maxWidth: width,
        minWidth: width,
        defaultScale: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "EDUCATION",
              style: GoogleFonts.oswald(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 30.0,
                height: 1.3,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Wrap(
              children: [
                Container(
                  constraints: BoxConstraints(maxWidth: 400.0),
                  child: Text(
                    "A full stack all round developer that does all the job he needs to do at all times. Actually this is a false statement",
                    style: TextStyle(
                      color: Colors.white,
                      height: 1.5,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  child: Wrap(
                    spacing: 20.0,
                    runSpacing: 20.0,
                    children: educationList
                        .map(
                          (education) => Container(
                            width: constraints.maxWidth / 2.0 - 20.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  education.period,
                                  style: GoogleFonts.oswald(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  education.description,
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: kCaptionColor,
                                    height: 1.5,
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Text(
                                      education.linkName,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 40.0,
                                )
                              ],
                            ),
                          ),
                        )
                        .toList(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
