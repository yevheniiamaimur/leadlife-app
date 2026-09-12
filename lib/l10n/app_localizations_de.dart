// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get languageTitle => 'Sprache';

  @override
  String get languageSystem => 'Wie auf dem Smartphone';

  @override
  String get welcomeGreeting => 'Willkommen';

  @override
  String get whatsYourWish => 'Was ist dein Wunsch?';

  @override
  String get presentPerfectPrompt =>
      'Schreibe in der Gegenwart – so, als wäre dein Wunsch bereits wahr geworden.';

  @override
  String get typeItHere => 'Hier eingeben…';

  @override
  String get howItWorks => 'So funktioniert es';

  @override
  String get buildSuccessCode => 'Erfolgscode erstellen';

  @override
  String get navHome => 'Start';

  @override
  String get navJournal => 'Journal';

  @override
  String get navDiary => 'Tagebuch';

  @override
  String get seeExample => 'Beispiel ansehen';

  @override
  String get drawerHistory => 'Verlauf';

  @override
  String get drawerProfile => 'Profil';

  @override
  String get drawerHelp => 'Hilfe';

  @override
  String get drawerAbout => 'Über das System';

  @override
  String get stepOneOfThreeIntention => 'Schritt 1 von 3 · Deine Absicht';

  @override
  String get whatDoYouDesire => 'Was wünschst du dir?';

  @override
  String get wishFieldHint => 'Ich habe… / Ich bin… / Ich erlebe…';

  @override
  String get beSpecificHonestYou => 'Sei konkret. Sei ehrlich. Sei du selbst.';

  @override
  String get confirmMyDesire => 'Meinen Wunsch bestätigen';

  @override
  String get contactAuthorTitle => 'Die Autorin des Spiels kontaktieren';

  @override
  String get contactAuthorSubtitle =>
      'Wenn du eine Frage, Feedback oder Hilfe brauchst, kannst du direkt schreiben.';

  @override
  String get contactAuthorEmailCta => 'Per E-Mail schreiben';

  @override
  String get contactAuthorInstagramCta => 'Instagram öffnen';

  @override
  String get contactAuthorEmailCopied =>
      'E-Mail kopiert: leadlife.app@gmail.com';

  @override
  String onboardingStepOfFive(int step) {
    return 'Schritt $step von 5';
  }

  @override
  String get onboardingNameGreeting => 'Hallo. Schön, dass du hier bist.';

  @override
  String get onboardingNamePrompt =>
      'Bevor wir beginnen: Wie darf ich dich nennen?';

  @override
  String get yourNameHint => 'Dein Name';

  @override
  String get continueButton => 'Weiter';

  @override
  String onboardingBirthdayQuestion(String name) {
    return 'Wann bist du geboren, $name?';
  }

  @override
  String get onboardingBirthdaySubtitle =>
      'So können wir deine Reise auf dich abstimmen.';

  @override
  String get selectYourBirthday => 'Geburtsdatum auswählen';

  @override
  String get onboardingContactHeading => 'Bleib verbunden.';

  @override
  String get onboardingContactSubtitle =>
      'Wie können wir dich zu deiner Reise erreichen?';

  @override
  String get emailHint => 'deine@email.de';

  @override
  String get allowGentleReminders =>
      'Erlaube sanfte Erinnerungen, die dich auf deinem Weg begleiten.';

  @override
  String get allowSensitiveDataProcessing =>
      'Erlaube die Verarbeitung der von mir angegebenen Informationen, die sich auf Gesundheitsdaten oder andere sensible personenbezogene Daten beziehen können, damit die entsprechenden Hatchpot-Funktionen genutzt werden können.';

  @override
  String get comebackReminderTitle => 'Dein Weg wartet';

  @override
  String get comebackReminderBody =>
      'Du hast deine Reise auf halbem Weg unterbrochen. Komm zurück, wann immer du bereit bist, und mach weiter.';

  @override
  String get onboardingFocusHeading =>
      'Was beschäftigt dich\ngerade am meisten?';

  @override
  String get onboardingFocusSubtitle =>
      'Wähle die Bereiche, die deine Aufmerksamkeit brauchen.';

  @override
  String get focusRelationships => 'Beziehungen';

  @override
  String get focusCareerPurpose => 'Beruf & Bestimmung';

  @override
  String get focusHealthEnergy => 'Gesundheit & Energie';

  @override
  String get focusMoneyAbundance => 'Geld & Fülle';

  @override
  String get focusInnerPeace => 'Innerer Frieden';

  @override
  String get takeABreathIn => 'Atme ein.';

  @override
  String get andOut => 'Und aus.';

  @override
  String onboardingReadyMessage(String name) {
    return '$name, dein Weg beginnt gleich.';
  }

  @override
  String get letsStart => 'Los geht’s';

  @override
  String get yourPathLabel => 'Dein Weg';

  @override
  String fieldOfTotal(String num, int total) {
    return 'Feld $num von $total';
  }

  @override
  String get myAnswersLabel => 'Meine Antworten';

  @override
  String enterFieldCta(String num) {
    return 'Feld $num betreten  →';
  }

  @override
  String get answersEmptyState => 'Deine Antworten erscheinen hier.';

  @override
  String fieldBadgeNumber(String num) {
    return 'FELD $num';
  }

  @override
  String get receiveMyTaskCta => 'Meine Aufgabe erhalten  →';

  @override
  String get readyToBeginPathCta => 'Ich bin bereit, meinen Weg zu beginnen  →';

  @override
  String fieldNumberAndName(String num, String name) {
    return 'FELD $num · $name';
  }

  @override
  String get yourAnswerHint => 'Deine Antwort…';

  @override
  String get taskLabel => 'Aufgabe';

  @override
  String get saveMyAnswerCta => 'Meine Antwort speichern';

  @override
  String get saveProgressError =>
      'Dein Fortschritt konnte nicht gespeichert werden. Prüfe den Gerätespeicher.';

  @override
  String get answerReceivedHeading => 'Deine Antwort wurde aufgenommen.';

  @override
  String walkedThroughField(String fieldName) {
    return 'Du hast $fieldName durchschritten. Der Weg geht weiter.';
  }

  @override
  String get rollForNextFieldCta => 'Für das nächste Feld würfeln';

  @override
  String get finalTurnLabel => 'Der letzte Zug';

  @override
  String get pathContinuesLabel => 'Der Weg geht weiter';

  @override
  String get yourDesireLabel => 'Dein Wunsch';

  @override
  String get currentAreaOfActionColon => 'Dein aktueller Handlungsbereich:';

  @override
  String get reachedFinalPathText => 'Du hast den letzten Abschnitt erreicht.';

  @override
  String get youAreNowOnText => 'Du bist jetzt auf';

  @override
  String get finalTurnInstructions =>
      'Du hast alle 32 Wege durchschritten. Ein letzter Zug zeigt dir, wo du jetzt stehst.';

  @override
  String onFieldWhereWillPathLead(String num) {
    return 'Du bist auf Feld $num. Wohin führt dich der Weg?';
  }

  @override
  String get fromThisPlaceLabel => 'Von diesem Ort aus';

  @override
  String arrivingAtField(String num) {
    return 'Ankunft · Feld $num';
  }

  @override
  String get wheelTurnsOnceMore => 'Das Rad dreht sich noch einmal…';

  @override
  String get pathTurnsEllipsis => 'Der Weg wendet sich…';

  @override
  String get rollingEllipsis => 'Würfeln…';

  @override
  String get rollFinalDiceCta => 'Den letzten Würfel werfen';

  @override
  String get rollDiceCta => 'Würfeln';

  @override
  String get receiveSuccessCodeCta => 'Meinen Erfolgscode erhalten  →';

  @override
  String enterFieldNameCta(String name) {
    return '$name betreten  →';
  }

  @override
  String get journeyCompleteHeading => 'Deine Reise\nist vollendet';

  @override
  String get journeyCompleteSubtext =>
      'Du hast alle 32 Wege durchschritten.\nDas ist dein Erfolgscode.';

  @override
  String get yourOriginalDesireLabel => 'Dein ursprünglicher Wunsch';

  @override
  String get currentAreaOfActionLabel => 'Dein aktueller Handlungsbereich';

  @override
  String get whatYouHaveDiscoveredLabel => 'Was du entdeckt hast';

  @override
  String get preparingPdfCta => 'PDF wird erstellt…';

  @override
  String get savePdfCta => 'Als PDF speichern';

  @override
  String get startNewJourneyCta => 'Eine neue Reise beginnen';

  @override
  String get goldenFishClosingLine =>
      'Der goldene Fisch ist bereits unterwegs.\nDeine Aufgabe ist es, zu glauben – und zu handeln.';

  @override
  String get yourAnalysisLabel => 'Deine Analyse';

  @override
  String get yourNextDirectionLabel => 'Deine nächste Richtung';

  @override
  String get recommendedStepsLabel => 'Empfohlene nächste Schritte';

  @override
  String get todaysIntentionHeading => 'Heutige Absicht';

  @override
  String get todaysIntentionSubtitle =>
      'Dein Ergebnis folgt deiner Absicht – schreibe sie auf.';

  @override
  String get diaryIntentionHint => 'Schreibe deine Absicht für heute…';

  @override
  String get saveButton => 'Speichern';

  @override
  String get checkButton => 'Prüfen';

  @override
  String get diarySaveError =>
      'Speichern nicht möglich. Prüfe den Gerätespeicher.';

  @override
  String get diaryEmptyState => 'Deine Absichten erscheinen hier.';

  @override
  String get yourJourneysHeading => 'Deine Reisen';

  @override
  String get journeysSubtitle =>
      'Jeder Wunsch, den du gesetzt hast, und wie weit er dich getragen hat.';

  @override
  String get journeysEmptyState => 'Deine Reisen erscheinen hier.';

  @override
  String journeyCompletedOn(String date) {
    return 'Abgeschlossen · $date';
  }

  @override
  String get journeyInProgress => 'In Bearbeitung';

  @override
  String journeyFieldsProgress(int count, int total) {
    return '$count / $total Felder';
  }

  @override
  String get yourProfileFallback => 'Dein Profil';

  @override
  String get profileNoDataMessage =>
      'Wir haben deine Angaben noch nicht. Sie werden beim Einstieg erfasst.';

  @override
  String get profileBirthdayLabel => 'Geburtsdatum';

  @override
  String get profileEmailLabel => 'E-Mail';

  @override
  String get profileFocusLabel => 'Fokus';

  @override
  String get helpSubtitle => 'Antworten auf häufig gestellte Fragen.';

  @override
  String get helpFaqWhatIsLeadlifeQ => 'Was ist Hatchpot?';

  @override
  String get helpFaqWhatIsLeadlifeA =>
      'Eine geführte Reise rund um eine von dir gewählte Absicht. Sie hilft dir zu klären, was du willst, deinen inneren Zustand zu verändern und deine Richtung zu finden.';

  @override
  String get helpFaqDiceQ => 'Wie funktioniert der Würfel?';

  @override
  String get helpFaqDiceA =>
      'Würfle, um zu sehen, ob deine Absicht bereit ist. Wenn ja, beginnt deine Reise. Wenn nicht, erhältst du einen Hinweis, um sie zu verfeinern und es erneut zu versuchen.';

  @override
  String get helpFaqStuckFieldQ =>
      'Was, wenn ich bei einem Feld nicht weiterkomme?';

  @override
  String get helpFaqStuckFieldA =>
      'Antworte ehrlich und in wenigen Worten. Es gibt keine falschen Antworten – jedes Feld verschiebt deinen Fokus für einen Moment.';

  @override
  String get helpFaqSavedIntentionsQ =>
      'Wo werden meine gespeicherten Absichten abgelegt?';

  @override
  String get helpFaqSavedIntentionsA =>
      'Alles, was du im Tagebuch speicherst, bleibt dort im Verlauf auf deinem Gerät erhalten.';

  @override
  String get helpFaqChangeIntentionQ => 'Kann ich meine Absicht später ändern?';

  @override
  String get helpFaqChangeIntentionA =>
      'Ja. Schreibe jederzeit im Tagebuch eine neue und gleiche sie mit deinem Weg ab.';

  @override
  String get aboutHeading => 'Über das System';

  @override
  String get aboutIntro =>
      'Hatchpot besteht aus 32 Feldern, die zu einem durchgehenden Weg angeordnet sind.';

  @override
  String get tenLevelsHeading => '10 Ebenen der Wirklichkeit';

  @override
  String get tenLevelsBody =>
      'Die Ebenen, durch die sich deine Absicht bewegt – von den konkreten Umständen deines Lebens bis zu den tieferen Zuständen dahinter.';

  @override
  String get lifeStrategiesHeading => '22 Lebensstrategien';

  @override
  String get lifeStrategiesBody =>
      'Verschiedene Arten zu denken, zu wählen, zu fühlen und zu handeln. Du musst sie nicht studieren – du durchläufst einfach jene, zu denen dich dein Weg führt.';

  @override
  String get successCodeHeading => 'Dein Erfolgscode';

  @override
  String get successCodeBody =>
      'Am Ende der Reise werden deine Entscheidungen und Erkenntnisse zu einem persönlichen Code verbunden – keine allgemeingültige Antwort, sondern eine Karte zurück zu deinem Wunsch.';

  @override
  String get helpModalExampleLabel => 'Ein Beispiel';

  @override
  String get helpModalNamingHeading => 'Wie ein Wunsch formuliert wird';

  @override
  String get helpModalYesLabel => 'JA — GEGENWART';

  @override
  String get helpModalNoLabel => 'NOCH NICHT — ZUKUNFT';

  @override
  String get helpModalGoodExample =>
      '„Ich habe ein Leben aufgebaut, in dem meine Arbeit und meine Wahrheit eins sind.“';

  @override
  String get helpModalBadExample => '„Ich möchte ein Leben aufbauen, in dem…“';

  @override
  String get helpModalClosingText =>
      'Sprich so, als wäre es bereits wahr geworden.\nDer Weg antwortet auf Gewissheit.';

  @override
  String get helpModalUnderstandCta => 'Ich verstehe';

  @override
  String get diceStepTwoOfThree => 'Schritt 2 von 3';

  @override
  String get diceScreenTitle => 'Den Weg erwecken';

  @override
  String get diceYourIntentionLabel => 'Deine Absicht';

  @override
  String get diceClueYesTitle => 'Ja';

  @override
  String get diceClueYesText =>
      'Dein Wunsch ist bereit. Der Weg kann beginnen.';

  @override
  String get diceClueConnectionsTitle => 'Verbindungen';

  @override
  String get diceClueConnectionsText =>
      'Wer ist mit diesem Wunsch verbunden? Vertraue deiner Intuition. Gehört eine Person, eine Beziehung oder eine Zusammenarbeit dazu? Ergänze, was sich richtig anfühlt.';

  @override
  String get diceClueClarityTitle => 'Klarheit';

  @override
  String get diceClueClarityText =>
      'Formuliere deinen Wunsch konkreter. Ergänze Einzelheiten, damit genau klar wird, was du möchtest.';

  @override
  String get diceClueExpansionTitle => 'Erweiterung';

  @override
  String get diceClueExpansionText =>
      'Denke größer. Erweitere deinen Horizont. Wie könnte dieser Wunsch noch bedeutsamer oder inspirierender werden?';

  @override
  String get diceClueFreedomTitle => 'Freiheit';

  @override
  String get diceClueFreedomText =>
      'Enthält dein Wunsch verborgene Einschränkungen? Formuliere ihn so, dass er dir Freiheit, Möglichkeiten und Kraft statt Begrenzungen gibt.';

  @override
  String get diceClueMeaningTitle => 'Bedeutung';

  @override
  String get diceClueMeaningText =>
      'Was macht diesen Wunsch für dich wirklich wichtig? Ergänze deine persönlichen Werte und seine tiefere Bedeutung.';

  @override
  String get diceClueFeelingsTitle => 'Gefühle';

  @override
  String get diceClueFeelingsText =>
      'Wie möchtest du dich fühlen, wenn dieser Wunsch Wirklichkeit wird? Nimm diese Gefühle in deinen Wunsch auf – sie sind wichtig.';

  @override
  String get diceClueExpressionTitle => 'Ausdruck';

  @override
  String get diceClueExpressionText =>
      'Formuliere deinen Wunsch neu. Wähle Worte, die leichter, klarer und natürlicher wirken. Manchmal verändert eine andere Formulierung alles.';

  @override
  String get diceUniverseListens => 'Das Universum hört zu…';

  @override
  String get diceRollingLabel => 'Würfeln…';

  @override
  String get diceRollLabel => 'Würfeln';

  @override
  String get diceRollAgainLabel => 'Noch einmal würfeln';

  @override
  String get diceEnterFirstFieldCta => 'Das erste Feld betreten  →';

  @override
  String get diceRefineMyDesire => 'Meinen Wunsch verfeinern';

  @override
  String get paywallHeadlineLine1 => 'Dein Wunsch hat Ja gesagt.';

  @override
  String get paywallHeadlineLine2 => 'Dein Weg ist bereit.';

  @override
  String get paywallSubheading => 'Wähle, wie tief du gehen möchtest.';

  @override
  String get paywallSeeDetails => 'Details ansehen';

  @override
  String get paywallChooseThisPathCta => 'Diesen Weg wählen';

  @override
  String get accountLinkHeadline => 'Schütze deine Reise';

  @override
  String get accountLinkSubtitle =>
      'Erstelle ein Konto, damit deine Reise und dein Kauf auch bei einem Smartphone-Wechsel erhalten bleiben.';

  @override
  String get continueWithApple => 'Mit Apple fortfahren';

  @override
  String get continueWithGoogle => 'Mit Google fortfahren';

  @override
  String get continueWithEmail => 'Mit E-Mail fortfahren';

  @override
  String get accountLinkPasswordHint => 'Passwort erstellen';

  @override
  String get createAccountCta => 'Konto erstellen';

  @override
  String get accountLinkSkip => 'Vielleicht später';

  @override
  String get accountLinkErrorGeneric =>
      'Etwas ist schiefgegangen. Bitte versuche es erneut.';

  @override
  String get purchasePendingMessage =>
      'Dein Kauf wartet auf Bestätigung. Wir schalten Hatchpot Plus frei, sobald er bestätigt ist.';

  @override
  String get purchaseErrorGeneric =>
      'Beim Kauf ist etwas schiefgelaufen. Bitte versuche es erneut.';

  @override
  String get restorePurchasesAction => 'Käufe wiederherstellen';

  @override
  String get restorePurchasesSuccess => 'Deine Käufe wurden wiederhergestellt.';

  @override
  String get hatchpotPlusActiveStatus => 'Hatchpot Plus ist aktiv.';

  @override
  String get hatchpotPlusInactiveStatus => 'Hatchpot Plus ist nicht aktiv.';

  @override
  String get paywallTariffOneJourneyTitle => 'Eine Reise';

  @override
  String get paywallTariffOneJourneyTagline => 'Ein Wunsch, eine Richtung';

  @override
  String get paywallFeatureQuestionnairesToEndPractices =>
      'Fragebögen und Abschlussübungen';

  @override
  String get paywallFeatureFinalDirection => 'Abschließende Richtung';

  @override
  String get paywallFeaturePersonalJournal => 'Persönliches Journal';

  @override
  String get paywallTariffLeadlifePassTitle => 'Hatchpot Pass';

  @override
  String get paywallTariffLeadlifePassTagline => 'Jederzeit tiefer gehen';

  @override
  String get paywallFeatureUnlimitedJourneys => 'Unbegrenzte Reisen';

  @override
  String get paywallFeatureFullJourneyHistory => 'Vollständiger Reiseverlauf';

  @override
  String get paywallFeatureNewPractices => 'Neue Übungen';

  @override
  String get awakenedStepThreeOfThree => 'Schritt 3 von 3';

  @override
  String get awakenedFieldOneAwaits => 'Feld 01 wartet';

  @override
  String get awakenedJourneyBegunTitle => 'Deine Reise\nhat begonnen.';

  @override
  String get awakenedPathRespondBody =>
      'Der Weg wird auf deine Absicht antworten.\nGehe ihn mit Geduld.';

  @override
  String get awakenedHeldInLight => 'Im Licht gehalten';

  @override
  String get awakenedEnterFieldOneCta => 'Feld 01 betreten  →';

  @override
  String get howItWorksBeginJourneyCta => 'Deine Reise beginnen';

  @override
  String get howItWorksContinueCta => 'Weiter';

  @override
  String get howItWorksSlide1Title => 'Ein strukturierter Weg zurück zu dir';

  @override
  String get howItWorksSlide1Body =>
      'Hatchpot ist ein System der Selbstreflexion, das dich durch Spiel, Symbol und Intuition mit deinem inneren Selbst verbindet.';

  @override
  String get howItWorksSlide2Title => 'Der Würfel liest dein Unbewusstes';

  @override
  String get howItWorksSlide2Body =>
      'Schreib deinen Wunsch auf und würfle.\n\nWürfelst du eine 1, ist er bereit, und deine Reise beginnt.\n\nJede andere Zahl ist ein Hinweis, der dir hilft, ihn zu verfeinern oder zu ändern.';

  @override
  String get howItWorksSlide3Title => '32 Felder. Dein eigener Weg.';

  @override
  String get howItWorksSlide3Body =>
      'Du durchläufst 10 Ebenen der Wirklichkeit und 22 Lebensstrategien — verschiedene Arten zu denken, zu fühlen und zu handeln.\n\nWürfle, beantworte eine Frage, geh weiter. Die meisten Schritte dauern weniger als eine Minute.';

  @override
  String get howItWorksSlide4Title => 'Baue deinen Erfolgscode';

  @override
  String get howItWorksSlide4Body =>
      'Jede Antwort wird Teil eines persönlichen Codes — einer Karte zurück zu deinem Wunsch.\n\nKeine universelle Antwort. Nur dein Weg.';

  @override
  String get field01Name => 'Licht';

  @override
  String get field01Subtitle => 'Wunsch';

  @override
  String get field01Intro =>
      'In Hatchpot ist Licht der symbolische Anfang – die Energie, die bereits in deiner Idee liegt.\n\nDer Wunsch, den du aufgeschrieben hast, spiegelt etwas wider, das dir wirklich wichtig ist. Lass dich von seinem Wert auf deinem beginnenden Weg tragen.';

  @override
  String get field01Task => '';

  @override
  String get field02Name => 'Verbindung';

  @override
  String get field02Subtitle => 'Initiative';

  @override
  String get field02Intro =>
      'Jede Idee beginnt als Funke.\n\nWachstum beginnt, wenn du sie mit der Welt teilst.\nJeder Wunsch hat einen Ursprung.\nErinnere dich, wann dieser Traum erstmals in deinem Leben auftauchte.';

  @override
  String get field02Task =>
      'Wann ist dieser Wunsch zum ersten Mal in deinem Leben aufgetaucht?\n\nMit wem könntest du ihn heute teilen, um seine Verwirklichung zu unterstützen?';

  @override
  String get field03Name => 'Form';

  @override
  String get field03Subtitle => 'Vision';

  @override
  String get field03Intro =>
      'Ein Wunsch wird wirklich, wenn er eine klare Form annimmt.\nStell dir vor, wie Erfolg für dich aussieht.';

  @override
  String get field03Task => 'Wie sieht Erfolg für dich aus?';

  @override
  String get field04Name => 'Größe';

  @override
  String get field04Subtitle => 'Beitrag';

  @override
  String get field04Intro =>
      'Ein Wunsch braucht eine Struktur, die seine Energie und die notwendigen Handlungen tragen kann.\n\nDieses Feld ist mit Größe, Erweiterung und Güte verbunden.';

  @override
  String get field04Task =>
      'Warum ist es für die Welt wertvoll, dass dein Wunsch wahr wird? Schreibe so viele Punkte auf, wie sich richtig anfühlen.\n\nIch gebe der Welt __________, und die Welt nimmt mich an und gibt mir Möglichkeiten und Unterstützung.';

  @override
  String get field05Name => 'Begrenzung';

  @override
  String get field05Subtitle => 'Widerstandskraft';

  @override
  String get field05Intro =>
      'Hindernisse sind eine normale Phase jedes Entwicklungsprozesses.\n\nBetrachte noch einmal, was dir im Weg steht: Vielleicht zeigt es bereits die Kraft, die in dir wächst.';

  @override
  String get field05Task =>
      'Was erscheint dir gerade als Begrenzung? Welche positive Eigenschaft oder Verhaltensweise lehrt sie dich?';

  @override
  String get field06Name => 'Werte';

  @override
  String get field06Subtitle => 'Authentizität';

  @override
  String get field06Intro =>
      'Dein Wunsch spiegelt einen Teil von dir wider, der bereit ist, sich zu zeigen.\n\nErkenne, wer du für dich und die Welt wirst, wenn er sich verwirklicht, und welcher Wert dahintersteht. Dieses Feld spiegelt auch das innere Kind und die Liebe wider.';

  @override
  String get field06Task =>
      'Welchen Teil von dir drückt dieser Wunsch aus? Wer wirst du für dich und die Welt, wenn er sich verwirklicht? Welcher Wert steht dahinter?\n\nIch erkenne mich als __________ an und nutze diese Eigenschaften, um das Beabsichtigte zu verwirklichen.';

  @override
  String get field06CodeInstruction =>
      'Trage die Eigenschaften ein, die du bereit bist und in deinem Leben zeigen möchtest.';

  @override
  String get field07Name => 'Gefühle';

  @override
  String get field07Subtitle => 'Emotionales Bewusstsein';

  @override
  String get field07Intro =>
      'Dieses Feld zeigt die emotionale Dimension deiner Anfrage. Emotionen sind Zeichen. Wenn du sie nicht unterdrückst, sondern durchlebst, beginnt die Energie in die richtige Richtung zu fließen.\n\nDieses Feld wirkt wie ein Bereitschaftsfilter: Es zeigt, welche Zustände die Bewegung gerade bremsen und welche den Weg öffnen.';

  @override
  String get field07Task =>
      'Welche Emotionen erlebst du am häufigsten speziell in Bezug auf deine Anfrage? Gibt es eine Emotion oder einen wiederkehrenden emotionalen Zyklus, in dem du dich wie feststeckend fühlst? Wodurch werden diese Zustände normalerweise ausgelöst?\n\nIch lasse __________ los und erlaube der Energie, in die Verwirklichung meiner Anfrage zu fließen.';

  @override
  String get field08Name => 'Denken';

  @override
  String get field08Subtitle => 'Klarheit';

  @override
  String get field08Intro =>
      'Dieses Feld zeigt, welche Gedanken und Überzeugungen deine Anfrage umgeben. Manche Überzeugungen unterstützen die Bewegung, während andere die Manifestation still begrenzen können.\n\nWenn du sie klar erkennst, kannst du eine neue Richtung wählen.';

  @override
  String get field08Task =>
      'Was denkst du wirklich über deine Anfrage? Welche Einstellungen oder Überzeugungen könnten ihre Verwirklichung blockieren?\n\nIch transformiere begrenzende Überzeugungen in Freiheit der Manifestation.';

  @override
  String get field09Name => 'Unterbewusstsein';

  @override
  String get field09Subtitle => 'Vorstellungskraft';

  @override
  String get field09Intro =>
      'Das Unterbewusstsein bewahrt alle vergangenen Ereignisse und Erfahrungen sowie zukünftige Wahrscheinlichkeiten.\n\nDurch dieses Feld stimmen wir uns auf den gewünschten Wahrscheinlichkeitszweig ein.';

  @override
  String get field09Task =>
      'Stell dir die Verwirklichung deiner Anfrage aus dem Herzen vor. Welches Bild siehst du? Beschreibe es in kurzen Punkten: was geschieht, wo du bist, was du fühlst und was bereits real geworden ist.';

  @override
  String get field10Name => 'Wirklichkeit';

  @override
  String get field10Subtitle => 'Handlung';

  @override
  String get field10Intro =>
      'Dieses Feld handelt von der Realität und der physischen Welt. Hier beginnt die Anfrage, aus Idee, Gefühl und Bild in konkrete Handlung überzugehen.\n\nWenn deine Anfrage mit Materie, Geld, dem Körper oder einem sichtbaren Ergebnis verbunden ist, ist dieses Feld besonders wichtig.';

  @override
  String get field10Task =>
      'Schreibe 10 Handlungen auf, die deiner Ansicht nach helfen, deine Anfrage zu verwirklichen. Versuche, dass die meisten davon heute möglich sind, mindestens die Hälfte.';

  @override
  String get field11Name => 'Möglichkeit';

  @override
  String get field11Subtitle => 'Vertrauen';

  @override
  String get field11Intro =>
      'In jedem Wunsch liegt die Möglichkeit seiner Verwirklichung.';

  @override
  String get field11Task =>
      'Glaubst du wirklich, dass dein Wunsch möglich ist? Wenn ja, kannst du dem Prozess vertrauen?';

  @override
  String get field12Name => 'Wille';

  @override
  String get field12Subtitle => 'Einfallsreichtum';

  @override
  String get field12Intro => 'Dein Wille ist deine stärkste Ressource.';

  @override
  String get field12Task =>
      'Welche Mittel stehen dir bereits zur Verfügung, um deinen Wunsch zu verwirklichen?';

  @override
  String get field13Name => 'Intuition';

  @override
  String get field13Subtitle => 'Innere Stille';

  @override
  String get field13Intro => 'Deine innere Stimme kennt immer den Weg.';

  @override
  String get field13Task => 'Was sagt deine innere Stimme über diesen Wunsch?';

  @override
  String get field14Name => 'Schöpfung';

  @override
  String get field14Subtitle => 'Kreativität';

  @override
  String get field14Intro =>
      'Jede Wirklichkeit beginnt als Möglichkeit.\n\nSchöpfung ist die Brücke zwischen einer Idee und ihrem Ausdruck.\n\nSchöpfung verwandelt Möglichkeiten in Wirklichkeit.\n\nJeden Tag erschaffst du etwas durch deine Handlungen, deine Energie und deine Aufmerksamkeit.';

  @override
  String get field14Task =>
      'Wie kann dieser Wunsch seine erste Form annehmen?\n\nWas erschaffst du bereits in deinem Leben?';

  @override
  String get field15Name => 'Kraft';

  @override
  String get field15Subtitle => 'Steuerung';

  @override
  String get field15Intro =>
      'Kraft beginnt mit Struktur.\n\nDu kannst nur steuern, was Struktur hat.\n\nWas du steuern kannst, kannst du verbessern.';

  @override
  String get field15Task =>
      'Was musst du steuern, um deinem Ziel näherzukommen?\n\nIch schaffe Struktur in __________, um __________ aufzubauen.';

  @override
  String get field16Name => 'Wissen';

  @override
  String get field16Subtitle => 'Erfahrung';

  @override
  String get field16Intro =>
      'Wissen wird wertvoll, wenn du es anwendest.\n\nWahre Weisheit entsteht durch Handeln.\n\nDas richtige Wissen kann dir den nächsten Schritt zeigen.';

  @override
  String get field16Task =>
      'Hast du bereits genug Wissen, um dein Ziel zu erreichen?\n\nWenn ja, welches Wissen hilft dir dabei?\n\nWenn nicht, wo kannst du das nötige Wissen finden?\n\nDas Wissen, das mir beim Vorankommen hilft, ist __________.\n\nNeues Wissen kann ich von __________ erhalten.';

  @override
  String get field17Name => 'Entscheidung';

  @override
  String get field17Subtitle => 'Selbstvertrauen';

  @override
  String get field17Intro =>
      'Jede Entscheidung formt, wer du wirst.\n\nWenn du wählst, was wirklich deins ist, gehst du mit Vertrauen voran.\n\nDein Herz weiß bereits, was sich wahr anfühlt.\n\nVertraue dir genug, um es zu wählen.';

  @override
  String get field17Task =>
      'Was fühlt sich für dich wirklich richtig an?\n\nIch wähle __________, weil es zu mir gehört.';

  @override
  String get field18Name => 'Bewegung';

  @override
  String get field18Subtitle => 'Disziplin';

  @override
  String get field18Intro =>
      'Dein Wunsch verlangt Disziplin von dir.\nMit kleinen, beständigen Schritten kannst du dem näherkommen, was du möchtest.';

  @override
  String get field18Task =>
      'Welche Handlung bist du bereit, diszipliniert auszuführen, um deinen Wunsch zu erreichen?\n\nWie lange bist du bereit, daran festzuhalten?\n\nIch werde __________ regelmäßig für __________ tun, um meinem Wunsch näherzukommen.';

  @override
  String get field19Name => 'Wahrheit';

  @override
  String get field19Subtitle => 'Ehrlichkeit';

  @override
  String get field19Intro =>
      'Fortschritt beginnt damit, die Dinge so zu sehen, wie sie sind.\n\nWahrheit schafft die Grundlage für Veränderung.';

  @override
  String get field19Task =>
      'Was ist für dich gerade wahr?\n\nMeine Wahrheit ist gerade __________.\n\nUm meinem Wunsch näherzukommen, möchte ich __________ verbessern.';

  @override
  String get field20Name => 'Bestimmung';

  @override
  String get field20Subtitle => 'Mut';

  @override
  String get field20Intro =>
      'Ein bedeutsames Ziel nützt nicht nur dir.\n\nWenn dein Wunsch einem größeren Zweck dient, wird er stärker.\n\nEs braucht Mut, dem eigenen Weg zu folgen.\n\nJe bedeutsamer dein Ziel ist, desto mehr Menschen kann es inspirieren und unterstützen.';

  @override
  String get field20Task =>
      'Wie könnte dein Wunsch anderen Menschen nützen?\n\nSchreibe 10 Möglichkeiten auf, wie dein Wunsch anderen helfen könnte.';

  @override
  String get field21Name => 'Veränderung';

  @override
  String get field21Subtitle => 'Flexibilität';

  @override
  String get field21Intro =>
      'Das Leben bewegt sich weiter.\n\nDu kannst nicht jede Veränderung kontrollieren, aber du kannst lernen, dich mit ihr zu bewegen.';

  @override
  String get field21Task =>
      'Was beginnt sich gerade in deinem Leben zu entfalten?\n\nIch lasse die Kontrolle über __________ los und erlaube dem Leben, sich zu bewegen.\n\nIch bemerke, dass __________ beginnt, sich in meinem Leben zu entfalten.\n\nIch beginne mit __________, um __________ wachsen zu lassen.';

  @override
  String get field22Name => 'Gleichgewicht';

  @override
  String get field22Subtitle => 'Selbstbeherrschung';

  @override
  String get field22Intro =>
      'Wahre Stärke ist kein Zwang.\n\nSie ist die Fähigkeit, Kraft und Sanftheit ins Gleichgewicht zu bringen.';

  @override
  String get field22Task =>
      'Wo in deinem Leben könntest du aufhören zu drängen und beginnen, ausgeglichen zu reagieren?\n\nWo könntest du weniger Kraft und mehr Gleichgewicht einsetzen?\n\nMeine Stärke ist, dass ich __________ kann, ohne zu zwingen, zu kontrollieren oder zu kämpfen.';

  @override
  String get field23Name => 'Beobachtung';

  @override
  String get field23Subtitle => 'Bewusstheit';

  @override
  String get field23Intro =>
      'Manchmal ist auch eine Pause ein Schritt nach vorn.\n\nDurch Beobachten beginnst du, die Dinge anders zu sehen.';

  @override
  String get field23Task =>
      'Was versuchst du gerade zu erzwingen?\n\nHalte eine Minute inne und beobachte.\n\nWas siehst du jetzt anders?\n\nWenn ich langsamer werde, erkenne ich __________.';

  @override
  String get field24Name => 'Transformation';

  @override
  String get field24Subtitle => 'Fähigkeit zur Veränderung';

  @override
  String get field24Intro =>
      'Wachstum braucht Veränderung.\n\nUm etwas Neues zu erschaffen, musst du vielleicht etwas Altes loslassen.';

  @override
  String get field24Task =>
      'Woran hältst du fest, obwohl es dir nicht mehr dient?\n\nWas muss sich in dir verändern, damit du dein Ziel erreichst?\n\nIch lasse __________ los, um ich selbst zu werden.';

  @override
  String get field25Name => 'Absicht';

  @override
  String get field25Subtitle => 'Fokus';

  @override
  String get field25Intro =>
      'Worauf du deinen Fokus richtest, wächst.\n\nEine klare Absicht gibt deinem Wunsch Richtung und Bedeutung.';

  @override
  String get field25Task =>
      'Warum ist dir dieser Wunsch wichtig?\n\nDieser Wunsch ist mir wichtig, weil __________.';

  @override
  String get field26Name => 'Anhaftung';

  @override
  String get field26Subtitle => 'Ehrlichkeit mit dir selbst';

  @override
  String get field26Intro =>
      'Nicht alles, woran du festhältst, gehört wirklich zu dir.\n\nManchmal verkleidet sich Angst als Wunsch.';

  @override
  String get field26Task =>
      'Was tust du, weil du Angst hast, es nicht zu tun?\n\nEin Ziel, das sich nicht mehr wirklich nach meinem anfühlt, ist __________.\n\nEine Absicht, die sich weiterhin wahr anfühlt, ist __________.';

  @override
  String get field27Name => 'Auflösung';

  @override
  String get field27Subtitle => 'Widerstandskraft';

  @override
  String get field27Intro =>
      'Manchmal muss etwas Altes zerbrechen, bevor du vorankommen kannst.\n\nWenn deine Gedanken und Gefühle zusammenwirken, wird dein Weg klarer.';

  @override
  String get field27Task =>
      'Was denkst du über deinen Wunsch?\n\nWas fühlst du in Bezug auf deinen Wunsch?\n\nGibt es einen Widerspruch zwischen beidem?\n\nWenn ja, versuche, deine Gedanken und Gefühle zusammenzuführen.\n\nWas müssen deine Gefühle hören?\n\nWas müssen deine Gedanken verstehen?';

  @override
  String get field28Name => 'Führung';

  @override
  String get field28Subtitle => 'Im Einklang mit dem Fluss';

  @override
  String get field28Intro =>
      'Das Leben fließt durch Empfangen und Geben.\n\nJe offener du für diesen Fluss bist, desto leichter wird es, deinem Weg zu folgen.';

  @override
  String get field28Task =>
      'Wohin führt dich dieser Wunsch?\n\nMein Wunsch führt mich zu __________.\n\nIch entscheide mich, ich selbst zu sein und dem Fluss zu vertrauen, auch wenn __________.';

  @override
  String get field29Name => 'Empfinden';

  @override
  String get field29Subtitle => 'Sensibilität';

  @override
  String get field29Intro =>
      'Nicht alles lässt sich klar erkennen.\n\nManchmal führt der einzige Weg nach vorn über das Vertrauen in dein Gefühl.';

  @override
  String get field29Task =>
      'Wovor hast du Angst, dich ihm zu stellen?\n\nIch bin bereit, mich __________ zu stellen.\n\nIch begegne dem Schatten, der __________.';

  @override
  String get field30Name => 'Integration';

  @override
  String get field30Subtitle => 'Wiedererkennen';

  @override
  String get field30Intro =>
      'Du beginnst, dich in einer neuen Wirklichkeit wiederzuerkennen.\n\nJe klarer du siehst, wer du wirst, desto leichter kannst du diese Identität in dein Leben integrieren.';

  @override
  String get field30Task =>
      'Wer bist du, wenn dieser Wunsch bereits Teil deines Lebens ist?\n\nWer bist du, wenn dieser Wunsch schon wahr geworden ist?\n\nIch bin ein Mensch, der __________.\n\nIch erkenne mich als jemanden, der __________.';

  @override
  String get field31Name => 'Erwachen';

  @override
  String get field31Subtitle => 'Handlung';

  @override
  String get field31Intro =>
      'Du weißt bereits genug.\n\nDie Frage ist nicht mehr, was du willst. Die Frage ist, ob du bereit bist zu handeln.';

  @override
  String get field31Task =>
      'Welche Handlung kannst du nicht länger aufschieben?\n\nWelche Handlung musst du, wie du weißt, jetzt ausführen?\n\nIch bin bereit zu handeln und __________.\n\nIch wache auf und handle, indem ich __________.';

  @override
  String get field32Name => 'Ganzheit';

  @override
  String get field32Subtitle => 'Tapferkeit';

  @override
  String get field32Intro =>
      'Ganzheit beginnt, wenn du alle Teile deiner selbst zusammenführst.\n\nVielleicht spürst du noch Angst, doch du bist bereit für den nächsten Schritt.';

  @override
  String get field32Task =>
      'Welche Ängste stehen noch zwischen dir und deinem nächsten Schritt?\n\nIch erkenne diese Ängste an und entscheide mich trotzdem, auf __________ zuzugehen.';

  @override
  String get pdfJourneyReportLabel => 'Bericht über deine Reise';

  @override
  String get pdfJourneyCompleteHeading => 'Deine Reise\nist vollendet';

  @override
  String get pdfWalkedAllPathsLine => 'Du hast alle 32 Wege durchschritten.';

  @override
  String get pdfYourDesireLabel => 'DEIN WUNSCH';

  @override
  String get pdfCurrentAreaOfActionLabel => 'DEIN AKTUELLER HANDLUNGSBEREICH';

  @override
  String get pdfWhatYouHaveDiscoveredLabel => 'WAS DU ENTDECKT HAST';

  @override
  String get pdfNoAnswersRecorded => 'Keine Antworten gespeichert.';

  @override
  String get privacyPolicyLabel => 'Datenschutzerklärung';

  @override
  String get termsOfUseLabel => 'Nutzungsbedingungen';

  @override
  String get subscriptionTermsLabel =>
      'Abonnement- und Rückerstattungsbedingungen';

  @override
  String get legalConsentPrefix => 'Ich stimme den ';

  @override
  String get legalConsentAnd => ' und der ';

  @override
  String get legalConsentSuffix => ' zu.';

  @override
  String get legalPrivacySection1Heading => 'Überblick';

  @override
  String get legalPrivacySection1Body =>
      'Zuletzt aktualisiert: 9. September 2026. Diese Datenschutzerklärung erläutert, welche Informationen Hatchpot verarbeitet, zu welchem Zweck, an wen sie weitergegeben werden können, wo sie gespeichert werden können und welche Rechte du als Nutzer hast.\n\nHatchpot („Hatchpot“, „wir“, „uns“ oder „unser Dienst“) ist eine digitale Anwendung für persönliche Reflexion, Selbsterkenntnis und Unterhaltung unter Einsatz von Technologien der künstlichen Intelligenz.\n\nBetreiberin von Hatchpot ist die Einzelunternehmerin Maimur Yevheniia Feliksivna, registriert nach dem Recht der Ukraine.\n\nRegistrierungs- und Kontaktdaten: Steuer-Identifikationsnummer (РНОКПП) 3743203085; Registrierungsadresse: Zhukovskoho-Straße 2, Dnipro, 49000, Ukraine; E-Mail: leadlife.app@gmail.com.';

  @override
  String get legalPrivacySection2Heading =>
      'Welche Informationen wir verarbeiten';

  @override
  String get legalPrivacySection2Body =>
      'Informationen, die du selbst bereitstellst — je nach genutzter Funktion kann dies Folgendes umfassen: Name oder gewählter Name; Geburtsdatum; E-Mail-Adresse; gewählter Fokusbereich; dein Wunsch oder deine Absicht; Antworten auf Fragen; Tagebucheinträge; Verlauf deiner Reise durch die App; Inhalt von Anfragen an KI-Funktionen; weitere Informationen, die du im Freitext angibst.\n\nKontodaten — wenn du ein Konto erstellst oder verknüpfst, verarbeitet Firebase Authentication die entsprechenden Daten: Konto-Kennung, E-Mail-Adresse und für die Authentifizierung erforderliche technische Daten.\n\nTechnische Informationen — Gerätetyp und -modell, Betriebssystem, App-Version, technische Kennungen, Angaben zur Interaktion mit der App, Diagnosedaten und Absturzberichte. Firebase Analytics und Firebase Crashlytics können für Analysen und Diagnosen verwendet werden. Wir fordern dich nicht zur Eingabe von Zahlungskartendaten auf.';

  @override
  String get legalPrivacySection3Heading => 'Sensible Informationen';

  @override
  String get legalPrivacySection3Body =>
      'Manche deiner Einträge — insbesondere Tagebucheinträge, Antworten auf Fragen oder Freitext — können möglicherweise Informationen über Gesundheit, psychischen Zustand, Überzeugungen, Beziehungen oder andere persönliche Umstände enthalten.\n\nWir verlangen nicht, dass du solche Informationen zur Nutzung der App bereitstellst, du kannst sie jedoch freiwillig in das entsprechende Feld eingeben. Wenn du freiwillig Informationen bereitstellst, die zu besonderen Kategorien personenbezogener Daten gehören, werden sie nur in dem für die jeweilige Funktion erforderlichen Umfang und auf der anwendbaren Rechtsgrundlage verarbeitet.\n\nGib in der App keine Passwörter, Zahlungsdaten, Dokumentennummern, geheimen Schlüssel oder andere Informationen ein, deren Offenlegung für dich ein Risiko darstellen könnte.';

  @override
  String get legalPrivacySection4Heading => 'Zweck der Verarbeitung';

  @override
  String get legalPrivacySection4Body =>
      'Wir verwenden Informationen ausschließlich für konkrete und rechtmäßige Zwecke: Bereitstellung der Hatchpot-Funktionen; Erstellung personalisierter Spiel- und Reflexionsinhalte; Bearbeitung von Anfragen an KI-Funktionen; Erstellung der von dir angeforderten Abschlussanalyse; Speicherung und Synchronisierung des Fortschritts; Wiederherstellung des Kontos; Versand angeforderter Erinnerungen; Gewährleistung der Sicherheit des Dienstes; Verhinderung von Missbrauch und Betrug; Diagnose technischer Fehler; Analyse der Funktionsnutzung; Verbesserung der Stabilität und Funktionalität der App; Erfüllung gesetzlicher Pflichten; Schutz der Rechte und berechtigten Interessen des Nutzers und der Betreiberin.\n\nWir verkaufen keine personenbezogenen Daten von Nutzern und verwenden sie nicht, um über Werbenetzwerke Produkte oder Dienstleistungen Dritter zu bewerben.';

  @override
  String get legalPrivacySection5Heading =>
      'Künstliche Intelligenz und Anthropic';

  @override
  String get legalPrivacySection5Body =>
      'Zur Erstellung personalisierter KI-Inhalte nutzt Hatchpot Technologien externer Anbieter für künstliche Intelligenz, insbesondere die Anthropic-API. Je nach genutzter Funktion kann der für die Bearbeitung der Anfrage erforderliche Kontext an Anthropic übermittelt werden: dein Wunsch, der gewählte Fokusbereich, Fragen, deine Antworten, Angaben zu durchlaufenen Feldern und weiterer notwendiger Kontext. Wir bemühen uns, nur den Umfang an Informationen zu übermitteln, der für die jeweilige Anfrage erforderlich ist.\n\nAnthropic ist ein eigenständiger Technologieanbieter und verarbeitet die ihm übermittelten Daten gemäß seinen eigenen anwendbaren Bedingungen und Richtlinien. Für die kommerzielle API von Anthropic beträgt die Standardaufbewahrungsfrist für Ein- und Ausgabedaten bis zu 30 Tage nach Erhalt bzw. Erstellung, außer bei anderweitiger Vereinbarung, gesetzlichen Anforderungen oder wenn dies zur Gewährleistung der Sicherheit und Einhaltung der Nutzungsbedingungen erforderlich ist.\n\nDie Übermittlung von Daten an Anthropic stellt eine Weitergabe von Informationen an einen Dritten dar und wird dir durch diese Datenschutzerklärung ausdrücklich offengelegt.';

  @override
  String get legalPrivacySection6Heading => 'Dienstleister';

  @override
  String get legalPrivacySection6Body =>
      'Für den Betrieb der App können wir Technologiedienste Dritter nutzen: Google Firebase (Authentication, Cloud Firestore, Analytics, Crashlytics, App Check, Cloud Functions), die Anthropic-API sowie Apple und/oder Google für die jeweiligen Anmeldedienste und die Abwicklung von Käufen. Diese Anbieter erhalten nur den Umfang an Daten, der für die Erbringung der jeweiligen Dienstleistung erforderlich ist.';

  @override
  String get legalPrivacySection7Heading => 'Internationale Übermittlung';

  @override
  String get legalPrivacySection7Body =>
      'Google Firebase und Anthropic können Informationen außerhalb deines Landes oder des Europäischen Wirtschaftsraums verarbeiten, unter anderem in den USA und anderen Regionen, in denen ihre Dienstleister tätig sind. Sofern die DSGVO oder andere Rechtsvorschriften mit besonderen Anforderungen an die internationale Datenübermittlung anwendbar sind, erfolgt diese Übermittlung auf einer gesetzlich vorgesehenen Rechtsgrundlage und unter Anwendung geeigneter Garantien.';

  @override
  String get legalPrivacySection8Heading => 'Rechtsgrundlagen der Verarbeitung';

  @override
  String get legalPrivacySection8Body =>
      'Je nach konkreter Verarbeitungstätigkeit kann diese auf folgenden Rechtsgrundlagen beruhen: Einwilligung des Nutzers; Erforderlichkeit zur Erfüllung eines Vertrags mit dem Nutzer; Erforderlichkeit zur Erfüllung rechtlicher Pflichten; Erforderlichkeit zum Schutz lebenswichtiger Interessen; berechtigtes Interesse, soweit nach anwendbarem Recht zulässig. Für die Verarbeitung sensibler Informationen gilt, wo gesetzlich vorgeschrieben, eine zusätzliche Rechtsgrundlage.\n\nIn der Ukraine unterliegt die Verarbeitung von Gesundheitsdaten und einiger anderer besonderer Kategorien gesonderten Anforderungen des ukrainischen Gesetzes „Über den Schutz personenbezogener Daten“.';

  @override
  String get legalPrivacySection9Heading => 'Erteilung der Einwilligung';

  @override
  String get legalPrivacySection9Body =>
      'Sofern erforderlich, erteilst du deine Einwilligung durch eine ausdrückliche Handlung, insbesondere durch das Setzen des entsprechenden Kontrollkästchens. Die Einwilligung gilt nicht allein durch die Nutzung der App als erteilt, wenn das Recht eine gesonderte Einwilligung verlangt. Die Einwilligungs-Kontrollkästchen in Hatchpot — unter anderem auf dem Bildschirm mit wichtigen Informationen zur KI und für die Erlaubnis zur Verarbeitung sensibler Informationen — sind nicht vorab aktiviert: Du triffst deine Wahl aktiv selbst.\n\nDu kannst deine Einwilligung in den Fällen und nach dem Verfahren widerrufen, die im anwendbaren Recht vorgesehen sind. Der Widerruf der Einwilligung berührt nicht die Rechtmäßigkeit der bis zum Widerruf erfolgten Verarbeitung.';

  @override
  String get legalPrivacySection10Heading =>
      'Speicherung und Löschung von Daten';

  @override
  String get legalPrivacySection10Body =>
      'Wir speichern personenbezogene Daten nicht länger, als es für die jeweiligen Zwecke erforderlich ist, sofern das Gesetz keine längere Frist vorschreibt. Lokal gespeicherte Informationen werden gelöscht, wenn du die App löschst oder ihre Daten zurücksetzt.\n\nWir löschen mit dem Konto verbundene Daten gemäß dem Löschverfahren (Abschnitt 11); bestimmte Daten können jedoch in Backups, Sicherheitsprotokollen, Finanzunterlagen oder in gesetzlich vorgesehenen Fällen aufbewahrt werden — unter anderem zur Betrugsprävention, Streitbeilegung, Gewährleistung der Sicherheit oder zur Erfüllung von Anforderungen von Apple, Google oder anderen Anbietern.\n\nBereits an Anthropic übermittelte Daten unterliegen den oben beschriebenen geltenden Aufbewahrungsregeln von Anthropic.';

  @override
  String get legalPrivacySection11Heading => 'Löschung des Kontos';

  @override
  String get legalPrivacySection11Body =>
      'Du kannst die Löschung deines Kontos und der damit verbundenen Daten über die entsprechende Funktion in der App beantragen oder eine Anfrage an leadlife.app@gmail.com senden. Nach der Löschung des Kontos können bestimmte Daten in Backups, Sicherheitsprotokollen oder in Fällen, in denen ihre Aufbewahrung gesetzlich vorgeschrieben ist, weiterhin gespeichert bleiben.';

  @override
  String get legalPrivacySection12Heading => 'Rechte der Nutzer';

  @override
  String get legalPrivacySection12Body =>
      'Je nach anwendbarem Recht kannst du das Recht haben auf: Auskunft über deine personenbezogenen Daten; Erhalt einer Kopie deiner Daten; Berichtigung unrichtiger Daten; Löschung deiner Daten; Einschränkung der Verarbeitung; Widerspruch gegen bestimmte Arten der Verarbeitung; Widerruf deiner Einwilligung; Datenübertragbarkeit in einem maschinenlesbaren Format; Beschwerde bei der zuständigen Datenschutzaufsichtsbehörde.\n\nSende deine Anfrage an leadlife.app@gmail.com. Vor Bearbeitung der Anfrage können wir einen angemessenen Nachweis deiner Identität verlangen.';

  @override
  String get legalPrivacySection13Heading => 'Mindestalter';

  @override
  String get legalPrivacySection13Body =>
      'Hatchpot richtet sich ausschließlich an Personen ab 18 Jahren. Hatchpot ist nicht für Kinder und Minderjährige bestimmt. Sollten wir erfahren, dass wir ohne eine angemessene Rechtsgrundlage personenbezogene Daten einer Person unter 18 Jahren erhalten haben, werden wir angemessene Maßnahmen ergreifen, um diese Daten zu löschen.';

  @override
  String get legalPrivacySection14Heading => 'Sicherheit';

  @override
  String get legalPrivacySection14Body =>
      'Wir setzen angemessene technische und organisatorische Maßnahmen ein, um personenbezogene Daten vor unbefugtem Zugriff, Veränderung, Offenlegung, Verlust oder Zerstörung zu schützen. Keine Methode der Datenübertragung oder -speicherung kann absolute Sicherheit garantieren.';

  @override
  String get legalPrivacySection15Heading => 'Änderungen und Kontakt';

  @override
  String get legalPrivacySection15Body =>
      'Wir können diese Datenschutzerklärung aktualisieren, wenn sich die Funktionen von Hatchpot, die genutzten Anbieter oder das anwendbare Recht ändern. Das Datum der letzten Aktualisierung ist am Anfang des Dokuments angegeben; über wesentliche Änderungen informieren wir dich gegebenenfalls zusätzlich über die App oder auf andere angemessene Weise.\n\nBei Fragen zur Verarbeitung personenbezogener Daten schreibe an leadlife.app@gmail.com.\n\nBetreiberin: Einzelunternehmerin Maimur Yevheniia Feliksivna, Ukraine.';

  @override
  String get legalTermsSection1Heading => 'Allgemeine Bestimmungen';

  @override
  String get legalTermsSection1Body =>
      'Zuletzt aktualisiert: 9. September 2026. Diese Nutzungsbedingungen („Bedingungen“) regeln das Verhältnis zwischen dem Nutzer von Hatchpot („Nutzer“, „du“) und der Betreiberin der App — der Einzelunternehmerin Maimur Yevheniia Feliksivna, registriert nach dem Recht der Ukraine (Steuer-Identifikationsnummer 3743203085, Zhukovskoho-Straße 2, Dnipro, 49000, Ukraine).\n\nHatchpot ist die kommerzielle Bezeichnung einer digitalen Anwendung für persönliche Reflexion, Selbsterkenntnis und Unterhaltung.\n\nDurch die Nutzung von Hatchpot, das Erstellen eines Kontos oder den Kauf kostenpflichtiger Funktionen bestätigst du, dass du diese Bedingungen zur Kenntnis genommen hast. Wenn du diesen Bedingungen nicht zustimmst, nutze Hatchpot bitte nicht.';

  @override
  String get legalTermsSection2Heading => 'Zweck von Hatchpot';

  @override
  String get legalTermsSection2Body =>
      'Hatchpot bietet ein digitales Werkzeug für persönliche Reflexion und Selbsterkenntnis, aufgebaut um deinen Wunsch, eine Reise durch Spielfelder, Fragen, Antworten, Tagebucheinträge und KI-Inhalte.\n\nHatchpot ist keine medizinische, psychologische, psychotherapeutische oder psychiatrische Dienstleistung. Die von Hatchpot erstellten Inhalte, einschließlich KI-Inhalte, stellen keine medizinische Beratung, psychologische Beratung, Psychotherapie, psychiatrische Behandlung, Diagnose, Behandlung, Finanzberatung oder Rechtsberatung dar.';

  @override
  String get legalTermsSection3Heading => 'Hinweis zur künstlichen Intelligenz';

  @override
  String get legalTermsSection3Body =>
      'Ein Teil der Inhalte von Hatchpot wird mit Hilfe von Technologien der künstlichen Intelligenz erstellt. KI kann ungenaue, unvollständige oder subjektive Antworten erzeugen. KI-Inhalte sollten nicht als feststehende Tatsache, fachliche Einschätzung oder Vorhersage künftiger Ereignisse verstanden werden. Du bewertest die erhaltenen Inhalte eigenständig und triffst Entscheidungen unter Berücksichtigung deiner eigenen Umstände.';

  @override
  String get legalTermsSection4Heading => 'Alter der Nutzer';

  @override
  String get legalTermsSection4Body =>
      'Hatchpot richtet sich an Nutzer ab 18 Jahren. Durch die Nutzung von Hatchpot bestätigst du, dass du mindestens 18 Jahre alt bist. Wenn du noch nicht 18 Jahre alt bist, erstelle kein Konto, nutze keine kostenpflichtigen Funktionen und gib deine personenbezogenen Daten nicht zur Nutzung von Hatchpot an.';

  @override
  String get legalTermsSection5Heading => 'Konten';

  @override
  String get legalTermsSection5Body =>
      'Hatchpot kann dir die Möglichkeit bieten, die App ohne Registrierung zu nutzen. Du kannst ein Konto per E-Mail, Google, Apple oder auf eine andere unterstützte Weise verknüpfen. Du bist verpflichtet, wahrheitsgemäße Angaben zu machen und die Sicherheit deiner Anmeldedaten zu gewährleisten.';

  @override
  String get legalTermsSection6Heading => 'Deine Inhalte';

  @override
  String get legalTermsSection6Body =>
      'Du behältst die Rechte an Texten, Antworten, Tagebucheinträgen, Wünschen und anderen Inhalten, die du in Hatchpot erstellst oder eingibst („Nutzerinhalte“). Indem du Nutzerinhalte bereitstellst, erlaubst du Hatchpot, in dem für den Betrieb des Dienstes erforderlichen Umfang darauf zuzugreifen, sie zu speichern, zu verarbeiten, zu übermitteln und technisch zu nutzen, um: die Funktionen der App bereitzustellen; die Synchronisierung zu ermöglichen; personalisierte Inhalte zu erstellen; Anfragen an die künstliche Intelligenz zu bearbeiten, unter anderem durch Übermittlung des entsprechenden Kontexts an externe Technologieanbieter, einschließlich Anthropic (siehe Datenschutzerklärung); die von dir angeforderte Analyse zu erstellen; die Sicherheit zu gewährleisten; die technische Wartung durchzuführen.\n\nHatchpot erwirbt kein Eigentum an den Nutzerinhalten, verkauft sie nicht und verwendet sie nicht für Werbe-Targeting. Du bestätigst, dass du berechtigt bist, die von dir bereitgestellten Informationen einzustellen.';

  @override
  String get legalTermsSection7Heading => 'Untersagte Nutzung';

  @override
  String get legalTermsSection7Body =>
      'Du darfst nicht: Hatchpot auf rechtswidrige Weise nutzen; den Betrieb der App stören; versuchen, unbefugten Zugriff auf Systeme zu erlangen; schädlichen Code verbreiten; die App zurückentwickeln, dekompilieren oder disassemblieren, außer soweit dies durch anwendbares Recht ausdrücklich gestattet ist; die App nutzen, um Rechte Dritter zu verletzen oder die Sicherheit anderer Nutzer zu gefährden.';

  @override
  String get legalTermsSection8Heading => 'Krisensituationen';

  @override
  String get legalTermsSection8Body =>
      'Hatchpot ist nicht für die Nutzung in Notfällen bestimmt. Wenn deine Eingabe auf eine unmittelbare Gefahr für Leben, Gesundheit oder Sicherheit von dir oder einer anderen Person hindeutet, kann Hatchpot die übliche Spiel- oder Reflexionsverarbeitung aussetzen und stattdessen vorab hinterlegte Informationen über die Notwendigkeit anzeigen, Notfall- oder professionelle Hilfe in Anspruch zu nehmen.\n\nNutze Hatchpot nicht als Ersatz für Notfall-, medizinische, psychologische oder psychiatrische Hilfe.';

  @override
  String get legalTermsSection9Heading => 'Gewährleistungsausschluss';

  @override
  String get legalTermsSection9Body =>
      'Hatchpot wird „wie besehen“ und „wie verfügbar“ bereitgestellt. Wir gewährleisten nicht, dass die App ununterbrochen funktioniert, frei von technischen Fehlern ist, jederzeit verfügbar ist, mit jedem Gerät vollständig kompatibel ist oder ausschließlich genaue oder passende KI-Inhalte erzeugt.';

  @override
  String get legalTermsSection10Heading => 'Haftungsbeschränkung';

  @override
  String get legalTermsSection10Body =>
      'Soweit nach anwendbarem Recht maximal zulässig, haftet Hatchpot nicht für indirekte, zufällige, besondere oder Folgeschäden, die aus der Nutzung oder der Unmöglichkeit der Nutzung der App entstehen. Du triffst deine Entscheidungen eigenständig auf Grundlage der über Hatchpot erhaltenen Informationen.\n\nKeine Bestimmung dieser Bedingungen schließt die Haftung der Betreiberin aus oder beschränkt sie in Fällen, in denen ein solcher Ausschluss oder eine solche Beschränkung nach anwendbarem Recht unzulässig ist, und keine Bestimmung entzieht dir als Verbraucher die Rechte, die dir durch zwingende Rechtsvorschriften eingeräumt werden — insbesondere durch das ukrainische Recht über Fernabsatzverträge und digitale Inhalte, und, falls du in einem anderen Land wohnst, durch die zwingenden Rechte, die dir das Recht deines Wohnsitzlandes einräumt.';

  @override
  String get legalTermsSection11Heading =>
      'Kostenpflichtige Funktionen und Abonnements';

  @override
  String get legalTermsSection11Body =>
      'Hatchpot kann kostenpflichtige Funktionen, Abonnements und digitale Inhalte anbieten. Die Bedingungen für Zahlung, automatische Verlängerung, Kündigung und Rückerstattung sind in einem gesonderten Dokument, den „Abonnement- und Rückerstattungsbedingungen“, geregelt, das integraler Bestandteil dieser Bedingungen ist.';

  @override
  String get legalTermsSection12Heading => 'Löschung des Kontos';

  @override
  String get legalTermsSection12Body =>
      'Du kannst die Nutzung von Hatchpot beenden und dein Konto auf die in der App vorgesehene Weise löschen. Die Löschung des Kontos befreit die Parteien nicht von Verpflichtungen, die ihrer Natur nach über die Beendigung der Nutzung des Dienstes hinaus bestehen bleiben müssen.';

  @override
  String get legalTermsSection13Heading => 'Aussetzung des Zugangs';

  @override
  String get legalTermsSection13Body =>
      'Wir können den Zugang eines Nutzers vorübergehend einschränken oder beenden, wenn: der Nutzer gegen diese Bedingungen verstößt; die Nutzung des Kontos eine Sicherheitsgefahr darstellt; dies zur Betrugsprävention erforderlich ist; das Gesetz dies vorschreibt; dies zum Schutz der Rechte anderer Nutzer oder der Betreiberin erforderlich ist.';

  @override
  String get legalTermsSection14Heading => 'Anwendbares Recht';

  @override
  String get legalTermsSection14Body =>
      'Diese Bedingungen unterliegen dem Recht der Ukraine. Wenn du Verbraucher bist und in einem anderen Land wohnst, entzieht dir die Wahl des ukrainischen Rechts nicht die Rechte, die dir durch zwingende Rechtsvorschriften deines Wohnsitzlandes eingeräumt werden.';

  @override
  String get legalTermsSection15Heading =>
      'Änderungen der Bedingungen und Kontakt';

  @override
  String get legalTermsSection15Body =>
      'Wir können diese Bedingungen ändern, wenn sich die App, das Geschäftsmodell oder die Rechtslage ändern. Über wesentliche Änderungen informieren wir dich gegebenenfalls über die App oder auf andere angemessene Weise. Die fortgesetzte Nutzung von Hatchpot nach Inkrafttreten der Änderungen bedeutet, dass du den Dienst zu den Bedingungen der aktualisierten Fassung nutzt, soweit das Gesetz dies zulässt.\n\nBetreiberin: Einzelunternehmerin Maimur Yevheniia Feliksivna, Ukraine. E-Mail: leadlife.app@gmail.com.';

  @override
  String get legalSubscriptionSection1Heading => 'Kostenpflichtige Funktionen';

  @override
  String get legalSubscriptionSection1Body =>
      'Einige Funktionen von Hatchpot können kostenpflichtig sein. Vor dem Kauf erhältst du Informationen über den Preis, die Währung, den Abonnementzeitraum, das Vorhandensein einer automatischen Verlängerung, den Umfang der kostenpflichtigen Funktion und die Kündigungsbedingungen.';

  @override
  String get legalSubscriptionSection2Heading =>
      'Abonnement und automatische Verlängerung';

  @override
  String get legalSubscriptionSection2Body =>
      'Wenn es sich bei der gewählten Leistung um ein Abonnement handelt, verlängert es sich automatisch um den jeweiligen Zeitraum, sofern du es nicht vor dem Verlängerungsdatum kündigst. Die Kündigung des Abonnements beendet die weitere automatische Verlängerung, beendet jedoch nicht zwangsläufig den Zugang zum bereits bezahlten Zeitraum.';

  @override
  String get legalSubscriptionSection3Heading => 'Zahlung über App-Stores';

  @override
  String get legalSubscriptionSection3Body =>
      'Zahlungen über iOS erfolgen über den App Store und über Android über Google Play, sofern in der App nichts anderes angegeben ist. Für einzelne Aspekte der Zahlung können die Regeln des jeweiligen Stores gelten.';

  @override
  String get legalSubscriptionSection4Heading => 'Kündigung';

  @override
  String get legalSubscriptionSection4Body =>
      'Du kannst dein Abonnement in den entsprechenden Kontoeinstellungen des App Store oder von Google Play kündigen. Nach der Kündigung behältst du in der Regel den Zugang bis zum Ende des bereits bezahlten Zeitraums, sofern die geltenden Regeln oder Rechtsvorschriften nichts anderes vorsehen.';

  @override
  String get legalSubscriptionSection5Heading => 'Rückerstattung';

  @override
  String get legalSubscriptionSection5Body =>
      'Der Anspruch auf Rückerstattung richtet sich nach dem anwendbaren Recht, den Vertragsbedingungen und den Regeln des jeweiligen App-Stores. Nichts in diesem Dokument schränkt die zwingenden Rechte der Verbraucher ein.\n\nSofern das anwendbare Recht ein Widerrufsrecht für Fernabsatzverträge oder digitale Inhalte vorsieht, bleibt diese Möglichkeit unter Einhaltung der gesetzlich festgelegten Voraussetzungen bestehen. Bei digitalen Inhalten, deren Bereitstellung bereits begonnen hat, kann das Widerrufsrecht in gesetzlich vorgesehenen Fällen eingeschränkt sein, insbesondere wenn du zuvor ausdrücklich zugestimmt hast, dass mit der Bereitstellung der digitalen Inhalte begonnen wird, und über die Folgen dieser Zustimmung informiert wurdest.';

  @override
  String get legalSubscriptionSection6Heading => 'Kostenloser Zeitraum';

  @override
  String get legalSubscriptionSection6Body =>
      'Wenn Hatchpot einen kostenlosen Testzeitraum anbietet, werden dessen Dauer und die Bedingungen für den automatischen Übergang zu einem kostenpflichtigen Abonnement vor Beginn des Testzeitraums angegeben.';

  @override
  String get legalSubscriptionSection7Heading => 'Preisänderung';

  @override
  String get legalSubscriptionSection7Body =>
      'Bei einer Änderung des Preises für einen künftigen Abonnementzeitraum wirst du in der Weise informiert, die durch das anwendbare Recht und die Regeln des jeweiligen Stores vorgesehen ist.';

  @override
  String get legalSubscriptionSection8Heading => 'Fehlerhafte Zahlungen';

  @override
  String get legalSubscriptionSection8Body =>
      'Wenn du glaubst, dass dir irrtümlich ein Betrag abgebucht wurde, wende dich an leadlife.app@gmail.com. Bei Bedarf kannst du auch das Rückerstattungsverfahren des jeweiligen App-Stores in Anspruch nehmen.';

  @override
  String get legalSubscriptionSection9Heading =>
      'Kündigung oder Aussetzung durch den Dienst';

  @override
  String get legalSubscriptionSection9Body =>
      'Wenn wir deinen Zugang aus Gründen auf unserer Seite kündigen oder aussetzen — und nicht, weil du gegen diese Nutzungsbedingungen verstoßen hast —, verlierst du nicht, wofür du bereits bezahlt hast.\n\nWenn du eine einmalige Einzelreise gekauft hast, bleibt der Zugang zu der bereits bezahlten Reise erhalten; ist das technisch nicht möglich, erstatten wir den ungenutzten Anteil anteilig zurück.\n\nWenn du ein aktives Abonnement hast und wir es aus Gründen auf unserer Seite kündigen oder aussetzen, behältst du den Zugang für den Rest deines bereits bezahlten Zeitraums oder erhältst als Ausgleich für die verlorene Zeit eine entsprechende Anzahl zusätzlicher Reisen oder Zugangstage — oder, falls keine der beiden Optionen möglich ist, eine anteilige Rückerstattung.\n\nDies gilt nicht, wenn der Zugang aufgrund eines Verstoßes deinerseits gegen diese Bedingungen, gesetzlicher Vorgaben, Betrugs oder Missbrauchs eingeschränkt wird.';

  @override
  String get aiDisclaimerHeading => 'WICHTIGE INFORMATION';

  @override
  String get aiDisclaimerBody =>
      'Hatchpot dient der Unterhaltung, der persönlichen Reflexion und der Selbsterkenntnis.\n\nHatchpot ist keine medizinische, psychologische, psychotherapeutische oder psychiatrische Hilfe.\n\nDie von der künstlichen Intelligenz erstellten Antworten können Fehler, Ungenauigkeiten oder subjektive Interpretationen enthalten und ersetzen nicht die Beratung durch eine qualifizierte Fachperson.\n\nNutze Hatchpot nicht zur Diagnose oder Behandlung einer Erkrankung oder für Entscheidungen, die eine professionelle medizinische, psychologische, rechtliche oder finanzielle Beratung erfordern.\n\nHatchpot ist nicht für Notfälle bestimmt. Wenn du oder eine andere Person unmittelbar gefährdet ist, wende dich an den Notruf oder an eine entsprechende Fachperson.';

  @override
  String get aiDisclaimerCheckboxLabel =>
      'Ich bin mindestens 18 Jahre alt. Ich habe diese Informationen zur Kenntnis genommen und verstehe, dass Hatchpot keine medizinische, psychologische oder psychiatrische Hilfe ist und dass KI-Antworten ungenau sein können.';

  @override
  String get crisisResourcesHeading => 'Lass uns hier einen Moment innehalten';

  @override
  String get crisisResourcesBody =>
      'Was du geschrieben hast, verdient offenbar mehr, als dieses Spiel bieten kann. Hatchpot ist nicht für Krisensituationen gedacht und ersetzt keine professionelle Hilfe.\n\nBitte wende dich an jemanden, dem du vertraust, an eine Fachperson für psychische Gesundheit oder an den Notdienst in deinem Land. Du musst das nicht allein durchstehen.';

  @override
  String get crisisResourcesBackCta => 'Zurück';

  @override
  String get accountSectionTitle => 'Konto';

  @override
  String get accountAnonymousStatus =>
      'Deine Daten werden derzeit nur auf diesem Gerät gespeichert.';

  @override
  String get accountConnectedStatus =>
      'Deine Daten werden sicher mit deinem Konto synchronisiert.';

  @override
  String get resetPasswordAction => 'Passwort zurücksetzen';

  @override
  String get resetPasswordPrompt =>
      'Gib die E-Mail-Adresse ein, die mit deinem Konto verbunden ist.';

  @override
  String get resetPasswordSent =>
      'Ein Link zum Zurücksetzen des Passworts wurde gesendet.';

  @override
  String get signOutAction => 'Abmelden';

  @override
  String get signOutConfirm =>
      'Deine Cloud-Kopie bleibt sicher. Lokale Daten werden von diesem Gerät entfernt.';

  @override
  String get deleteAccountAction => 'Konto löschen';

  @override
  String get deleteAccountConfirm =>
      'Dadurch werden dein Konto, deine Cloud-Daten, Reise, Tagebuch und Verlauf dauerhaft gelöscht. Dies kann nicht rückgängig gemacht werden.';

  @override
  String get cancelAction => 'Abbrechen';

  @override
  String get confirmAction => 'Bestätigen';

  @override
  String get accountActionError =>
      'Etwas ist schiefgegangen. Prüfe deine Verbindung und versuche es erneut.';
}
