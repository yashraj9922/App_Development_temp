import 'package:google_sheet_api_app/user.dart';
import 'package:gsheets/gsheets.dart';

class UserSheetsApi {
  static const _credentials = r'''
{
  "type": "service_account",
  "project_id": "gsheets-387620",
  "private_key_id": "676d1e2aebb6083c450197ecbb03e9cb86823de9",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQC05mfddPX5/0mR\n1MoGupd9aH08bmd1GOKP27wOO7HAbHPG1GWuuva13IwEyma2yegRbElJnimEn7Qd\n4vPgYn/6smNzi032fQiRxJkbseCkhZwCxDaCCxktbKIXGDOc1KLa62bW+nOztW0b\nTKRl/MDKZHAF8XzlT7kXa/P8ztT8nGh5mHp8TN4/PmNsDk3x8w80jbMg2hVGLQtA\nr5CacLDOgvXoVJsVLfRv/WzXxQYtVp8tNYiFljS/VPhfkq6/e0M02ye+NFbIN/ht\nYucnH/8MBJMRe4r0fd9hD1W4urVhcKDVNV1WEo9EAJEZcfsPj5ykHVNkBX7rQy42\nPlVaC+/1AgMBAAECggEAFBtE4Z45pdEMaA9W6iMMqfV2cARUbvU2X2d8sjdL1Teo\nsamTaLWirMmH7ZNikcAE0YTv62UPN8y5bBX45dCE6YQw3huWbYZtsKgBnYyqi5bH\nJZ6R8WfS41Pe+0KnH/AZbsw52LyrJgcNCrr8zdInSoeZ1OtHpsQy7inDS27gyPfY\npUlO7D/lz3L4hWec+E3Rq+6cBUkGscuIH3os7M8KQ9mxOxZGEfr4VbkkOfXtdg7i\ndS+LMO0vkNg2FldMwPI3xbvPI4+IvMlUFEfC7qfY18Q0A7ey/SZJ06Vf0Bj7DHc7\nKeatElBO3fXbAVGiarftwnH6xk89F/BYUoCIi/y7AQKBgQDXzMoB/XRVs3gYUQA5\n50jgxAd7gKM4/eEJH+jyNCyPqWhzdj/IRJq1KXnw9FJfJLUbtdxnIXoIoYzu4r0u\n/Ta0B/baga41sdgf+n1feocIFdwPZtEwI7k4JwAfBrLrBfG64IM+SLW2BBM4fv//\nqmFluNaUtELmoYZTbWgbP1mnAQKBgQDWmUkU9LnnKy3onjw36MsGTgCwKC+fF/ls\nCz1N9qYk9kH3CS8mXIb4gWzTj6iMjY+ZIVUX2bUPJcaZOd7V2FJmAWgY7b3rTinn\nWJ9/WRE2Bif1r7f+BbHO0/VHUdbCTW2aS1UIo6ceqvpKCeRKFqotl7iaz8axTfdK\nWwQSLfsc9QKBgQDArLYIRNXj1tN5UokTKe+lzyCnIlmZfwO3c+g2qGLI+gaqYH/e\nPXKsIZYgjuQk0s9pKFzbL8aXgjYk7AjhtW9sGlhLC9IRWvKOysW5w9pgW7QZhEFt\n69dpzViMWxzQPoRvyBkmOSEUnFrU7H+BNAy2F+xu5Ot+o+UdA+gZu9w+AQKBgQCP\ny4Km4h03gz1t46miJQD1porbfvH5/syI0zcu6JkHp2MoLyVC5Tkjh0XutRJRrAGO\nsEEejCjAj6V1wstIK317EHI6UgOyiluVw1KMuJfJxXI9NJNrSVGNr4VpVrM62zsX\n6mZ+NXqkGBlCR0KLSoiZqFJwmc0fvYh4cGhX7iuXiQKBgB1TQ/e2FTM6eqT+e9mj\n4/WDSc28ZNmdRYSlGwD7FG6I0eqWPGQ2W1QpVDvTqYAGcrTfvsIo6g8nEXZQrsxa\npFpa+FOcM5SJmq4TLJP3I769t2v1USNEyo4sbDbJ60LT6YAhJxm10Ub0duJZuk7/\nAS/5IfGtn0A764luJ/OouRB+\n-----END PRIVATE KEY-----\n",
  "client_email": "gsheets@gsheets-387620.iam.gserviceaccount.com",
  "client_id": "109431254499431226867",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/gsheets%40gsheets-387620.iam.gserviceaccount.com",
  "universe_domain": "googleapis.com"
}

''';
  static final _spreadsheetId = '13z63apoz8ewbY10f-PHJWAp7s5RnUZDvr3_Nm7xG4y0';
  static final _gheets = GSheets(
      _credentials); //initialize our google sheets package.....declaration of variable "gsheets"
  static Worksheet?
      _userSheet; //initialize/calling our workshhet......declaration of variable "userSheet"

  static Future init() async {
    try {
      //this method will help us accessing all our spreadsheets from our account
      final spreadsheet = await _gheets
          .spreadsheet(_spreadsheetId); //to access our google sheet package
      _userSheet = await _getWorkSheet(spreadsheet,
          title: 'Sheet 1'); //to access worksheet in our google sheet
      final firstRow = UserFields
          .getFields(); //to access getFields method into init method....firstRow
      _userSheet!.values.insertRow(
          1 /*row*/, firstRow /*values*/); //inserting data into row no. 1
    } catch (e) {
      print('Init Error: $e');
    }
  }

  static Future<Worksheet> _getWorkSheet(
    //creating method getWorksheet
    Spreadsheet spreadsheet, {
    required String title,
  }) async {
    //loc is line of code
    try {
      return await spreadsheet.addWorksheet(
          title); //this loc creates a new worksheet in spreadsheet with given title if it does not exists
    } catch (e) {
      //in case if worksheet already exists this throws an exception which we need to catch
      return spreadsheet
          .worksheetByTitle(title)!; //we get call an already existing worsheet
    }
  } // this is what we need to return in both cases so that we get every time a worksheet
}
