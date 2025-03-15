/*
String convertArabicWordToNumber({required String arabicWord}) {
  //this file is required because in mic i say صفر but not work because the the mic didn't know that the صفر is 0
  Map<String, String> replaceArabicWordToNumber = {
    'صفر': '0',
    'واحد': '1',
    'تنين': '2',
    'تلاتة': '3',
    'اربعة': '4',
    'أربعة': '4',
    'خمسة': '5',
    'خمسه': '5',
    'ستة': '6',
    'سته': '6',
    'سبعة': '7',
    'سبعه': '7',
    'تمانية': '8',
    'تسعة': '9',
    'تسعه': '9',
    'عشرة': '10',
    'عشره': '10',
    'عشرين': '20',
    'تلاتين': '30',
    'اربعين': '40',
    'أربعين': '40',
    'خمسين': '50',
    'ستين': '60',
    'سبعين': '70',
    'تمانين': '80',
    'تسعين': '90',
    'مية': '100',
    'مئتان': '200',
    'تلاتمية': '300',
    'اربعمية': '400',
    'خمسمية': '500',
    'ستمية': '600',
    'سبعمية': '700',
    'تمانمية': '800',
    'تسعمية': '900',
    'ألف': '1000',
    'ألفين': '2000',
    'تلت تالاف': '3000',
    'اربع تالاف': '4000',
    'خمس تالاف': '5000',
    'ست تالاف': '6000',
    'سبع تالاف': '7000',
    'تمن تالاف': '8000',
    'تسع تالاف': '9000',
    'عشر تالاف': '10000',
    'عشرين ألف': '20000',
    'تلاتين ألف': '30000',
    'أربعين ألف': '40000',
    'خمسين ألف': '50000',
    'ستين ألف': '60000',
    'سبعين ألف': '70000',
    'تمانين ألف': '80000',
    'تسعين ألف': '90000',
    'مية ألف': '100000',
    'مليون': '1000000',
  };
  replaceArabicWordToNumber.forEach((word, number) {
    arabicWord = arabicWord.replaceAll(word, number).trim();
  });
  //forget the shape for forEach => .forEach((1: if before . List you have just parameter(to asign all elements in List to this parameter), 2: if before . Map you have two parameters(word(key) and number(value) to asign all keys in Map to word and asign all values in Map to number)){})
  //you replace key to value and asign to arabicWord, and delete any spaces in the value, after that you return the number(because you convert arabicWord to number)
  //you say صفر will return 0
  return arabicWord;
}
*/
