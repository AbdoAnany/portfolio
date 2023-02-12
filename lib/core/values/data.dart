part of 'values.dart';

class CertificationData {
  CertificationData({
    required this.title,
    required this.image,
    required this.imageSize,
    required this.url,
    required this.awardedBy,
  });

  final String image;
  final double imageSize;
  final String url;
  final String title;
  final String awardedBy;
}

class NoteWorthyProjectDetails {
  NoteWorthyProjectDetails({
    required this.projectName,
    required this.isOnPlayStore,
    required this.isPublic,
    required this.technologyUsed,
    required this.isWeb,
    required this.isLive,
    this.projectDescription,
    this.playStoreUrl,
    this.webUrl,
    this.hasBeenReleased,
    this.gitHubUrl,
  });

  final String projectName;
  final bool isPublic;
  final bool isOnPlayStore;
  final bool isWeb;
  final String? projectDescription;
  final bool isLive;
  final bool? hasBeenReleased;
  final String? playStoreUrl;
  final String? gitHubUrl;
  final String? webUrl;
  final String? technologyUsed;
}

class ExperienceData {
  ExperienceData({
    required this.position,
    required this.roles,
    required this.location,
    required this.duration,
    required this.company,
    this.companyUrl,
  });

  final String company;
  final String? companyUrl;
  final String location;
  final String duration;
  final String position;
  final List<String> roles;
}

class SkillData {
  SkillData({
    required this.skillName,
    required this.skillLevel,
  });

  final String skillName;
  final double skillLevel;
}

class SubMenuData {
  SubMenuData({
    required this.title,
    this.isSelected,
    this.content,
    this.skillData,
    this.isAnimation = false,
  });

  final String title;
  final String? content;
  final List<SkillData>? skillData;
  bool isAnimation;
  bool? isSelected;
}

class Data {
  static List<NavItemData> menuItems = [
    NavItemData(name: AppString.HOME, route: AppString.HOME_PAGE),
    NavItemData(name: AppString.ABOUT, route: AppString.ABOUT_PAGE),
    NavItemData(name: AppString.WORKS, route: AppString.WORKS_PAGE),
    NavItemData(
      name: AppString.EXPERIENCE,
      route: AppString.EXPERIENCE_PAGE,
    ),
    NavItemData(
      name: AppString.CERTIFICATIONS,
      route: AppString.CERTIFICATION_PAGE,
    ),
    NavItemData(name: AppString.CONTACT, route: AppString.CONTACT_PAGE),
  ];

  static List<SocialData> socialData = [
    SocialData(
      name: AppString.GITHUB,
      iconData: FontAwesomeIcons.github,
      url: AppString.GITHUB_URL,
    ),
    SocialData(
      name: AppString.LINKED_IN,
      iconData: FontAwesomeIcons.linkedin,
      url: AppString.LINKED_IN_URL,
    ),
    SocialData(
      name: AppString.TWITTER,
      iconData: FontAwesomeIcons.twitter,
      url: AppString.TWITTER_URL,
    ),
    // SocialData(
    //   name: AppString.INSTAGRAM,
    //   iconData: FontAwesomeIcons.instagram,
    //   url: AppString.INSTAGRAM_URL,
    // ),
    // SocialData(
    //   name: AppString.TELEGRAM,
    //   iconData: FontAwesomeIcons.telegram,
    //   url: AppString.TELEGRAM_URL,
    // ),
  ];

  static List<String> mobileTechnologies = [
    "Android",
    "Kotlin",
    "Jetpack Compose",
    "Flutter",
    "Dart"
        "Java Android",
  ];

  static List<String> otherTechnologies = [
    "HTML 5",
    "CSS 3",
    "JavaScript",
    "Typescript",
    "React JS",
    "Next JS",
    "Node JS",
    "Git",
    "AWS",
    "Docker",
    "Kubernetes",
    "Google Cloud",
    "Azure",
    "Travis CI",
    "Circle CI",
    "Express",
    "Chakra UI",
    "Laravel",
    "PHP",
    "SQL",
    "C++",
    "Firebase",
    "Figma",
    "Adobe XD",
    "Wordpress",
  ];
  static List<SocialData> socialData1 = [
    SocialData(
      name: AppString.GITHUB,
      iconData: FontAwesomeIcons.github,
      url: AppString.GITHUB_URL,
    ),
    SocialData(
      name: AppString.LINKED_IN,
      iconData: FontAwesomeIcons.linkedin,
      url: AppString.LINKED_IN_URL,
    ),
    SocialData(
      name: AppString.TWITTER,
      iconData: FontAwesomeIcons.twitter,
      url: AppString.TWITTER_URL,
    ),
  ];

  static List<SocialData> socialData2 = [
    SocialData(
      name: AppString.LINKED_IN,
      iconData: FontAwesomeIcons.linkedin,
      url: AppString.LINKED_IN_URL,
    ),
    SocialData(
      name: AppString.TWITTER,
      iconData: FontAwesomeIcons.twitter,
      url: AppString.TWITTER_URL,
    ),
    // SocialData(
    //   name: AppString.INSTAGRAM,
    //   iconData: FontAwesomeIcons.instagram,
    //   url: AppString.INSTAGRAM_URL,
    // ),
    // SocialData(
    //   name: AppString.TELEGRAM,
    //   iconData: FontAwesomeIcons.telegram,
    //   url: AppString.TELEGRAM_URL,
    // ),
  ];

  static List<ProjectItemData> recentWorks = [
    Projects.DISNEY_PLUS,
    Projects.FLUTTER_CATALOG,
    Projects.DROP,
    Projects.ROAM,
    Projects.LOGIN_CATALOG,
    Projects.FOODY_BITE,
    Projects.NIMBUS,
  ];

  static List<ProjectItemData> projects = [
    Projects.DISNEY_PLUS,
    Projects.FLUTTER_CATALOG,
    Projects.DROP,
    Projects.ROAM,
    Projects.LOGIN_CATALOG,
    Projects.FOODY_BITE,
    Projects.NIMBUS,
    Projects.OTP_TEXT_FIELD,
    Projects.AERIUM,
    Projects.AERIUM_V2,
    Projects.OUTFITR,
  ];

  static List<NoteWorthyProjectDetails> noteworthyProjects = [
    NoteWorthyProjectDetails(
      projectName: AppString.UDAGRAM_IMAGE_FILTERING,
      isPublic: true,
      isOnPlayStore: false,
      isWeb: false,
      technologyUsed: AppString.UDAGRAM_IMAGE_FILTERING_TECH,
      projectDescription: AppString.UDAGRAM_IMAGE_FILTERING_DETAIL,
      gitHubUrl: AppString.UDAGRAM_IMAGE_FILTERING_GITHUB_URL,
      isLive: false,
    ),
    NoteWorthyProjectDetails(
      projectName: AppString.SERVERLESS_TODO,
      isPublic: true,
      isOnPlayStore: false,
      isWeb: false,
      technologyUsed: AppString.SERVERLESS_TODO_TECH,
      projectDescription: AppString.SERVERLESS_TODO_DETAIL,
      gitHubUrl: AppString.SERVERLESS_TODO_GITHUB_URL,
      isLive: false,
    ),
    NoteWorthyProjectDetails(
      projectName: AppString.PYTHON_ALGORITHMS,
      isPublic: true,
      isOnPlayStore: false,
      isWeb: false,
      technologyUsed: AppString.PYTHON,
      projectDescription: AppString.PYTHON_ALGORITHMS_DETAIL,
      gitHubUrl: AppString.PYTHON_ALGORITHMS_GITHUB_URL,
      isLive: false,
    ),
    NoteWorthyProjectDetails(
      projectName: AppString.PROGRAMMING_FOR_DATA_SCIENCE,
      isPublic: true,
      isOnPlayStore: false,
      isWeb: false,
      technologyUsed: AppString.PYTHON,
      projectDescription: AppString.PROGRAMMING_FOR_DATA_SCIENCE_DETAIL,
      gitHubUrl: AppString.PROGRAMMING_FOR_DATA_SCIENCE_GITHUB_URL,
      isLive: false,
    ),
    NoteWorthyProjectDetails(
      projectName: AppString.ONBOARDING_APP,
      isPublic: true,
      isOnPlayStore: false,
      isWeb: false,
      technologyUsed: AppString.FLUTTER,
      projectDescription: AppString.ONBOARDING_APP_DETAIL,
      gitHubUrl: AppString.ONBOARDING_APP_GITHUB_URL,
      isLive: false,
    ),
    NoteWorthyProjectDetails(
      projectName: AppString.FINOPP,
      isPublic: true,
      isOnPlayStore: false,
      isWeb: false,
      technologyUsed: AppString.FLUTTER,
      projectDescription: AppString.FINOPP_DETAIL,
      gitHubUrl: AppString.FINOPP_GITHUB_URL,
      isLive: false,
    ),
    NoteWorthyProjectDetails(
      projectName: AppString.AMOR_APP,
      isPublic: true,
      isOnPlayStore: false,
      isWeb: true,
      technologyUsed: AppString.FLUTTER,
      projectDescription: AppString.AMOR_APP_DETAIL,
      gitHubUrl: AppString.AMOR_APP_GITHUB_URL,
      webUrl: AppString.AMOR_APP_WEB_URL,
      isLive: true,
    ),
  ];

  static List<CertificationData> certificationData = [
    CertificationData(
      title: AppString.MSC_IT,
      url: AppString.CMU_CERT_URL,
      image: ImagePath.CMU_MASTERS_CERT,
      imageSize: 0.325,
      awardedBy: AppString.CMU,
    ),
    CertificationData(
      title: AppString.ASSOCIATE_ANDROID_DEV,
      url: AppString.ASSOCIATE_ANDROID_DEV_URL,
      image: ImagePath.ASSOCIATE_ANDROID_DEV,
      imageSize: 0.325,
      awardedBy: AppString.GOOGLE,
    ),
    CertificationData(
      title: AppString.CLOUD_DEVELOPER,
      url: AppString.CLOUD_DEVELOPER_URL,
      image: ImagePath.CLOUD_DEVELOPER_CERT,
      imageSize: 0.325,
      awardedBy: AppString.UDACITY,
    ),
    CertificationData(
      title: AppString.DATA_SCIENCE,
      url: AppString.DATA_SCIENCE_CERT_URL,
      image: ImagePath.DATA_SCIENCE_CERT,
      imageSize: 0.325,
      awardedBy: AppString.UDACITY,
    ),
    CertificationData(
      title: AppString.ANDROID_BASICS,
      url: AppString.ANDROID_BASICS_CERT_URL,
      image: ImagePath.ANDROID_BASICS_CERT,
      imageSize: 0.325,
      awardedBy: AppString.UDACITY,
    ),
  ];

  static List<ExperienceData> experienceData = [
    ExperienceData(
      company: AppString.COMPANY_5,
      position: AppString.POSITION_5,
      companyUrl: AppString.COMPANY_5_URL,
      roles: [
        AppString.COMPANY_5_ROLE_1,
        AppString.COMPANY_5_ROLE_2,
        AppString.COMPANY_5_ROLE_3,
      ],
      location: AppString.LOCATION_5,
      duration: AppString.DURATION_5,
    ),
    ExperienceData(
      company: AppString.COMPANY_4,
      position: AppString.POSITION_4,
      companyUrl: AppString.COMPANY_4_URL,
      roles: [
        AppString.COMPANY_4_ROLE_1,
        AppString.COMPANY_4_ROLE_2,
        AppString.COMPANY_4_ROLE_3,
      ],
      location: AppString.LOCATION_4,
      duration: AppString.DURATION_4,
    ),
    ExperienceData(
      company: AppString.COMPANY_3,
      position: AppString.POSITION_3,
      companyUrl: AppString.COMPANY_3_URL,
      roles: [
        AppString.COMPANY_3_ROLE_1,
        AppString.COMPANY_3_ROLE_2,
        AppString.COMPANY_3_ROLE_3,
      ],
      location: AppString.LOCATION_3,
      duration: AppString.DURATION_3,
    ),
    ExperienceData(
      company: AppString.COMPANY_2,
      position: AppString.POSITION_2,
      companyUrl: AppString.COMPANY_2_URL,
      roles: [
        AppString.COMPANY_2_ROLE_1,
        AppString.COMPANY_2_ROLE_2,
        AppString.COMPANY_2_ROLE_3,
      ],
      location: AppString.LOCATION_2,
      duration: AppString.DURATION_2,
    ),
  ];
}

class Projects {
  static ProjectItemData DISNEY_PLUS = ProjectItemData(
    title: AppString.DISNEY_PLUS,
    subtitle: AppString.DISNEY_PLUS,
    platform: AppString.DISNEY_PLUS_PLATFORM,
    primaryColor: AppColors.disneyPlus,
    image: ImagePath.DISNEY_PLUS_COVER,
    coverUrl: ImagePath.DISNEY_PLUS_SCREENS,
    navSelectedTitleColor: AppColors.flutterCatalogSelectedNavTitle,
    appLogoColor: AppColors.flutterCatalogAppLogo,
    projectAssets: [
      ImagePath.DISNEY_PLUS_1,
      ImagePath.DISNEY_PLUS_2,
      ImagePath.DISNEY_PLUS_3,
      ImagePath.DISNEY_PLUS_4,
      ImagePath.DISNEY_PLUS_5,
      ImagePath.DISNEY_PLUS_6,
      ImagePath.DISNEY_PLUS_7,
      ImagePath.DISNEY_PLUS_8,
      ImagePath.DISNEY_PLUS_9,
      ImagePath.DISNEY_PLUS_10,
      ImagePath.DISNEY_PLUS_11,
      ImagePath.DISNEY_PLUS_12,
      ImagePath.DISNEY_PLUS_13,
    ],
    category: AppString.DISNEY_PLUS_CATEGORY,
    portfolioDescription: AppString.DISNEY_PLUS_DETAIL,
    isPublic: true,
    isOnPlayStore: false,
    technologyUsed: AppString.JETPACK_COMPOSE,
    gitHubUrl: AppString.DISNEY_PLUS_GITHUB_URL,
    playStoreUrl: AppString.DISNEY_PLUS_PLAYSTORE_URL,
  );
  static ProjectItemData FLUTTER_CATALOG = ProjectItemData(
    title: AppString.FLUTTER_CATALOG,
    subtitle: AppString.FLUTTER_CATALOG,
    platform: AppString.FLUTTER_CATALOG_PLATFORM,
    primaryColor: AppColors.flutter_catalog,
    image: ImagePath.FLUTTER_CATALOG_COVER,
    coverUrl: ImagePath.FLUTTER_CATALOG_COVER,
    navSelectedTitleColor: AppColors.flutterCatalogSelectedNavTitle,
    appLogoColor: AppColors.flutterCatalogAppLogo,
    projectAssets: [
      ImagePath.FLUTTER_CATALOG_SCREENS,
      ImagePath.FLUTTER_CATALOG_1,
      ImagePath.FLUTTER_CATALOG_2,
      ImagePath.FLUTTER_CATALOG_3,
      ImagePath.FLUTTER_CATALOG_4,
      ImagePath.FLUTTER_CATALOG_5,
    ],
    category: AppString.FLUTTER_CATALOG_CATEGORY,
    portfolioDescription: AppString.FLUTTER_CATALOG_DETAIL,
    isPublic: true,
    isOnPlayStore: true,
    technologyUsed: AppString.FLUTTER,
    gitHubUrl: AppString.FLUTTER_CATALOG_GITHUB_URL,
    playStoreUrl: AppString.FLUTTER_CATALOG_PLAYSTORE_URL,
  );
  static ProjectItemData DROP = ProjectItemData(
    title: AppString.DROP,
    subtitle: AppString.DROP,
    platform: AppString.DROP_PLATFORM,
    primaryColor: AppColors.drop,
    image: ImagePath.DROP_COVER,
    category: AppString.DROP_CATEGORY,
    designer: AppString.DROP_DESIGNER,
    coverUrl: ImagePath.DROP_COVER,
    navTitleColor: AppColors.dropNavTitle,
    navSelectedTitleColor: AppColors.dropSelectedNavTitle,
    appLogoColor: AppColors.dropAppLogo,
    projectAssets: [
      ImagePath.DROP_DESC,
      ImagePath.DROP_FLOW_CHART,
      ImagePath.DROP_WIREFRAMES,
      ImagePath.DROP_MINIMAL_DESIGN,
      ImagePath.DROP_EASY_ACCESS,
      ImagePath.DROP_SIMPLE,
      ImagePath.DROP_THANKS,
    ],
    portfolioDescription: AppString.DROP_DETAIL,
    isPublic: true,
    isOnPlayStore: true,
    technologyUsed: AppString.FLUTTER,
    gitHubUrl: AppString.DROP_GITHUB_URL,
    playStoreUrl: AppString.DROP_PLAYSTORE_URL,
  );
  static ProjectItemData ROAM = ProjectItemData(
    title: AppString.ROAM,
    subtitle: AppString.ROAM,
    primaryColor: AppColors.roam,
    category: AppString.ROAM_CATEGORY,
    designer: AppString.ROAM_DESIGNER,
    platform: AppString.ROAM_PLATFORM,
    image: ImagePath.ROAM_COVER,
    coverUrl: ImagePath.ROAM_COVER,
    navTitleColor: AppColors.roamNavTitle,
    navSelectedTitleColor: AppColors.roamSelectedNavTitle,
    appLogoColor: AppColors.roamAppLogo,
    projectAssets: [
      ImagePath.ROAM_OVERALL,
      ImagePath.ROAM_ONBOARDING,
      ImagePath.ROAM_HOME,
      ImagePath.ROAM_EXPLORE,
      ImagePath.ROAM_PROFILE,
      ImagePath.ROAM_FLOW_CHART,
      ImagePath.ROAM_WIREFRAMES_1,
      ImagePath.ROAM_WIREFRAMES_2,
      ImagePath.ROAM_WIREFRAMES_3,
    ],
    portfolioDescription: AppString.ROAM_DETAIL,
    isPublic: true,
    isOnPlayStore: true,
    technologyUsed: AppString.FLUTTER,
    gitHubUrl: AppString.ROAM_GITHUB_URL,
    playStoreUrl: AppString.ROAM_PLAYSTORE_URL,
  );
  static ProjectItemData LOGIN_CATALOG = ProjectItemData(
    title: AppString.LOGIN_CATALOG,
    primaryColor: AppColors.login_catalog,
    subtitle: AppString.LOGIN_CATALOG,
    category: AppString.LOGIN_CATALOG_CATEGORY,
    platform: AppString.LOGIN_CATALOG_PLATFORM,
    image: ImagePath.LOGIN_CATALOG_COVER,
    coverUrl: ImagePath.LOGIN_CATALOG_COVER,
    portfolioDescription: AppString.LOGIN_CATALOG_DETAIL,
    navTitleColor: AppColors.loginCatalogNavTitle,
    navSelectedTitleColor: AppColors.loginCatalogSelectedNavTitle,
    appLogoColor: AppColors.loginCatalogAppLogo,
    projectAssets: [
      ImagePath.LOGIN_DESIGN_4,
      ImagePath.LOGIN_DESIGN_5,
      ImagePath.LOGIN_DESIGN_7,
      ImagePath.LOGIN_DESIGN_8,
      ImagePath.LOGIN_DESIGN_9,
    ],
    isPublic: true,
    isOnPlayStore: true,
    technologyUsed: AppString.FLUTTER,
    gitHubUrl: AppString.LOGIN_CATALOG_GITHUB_URL,
    playStoreUrl: AppString.LOGIN_CATALOG_PLAYSTORE_URL,
  );
  static ProjectItemData FOODY_BITE = ProjectItemData(
    title: AppString.FOODY_BITE,
    subtitle: AppString.FOODY_BITE_SUBTITLE,
    category: AppString.FOODY_BITE_CATEGORY,
    designer: AppString.FOODY_BITE_DESIGNER,
    primaryColor: AppColors.foodybite,
    platform: AppString.FOODY_BITE_PLATFORM,
    image: ImagePath.FOODY_BITE_COVER,
    coverUrl: ImagePath.FOODY_BITE_COVER,
    navTitleColor: AppColors.foodybiteNavTitle,
    navSelectedTitleColor: AppColors.foodybiteSelectedNavTitle,
    appLogoColor: AppColors.foodybiteAppLogo,
    projectAssets: [
      ImagePath.FOODY_BITE_HOME,
      ImagePath.FOODY_BITE_STARTING_FLOW,
      ImagePath.FOODY_BITE_HOME_FLOW,
      ImagePath.FOODY_BITE_REVIEW_FLOW,
      ImagePath.FOODY_BITE_TYPOGRAPHY,
    ],
    portfolioDescription: AppString.FOODY_BITE_DETAIL,
    isPublic: true,
    isOnPlayStore: true,
    technologyUsed: AppString.FLUTTER,
    gitHubUrl: AppString.FOODY_BITE_GITHUB_URL,
    playStoreUrl: AppString.FOODY_BITE_PLAYSTORE_URL,
  );
  static ProjectItemData NIMBUS = ProjectItemData(
    title: AppString.NIMBUS,
    subtitle: AppString.NIMBUS,
    primaryColor: AppColors.nimbus,
    platform: AppString.NIMBUS_PLATFORM,
    category: AppString.NIMBUS_CATEGORY,
    designer: AppString.NIMBUS_DESIGNER,
    image: ImagePath.NIMBUS_COVER,
    coverUrl: ImagePath.NIMBUS_COVER,
    navTitleColor: AppColors.nimbusNavTitle,
    navSelectedTitleColor: AppColors.nimbusSelectedNavTitle,
    projectAssets: [
      ImagePath.NIMBUS,
    ],
    portfolioDescription: AppString.NIMBUS_DETAIL,
    isPublic: true,
    isOnPlayStore: false,
    isLive: true,
    technologyUsed: AppString.FLUTTER,
    gitHubUrl: AppString.NIMBUS_GITHUB_URL,
    webUrl: AppString.NIMBUS_WEB_URL,
  );
  static ProjectItemData OTP_TEXT_FIELD = ProjectItemData(
    title: AppString.OTP_TEXT_FIELD,
    subtitle: AppString.OTP_TEXT_FIELD_SUBTITLE,
    category: AppString.OTP_TEXT_FIELD_CATEGORY,
    primaryColor: AppColors.otp_package,
    platform: AppString.OTP_TEXT_FIELD_PLATFORM,
    image: ImagePath.OTP_TEXTFIELD_COVER,
    coverUrl: ImagePath.OTP_TEXTFIELD_COVER,
    portfolioDescription: AppString.OTP_TEXT_FIELD_DETAIL,
    navTitleColor: AppColors.otpPackageNavTitle,
    navSelectedTitleColor: AppColors.otpPackageSelectedNavTitle,
    appLogoColor: AppColors.otpPackageAppLogo,
    isPublic: true,
    isLive: true,
    technologyUsed: AppString.FLUTTER,
    gitHubUrl: AppString.OTP_TEXT_FIELD_GITHUB_URL,
    webUrl: AppString.OTP_TEXT_FIELD_WEB_URL,
  );
  static ProjectItemData AERIUM = ProjectItemData(
    title: AppString.AERIUM,
    subtitle: AppString.AERIUM_SUBTITLE,
    primaryColor: AppColors.aerium_v1,
    platform: AppString.AERIUM_PLATFORM,
    category: AppString.AERIUM_CATEGORY,
    designer: AppString.AERIUM_DESIGNER,
    image: ImagePath.AERIUM_COVER,
    coverUrl: ImagePath.AERIUM_COVER,
    navTitleColor: AppColors.aeriumV1NavTitle,
    projectAssets: [
      ImagePath.AERIUM_COVER,
      ImagePath.AERIUM_DESIGN_2,
      ImagePath.AERIUM_DESIGN_3,
    ],
    portfolioDescription: AppString.AERIUM_DETAIL,
    isPublic: true,
    isLive: true,
    technologyUsed: AppString.FLUTTER,
    gitHubUrl: AppString.AERIUM_GITHUB_URL,
    webUrl: AppString.AERIUM_WEB_URL,
  );
  static ProjectItemData AERIUM_V2 = ProjectItemData(
    title: AppString.AERIUM_V2,
    subtitle: AppString.AERIUM_V2_SUBTITLE,
    category: AppString.AERIUM_V2_CATEGORY,
    designer: AppString.AERIUM_V2_DESIGNER,
    primaryColor: AppColors.aerium_v1,
    platform: AppString.AERIUM_V2_PLATFORM,
    image: ImagePath.AERIUM_V2_LAST,
    coverUrl: ImagePath.AERIUM_V2_LAST,
    portfolioDescription: AppString.AERIUM_V2_DETAIL,
    projectAssets: [
      ImagePath.AERIUM_V2_OVERALL,
      ImagePath.AERIUM_V2_FIRST,
      ImagePath.AERIUM_V2_TYPOGRAPHY,
      ImagePath.AERIUM_V2_LAST,
    ],
    isPublic: true,
    isLive: true,
    technologyUsed: AppString.FLUTTER,
    gitHubUrl: AppString.AERIUM_V2_GITHUB_URL,
    webUrl: AppString.AERIUM_V2_WEB_URL,
  );
  static ProjectItemData OUTFITR = ProjectItemData(
    title: AppString.OUTFITR,
    subtitle: AppString.OUTFITR_SUBTITLE,
    category: AppString.OUTFITR_CATEGORY,
    primaryColor: AppColors.outfitr,
    platform: AppString.OUTFITR_PLATFORM,
    image: ImagePath.OUTFITR_COVER,
    coverUrl: ImagePath.OUTFITR_1,
    portfolioDescription: AppString.OUTFITR_DETAIL,
    navTitleColor: AppColors.outfitrNavTitle,
    navSelectedTitleColor: AppColors.outfitrSelectedNavTitle,
    appLogoColor: AppColors.outfitrAppLogo,
    projectAssets: [
      ImagePath.OUTFITR_2,
      ImagePath.OUTFITR_4,
      ImagePath.OUTFITR_5,
      ImagePath.OUTFITR_6,
    ],
    isPublic: true,
    technologyUsed: AppString.FLUTTER,
    gitHubUrl: AppString.OUTFITR_GITHUB_URL,
    webUrl: AppString.OUTFITR_WEB_URL,
  );
}
