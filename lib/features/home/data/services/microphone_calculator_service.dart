import 'package:speech_to_text/speech_to_text.dart';

class MicrophoneCalculatorService {
  final SpeechToText speechToText = SpeechToText();
  //use object the SpeechToText package
  Future<bool> initSpeech() async {
    return await speechToText.initialize();
    //ensure the mic is initialize to start record, speechToText.initialize() make sure the initialize operation is complete and after that send the result(true: yes is initialize, false: no isn't initialize)
  }

  void startListening({required Function(String) onResult}) {
    if (speechToText.isAvailable) {
      //if i can listen(the SpeechToText is initialize)
      speechToText.listen(
        //start listen on the speech
        onResult: (result) {
          if (result.finalResult) {
            //if the user finish from speech
            onResult(result.recognizedWords);
            //look if all words the user say it is recognize
          }
        },
        localeId: 'ar_SY', //speak in arabic(syria)
      );
    }
  }

  void stopListening() {
    speechToText.stop();
    //if the user click another click on mic or stop on talking so will stop the mic on work
  }
}
