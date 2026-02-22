class FontFamilyHelper {
  FontFamilyHelper._();

  static const String cairoArabic = 'Cairo';
  static const String poppinsEnglish = 'Poppins';

  static String getLocalezedFontFamily() {
    const language = 'ar';
    if (language == 'ar') {
      return cairoArabic;
    } else {
      return poppinsEnglish;
    }
  }
}
