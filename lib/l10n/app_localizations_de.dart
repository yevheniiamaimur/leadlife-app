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
  String get aiAssistantLinkCta =>
      '✨ Du findest nicht die richtigen Worte? Frag den Assistenten';

  @override
  String get aiAssistantTitle => 'Kläre deinen Wunsch';

  @override
  String get aiAssistantGreeting =>
      'Welchen Wunsch bringst du auf diese Reise mit? Erzähl mir ein wenig davon, und ich helfe dir, ihn in Worte zu fassen.';

  @override
  String get aiAssistantInputHint => 'Schreibe deine Antwort…';

  @override
  String get aiAssistantUseThisWish => 'Diesen Wunsch verwenden';

  @override
  String get aiAssistantError =>
      'Der Assistent konnte nicht antworten. Prüfe deine Verbindung und versuche es erneut.';

  @override
  String get aiAssistantRetryCta => 'Erneut versuchen';

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
  String howItWorksStepOfTotal(int step, int total) {
    return 'Schritt $step von $total';
  }

  @override
  String get howItWorksBeginJourneyCta => 'Deine Reise beginnen';

  @override
  String get howItWorksContinueCta => 'Weiter';

  @override
  String get howItWorksSlide1Title => 'Was ist die Hatchpot-Reise?';

  @override
  String get howItWorksSlide1Para =>
      'Eine geführte Reise, die dir hilft zu klären, was du wirklich willst, deinen inneren Zustand zu verändern und deine Richtung zu finden.';

  @override
  String get howItWorksSlide2Title => 'Beginne mit einem Wunsch';

  @override
  String get howItWorksSlide2Line1 =>
      'Schreibe auf, was du möchtest, als wäre es bereits wahr.';

  @override
  String get howItWorksSlide2Line2 => 'Richte deinen Fokus darauf.';

  @override
  String get howItWorksSlide2Line3 => 'Dann würfle.';

  @override
  String get howItWorksSlide2Para =>
      'Bei Hatchpot beginnt deine Reise damit, die Absicht zu klären, mit der du jetzt arbeiten möchtest.';

  @override
  String get howItWorksSlide3Title => 'Lass dich vom Würfel führen';

  @override
  String get howItWorksSlide3Line1 =>
      'Wenn du eine 1 würfelst, ist dein Wunsch bereit.';

  @override
  String get howItWorksSlide3Line2 => 'Deine Reise beginnt.';

  @override
  String get howItWorksSlide3Para1 =>
      'Bei einer anderen Zahl erhältst du einen Hinweis, der dir hilft, deinen Wunsch zu klären, neu zu formulieren oder zu überdenken.';

  @override
  String get howItWorksSlide3Para2 =>
      'Du kannst ihn verfeinern – oder einen völlig anderen wählen.';

  @override
  String get howItWorksSlide4Title => 'Dann beginnt deine Reise';

  @override
  String get howItWorksSlide4Para1 =>
      'Wähle, wie du mit Hatchpot interagieren möchtest, und beginne deinen einzigartigen Weg.';

  @override
  String get howItWorksSlide4Line => 'Das System besteht aus 32 Feldern:';

  @override
  String get howItWorksSlide4Line1 => '10 Ebenen der Wirklichkeit.';

  @override
  String get howItWorksSlide4Line2 => '22 Lebensstrategien.';

  @override
  String get howItWorksSlide4Para2 => 'Dein Weg durch sie ist einzigartig.';

  @override
  String get howItWorksSlide5Title => 'Bewege dich auf deinem Weg';

  @override
  String get howItWorksSlide5Line1 => 'Würfle.';

  @override
  String get howItWorksSlide5Line2 => 'Betritt ein Feld.';

  @override
  String get howItWorksSlide5Line3 =>
      'Beantworte eine Frage oder erledige eine einfache Aufgabe.';

  @override
  String get howItWorksSlide5Para1 =>
      'Die meisten Schritte dauern weniger als eine Minute.';

  @override
  String get howItWorksSlide5Para2 =>
      'Jedes Feld verschiebt deinen Fokus und hilft dir, deinen Wunsch aus einer anderen Perspektive zu betrachten.';

  @override
  String get howItWorksSlide6Title =>
      '22 Strategien. Verschiedene Arten voranzugehen.';

  @override
  String get howItWorksSlide6Para1 =>
      'Du bewegst dich durch verschiedene Lebensstrategien – Arten zu denken, zu wählen, zu fühlen und zu handeln.';

  @override
  String get howItWorksSlide6Para2 =>
      'Du musst das System nicht studieren. Folge einfach deinem Weg.';

  @override
  String get howItWorksSlide6RichTextBefore =>
      'Du möchtest die Struktur dahinter verstehen? Öffne ';

  @override
  String get howItWorksSlide6RichTextAfter => ' Über das System im Menü.';

  @override
  String get howItWorksSlide7Title => 'Dein Erfolgscode';

  @override
  String get howItWorksSlide7Para1 =>
      'Am Ende deiner Reise fügen sich deine Antworten zusammen.';

  @override
  String get howItWorksSlide7Line1 => 'Deine Entscheidungen.';

  @override
  String get howItWorksSlide7Line2 => 'Deine Erkenntnisse.';

  @override
  String get howItWorksSlide7Line3 => 'Deine Richtung.';

  @override
  String get howItWorksSlide7Para2 =>
      'Hatchpot verwandelt sie in deinen persönlichen Erfolgscode – eine Karte zurück zu deinem Wunsch.';

  @override
  String get howItWorksSlide7Para3 => 'Keine allgemeingültige Antwort.';

  @override
  String get howItWorksSlide7Para4 =>
      'Dein Weg, aufgebaut aus deinen eigenen Antworten.';

  @override
  String get field01Name => 'Licht';

  @override
  String get field01Subtitle => 'Wunsch';

  @override
  String get field01Intro =>
      'Jede Reise beginnt mit einem Wunsch.\n\nDein Wunsch ist wichtig, weil er auf etwas hinweist, das für dein Wachstum bedeutsam ist.';

  @override
  String get field01Task => 'Welchen Wunsch bringst du auf diese Reise mit?';

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
      'Jedes Ziel bewirkt etwas.\nÜberlege, welchen Wert dein Wunsch anderen Menschen bringt.';

  @override
  String get field04Task => 'Wer profitiert davon, wenn du ihn verwirklichst?';

  @override
  String get field05Name => 'Begrenzung';

  @override
  String get field05Subtitle => 'Widerstandskraft';

  @override
  String get field05Intro =>
      'Begrenzungen sind ein natürlicher Teil jeder Reise.\n\nSie helfen dir, die nötige Kraft zu entwickeln, um dein Ziel zu erreichen.';

  @override
  String get field05Task =>
      'Welche körperlichen, emotionalen, finanziellen, sozialen oder anderen Begrenzungen hast du gerade? Wie helfen sie dir zu wachsen?';

  @override
  String get field06Name => 'Werte';

  @override
  String get field06Subtitle => 'Authentizität';

  @override
  String get field06Intro =>
      'Deine Werte leiten deine Entscheidungen.\n\nDie stärksten Wünsche sind oft mit dem verbunden, was dir schon immer wichtig war.';

  @override
  String get field06Task =>
      'Was war dir schon immer wichtig?\n\nSpiegelt dieser Wunsch diese Werte wider?\n\nWelche Eigenschaften waren für dich als Kind ganz natürlich?\n\nWelche davon sind heute noch in dir lebendig?\n\nWie könnten sie dir helfen, deinen Wunsch zu verwirklichen?';

  @override
  String get field07Name => 'Gefühle';

  @override
  String get field07Subtitle => 'Emotionales Bewusstsein';

  @override
  String get field07Intro =>
      'Gefühle sind Signale, keine Hindernisse.\n\nSie zeigen dir, was deinen Wunsch unterstützt und was deine Aufmerksamkeit braucht.';

  @override
  String get field07Task =>
      'Welche Gefühle erlebst du am häufigsten? Wie beeinflussen sie deinen Wunsch?';

  @override
  String get field08Name => 'Denken';

  @override
  String get field08Subtitle => 'Klarheit';

  @override
  String get field08Intro =>
      'Jeder Wunsch wird von manchen Überzeugungen unterstützt und von anderen begrenzt.\n\nJe klarer du sie erkennst, desto freier kannst du deinen Weg wählen.';

  @override
  String get field08Task =>
      'Welche Überzeugungen unterstützen dich und welche halten dich zurück?';

  @override
  String get field09Name => 'Unterbewusstsein';

  @override
  String get field09Subtitle => 'Vorstellungskraft';

  @override
  String get field09Intro =>
      'Dein Unterbewusstsein trägt den Bauplan deines gewünschten Lebens.';

  @override
  String get field09Task =>
      'Wie würde dein Leben aussehen, wenn dein Wunsch bereits wahr wäre? Beschreibe es.';

  @override
  String get field10Name => 'Wirklichkeit';

  @override
  String get field10Subtitle => 'Handlung';

  @override
  String get field10Intro =>
      'Die Wirklichkeit wird durch deine Handlungen geformt.';

  @override
  String get field10Task =>
      'Schreibe 10 Dinge auf, die du heute tun kannst, um deinem Ziel näherzukommen.';

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
  String get legalConsentPrefix => 'Ich stimme den ';

  @override
  String get legalConsentAnd => ' und der ';

  @override
  String get legalConsentSuffix => ' zu.';

  @override
  String get legalPrivacySection1Heading => 'Überblick';

  @override
  String get legalPrivacySection1Body =>
      'Zuletzt aktualisiert: 20. August 2026. Diese Erklärung erläutert, welche Informationen Hatchpot („wir“) bei der Nutzung der Hatchpot-App verarbeitet, warum wir sie verarbeiten, wo sie gespeichert werden können und welche Wahlmöglichkeiten du hast.';

  @override
  String get legalPrivacySection2Heading => 'Welche Informationen wir erheben';

  @override
  String get legalPrivacySection2Body =>
      'Wir verarbeiten die Informationen, die du eingibst: deinen Namen, dein Geburtsdatum, deine E-Mail-Adresse, deinen Fokusbereich, Wünsche, Antworten, Tagebucheinträge und deinen Reiseverlauf. Wenn du ein Konto erstellst, verarbeitet Firebase Authentication deine Konto-ID und Anmeldedaten. Außerdem verarbeiten wir technische und Nutzungsdaten, die für Sicherheit, Analysen und Fehlerdiagnose erforderlich sind, etwa Interaktionen mit der App, Geräte- und Betriebssysteminformationen, App-Version und Diagnoseberichte. Wir fordern dich nicht zur Eingabe von Zahlungskartendaten auf.';

  @override
  String get legalPrivacySection3Heading =>
      'Wie wir deine Informationen verwenden';

  @override
  String get legalPrivacySection3Body =>
      'Wir verwenden diese Informationen, um deine Reise bereitzustellen und zu personalisieren, KI-personalisierte Feldinhalte und eine Abschlussanalyse zu erstellen, deinen Fortschritt nach der Kontoerstellung zu speichern und zu synchronisieren, gewünschte Erinnerungen bereitzustellen, den Dienst zu schützen, Fehler zu diagnostizieren, die Nutzung von Funktionen zu verstehen, die App zu verbessern und dein Konto zu verwalten.';

  @override
  String get legalPrivacySection4Heading => 'Wo deine Daten gespeichert werden';

  @override
  String get legalPrivacySection4Body =>
      'Deine Informationen werden zunächst auf deinem Gerät gespeichert. Wenn du nur ein anonymes Konto verwendest, werden Fortschritt und Tagebuch nicht mit einem anderen Gerät synchronisiert. Wenn du ein Konto verknüpfst, werden dein Profil, aktueller Fortschritt, Antworten, Tagebuch und Reiseverlauf in Google Firebase Cloud Firestore gespeichert, damit sie auf einem anderen Gerät wiederhergestellt werden können. Kontodaten werden von Firebase Authentication verarbeitet; Nutzungs- und Absturzdaten können von Firebase Analytics und Firebase Crashlytics verarbeitet werden. Zur Personalisierung des Spiels senden wir deinen Wunsch und den gewählten Fokusbereich an die Anthropic-API. Für die Abschlussanalyse senden wir deinen Wunsch sowie Fragen und Antworten der besuchten Felder. Anthropic gibt generierte Spieltexte und Analysen zurück. Nach der standardmäßigen Aufbewahrungsrichtlinie der Anthropic-API werden Ein- und Ausgaben normalerweise innerhalb von 30 Tagen aus den Systemen gelöscht, vorbehaltlich begrenzter Ausnahmen für Sicherheit, Missbrauchsprävention und gesetzliche Pflichten.';

  @override
  String get legalPrivacySection5Heading => 'Weitergabe';

  @override
  String get legalPrivacySection5Body =>
      'Wir verkaufen deine personenbezogenen Daten nicht und verwenden keine Werbenetzwerke. Wir geben Informationen nur weiter, soweit dies für den Betrieb der App erforderlich ist: an Google LLC für Firebase-Cloudspeicher, Authentifizierung, Analysen, Absturzberichte, App Check und Cloud Functions; an Anthropic, PBC und verbundene Unternehmen für KI-Generierung und -Analyse; sowie an Apple oder Google, wenn du deren Anmeldedienst nutzt. Diese Anbieter verarbeiten Informationen nach ihren jeweils geltenden Bedingungen und Datenschutzverpflichtungen.';

  @override
  String get legalPrivacySection6Heading => 'Internationale Übermittlungen';

  @override
  String get legalPrivacySection6Body =>
      'Google Firebase und Anthropic können Informationen außerhalb deines Landes oder des Europäischen Wirtschaftsraums verarbeiten, einschließlich in den USA und anderen Regionen, in denen ihre Dienstleister tätig sind. Soweit erforderlich, erfolgen Übermittlungen auf Grundlage gesetzlich anerkannter Garantien.';

  @override
  String get legalPrivacySection7Heading => 'Aufbewahrung und Löschung';

  @override
  String get legalPrivacySection7Body =>
      'Lokal gespeicherte Informationen werden entfernt, wenn du die App löschst oder ihre Daten zurücksetzt. Wenn du ein Konto verknüpft hast, kannst du das Konto und das zugehörige Firebase-Profil, den Fortschritt, das Tagebuch und den Reiseverlauf in der App löschen. Bereits an Anthropic gesendete Daten werden nach den oben beschriebenen Aufbewahrungsregeln der Anthropic-API behandelt. Bestimmte begrenzte Aufzeichnungen können aufbewahrt werden, wenn dies für Sicherheit, Betrugsprävention, Streitbeilegung oder gesetzliche Pflichten erforderlich ist. Du kannst uns auch unter leadlife.app@gmail.com kontaktieren.';

  @override
  String get legalPrivacySection8Heading => 'Deine Rechte';

  @override
  String get legalPrivacySection8Body =>
      'Je nach Wohnort hast du möglicherweise das Recht, auf deine Daten zuzugreifen, sie zu berichtigen, zu löschen oder zu exportieren, bestimmten Verarbeitungen zu widersprechen oder sie einzuschränken und eine Einwilligung zu widerrufen, wenn die Verarbeitung darauf beruht. Kontaktiere leadlife.app@gmail.com. Vor der Bearbeitung können wir deine Identität überprüfen müssen.';

  @override
  String get legalPrivacySection9Heading => 'Kinder';

  @override
  String get legalPrivacySection9Body =>
      'Hatchpot richtet sich nicht an Kinder unter 16 Jahren, und wir erheben nicht wissentlich Informationen von ihnen.';

  @override
  String get legalPrivacySection10Heading => 'Änderungen und Kontakt';

  @override
  String get legalPrivacySection10Body =>
      'Wir können diese Erklärung aktualisieren, wenn sich die App oder rechtliche Anforderungen ändern. Das Aktualisierungsdatum wird oben angezeigt; wesentliche Änderungen werden in der App berücksichtigt. Fragen kannst du an leadlife.app@gmail.com senden.';

  @override
  String get legalTermsSection1Heading => 'Annahme der Bedingungen';

  @override
  String get legalTermsSection1Body =>
      'Zuletzt aktualisiert: [vor Veröffentlichung ergänzen]. Mit der Nutzung von Hatchpot stimmst du diesen Nutzungsbedingungen zu. Wenn du nicht zustimmst, verwende die App bitte nicht.';

  @override
  String get legalTermsSection2Heading => 'Der Dienst';

  @override
  String get legalTermsSection2Body =>
      'Hatchpot ist eine Anwendung für persönliche Entwicklung und Selbstreflexion, aufgebaut rund um deinen Wunsch, eine Reise durch 32 Felder und sanfte Erinnerungen. Die Inhalte dienen ausschließlich der Unterhaltung und Selbstreflexion und stellen keine professionelle medizinische, psychologische, finanzielle oder rechtliche Beratung dar.';

  @override
  String get legalTermsSection3Heading => 'Voraussetzungen';

  @override
  String get legalTermsSection3Body =>
      'Du musst mindestens 16 Jahre alt sein oder das in deinem Land geltende Alter für digitale Einwilligung erreicht haben, um Hatchpot zu nutzen, und verpflichtest dich zu korrekten Angaben.';

  @override
  String get legalTermsSection4Heading => 'Konten';

  @override
  String get legalTermsSection4Body =>
      'Die App funktioniert standardmäßig anonym. Du kannst optional ein Konto mit Google, Apple oder E-Mail und Passwort verknüpfen, damit deine Reise und Käufe auf ein neues Gerät übertragen werden. Du bist für die Sicherheit deiner Zugangsdaten verantwortlich.';

  @override
  String get legalTermsSection5Heading => 'Abonnements und Zahlungen';

  @override
  String get legalTermsSection5Body =>
      'Kostenpflichtige Tarife sind automatisch verlängernde Abonnements, die über den App Store oder Google Play abgerechnet werden. Preis und Verlängerungsbedingungen werden vor dem Kauf angezeigt. Du kannst jederzeit in deinen App-Store- oder Google-Play-Kontoeinstellungen kündigen; die Kündigung gilt zum Ende des aktuellen Abrechnungszeitraums. Rückerstattungen werden von Apple oder Google nach deren Richtlinien bearbeitet.';

  @override
  String get legalTermsSection6Heading => 'Deine Inhalte';

  @override
  String get legalTermsSection6Body =>
      'Was du in der App schreibst, gehört dir. Du erteilst uns eine begrenzte Erlaubnis, es ausschließlich zur Bereitstellung des Dienstes zu speichern und zu verarbeiten.';

  @override
  String get legalTermsSection7Heading => 'Zulässige Nutzung';

  @override
  String get legalTermsSection7Body =>
      'Du verpflichtest dich, die App nicht rechtswidrig zu nutzen, ihren Betrieb nicht zu stören und sie nicht zurückzuentwickeln, zu dekompilieren oder zu disassemblieren.';

  @override
  String get legalTermsSection8Heading => 'Haftungsausschluss';

  @override
  String get legalTermsSection8Body =>
      'Hatchpot wird ohne Gewährleistung jeglicher Art im vorhandenen Zustand bereitgestellt. Soweit gesetzlich zulässig, haften wir nicht für indirekte, beiläufige oder Folgeschäden aus deiner Nutzung der App.';

  @override
  String get legalTermsSection9Heading => 'Beendigung';

  @override
  String get legalTermsSection9Body =>
      'Bei Verstößen gegen diese Bedingungen können wir den Zugang zur App aussetzen oder beenden. Du kannst die Nutzung jederzeit einstellen und dein Konto löschen.';

  @override
  String get legalTermsSection10Heading => 'Anwendbares Recht und Änderungen';

  @override
  String get legalTermsSection10Body =>
      'Diese Bedingungen unterliegen dem Recht von [Gerichtsstand ergänzen]. Wir können sie gelegentlich aktualisieren; wesentliche Änderungen werden in der App berücksichtigt. Fragen? Schreib an [Support-E-Mail].';

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
