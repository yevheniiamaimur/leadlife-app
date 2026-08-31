// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get languageTitle => 'Мова';

  @override
  String get languageSystem => 'Як на телефоні';

  @override
  String get welcomeGreeting => 'Вітаємо';

  @override
  String get whatsYourWish => 'Яке твоє бажання?';

  @override
  String get presentPerfectPrompt =>
      'Напиши в теперішньому часі — так, ніби воно вже здійснилося.';

  @override
  String get typeItHere => 'Напиши тут…';

  @override
  String get howItWorks => 'Як це працює';

  @override
  String get buildSuccessCode => 'Створити код успіху';

  @override
  String get navHome => 'Головна';

  @override
  String get navJournal => 'Журнал';

  @override
  String get navDiary => 'Щоденник';

  @override
  String get seeExample => 'Переглянути приклад';

  @override
  String get drawerHistory => 'Історія';

  @override
  String get drawerProfile => 'Профіль';

  @override
  String get drawerHelp => 'Допомога';

  @override
  String get drawerAbout => 'Про систему';

  @override
  String get stepOneOfThreeIntention => 'Крок 1 із 3 · Твій намір';

  @override
  String get whatDoYouDesire => 'Чого ти бажаєш?';

  @override
  String get wishFieldHint => 'Я маю… / Я є… / Я відчуваю…';

  @override
  String get beSpecificHonestYou => 'Будь конкретним. Будь чесним. Будь собою.';

  @override
  String get confirmMyDesire => 'Підтвердити моє бажання';

  @override
  String get aiAssistantLinkCta =>
      '✨ Не знаєш, як висловити це словами? Запитай асистента';

  @override
  String get aiAssistantTitle => 'Уточни своє бажання';

  @override
  String get aiAssistantGreeting =>
      'Яке бажання ти береш у цю подорож? Розкажи трохи про нього, і я допоможу висловити його словами.';

  @override
  String get aiAssistantInputHint => 'Напиши відповідь…';

  @override
  String get aiAssistantUseThisWish => 'Використати це бажання';

  @override
  String get aiAssistantError =>
      'Асистент не зміг відповісти. Перевір з’єднання та спробуй ще раз.';

  @override
  String get aiAssistantRetryCta => 'Спробувати ще раз';

  @override
  String onboardingStepOfFive(int step) {
    return 'Крок $step із 5';
  }

  @override
  String get onboardingNameGreeting => 'Привіт. Ми раді, що ти тут.';

  @override
  String get onboardingNamePrompt =>
      'Перш ніж почати, як мені до тебе звертатися?';

  @override
  String get yourNameHint => 'Твоє ім’я';

  @override
  String get continueButton => 'Продовжити';

  @override
  String onboardingBirthdayQuestion(String name) {
    return 'Коли твій день народження, $name?';
  }

  @override
  String get onboardingBirthdaySubtitle =>
      'Це допоможе нам адаптувати подорож саме для тебе.';

  @override
  String get selectYourBirthday => 'Обери дату народження';

  @override
  String get onboardingContactHeading => 'Залишайся на зв’язку.';

  @override
  String get onboardingContactSubtitle =>
      'Як ми можемо зв’язатися з тобою щодо твоєї подорожі?';

  @override
  String get emailHint => 'твоя@пошта.com';

  @override
  String get allowGentleReminders =>
      'Дозволь делікатні нагадування, щоб не збиватися зі свого шляху.';

  @override
  String get onboardingFocusHeading =>
      'Що найбільше займає твої думки\nпрямо зараз?';

  @override
  String get onboardingFocusSubtitle =>
      'Обери сфери, які потребують твоєї уваги.';

  @override
  String get focusRelationships => 'Стосунки';

  @override
  String get focusCareerPurpose => 'Кар’єра й покликання';

  @override
  String get focusHealthEnergy => 'Здоров’я й енергія';

  @override
  String get focusMoneyAbundance => 'Гроші й достаток';

  @override
  String get focusInnerPeace => 'Внутрішній спокій';

  @override
  String get takeABreathIn => 'Вдихни.';

  @override
  String get andOut => 'І видихни.';

  @override
  String onboardingReadyMessage(String name) {
    return '$name, твій шлях ось-ось розпочнеться.';
  }

  @override
  String get letsStart => 'Почати';

  @override
  String get yourPathLabel => 'Твій шлях';

  @override
  String fieldOfTotal(String num, int total) {
    return 'Поле $num із $total';
  }

  @override
  String get myAnswersLabel => 'Мої відповіді';

  @override
  String enterFieldCta(String num) {
    return 'Увійти в поле $num  →';
  }

  @override
  String get answersEmptyState => 'Твої відповіді з’являться тут.';

  @override
  String fieldBadgeNumber(String num) {
    return 'ПОЛЕ $num';
  }

  @override
  String get receiveMyTaskCta => 'Отримати моє завдання  →';

  @override
  String get readyToBeginPathCta => 'Я готова розпочати свій шлях  →';

  @override
  String fieldNumberAndName(String num, String name) {
    return 'ПОЛЕ $num · $name';
  }

  @override
  String get yourAnswerHint => 'Твоя відповідь…';

  @override
  String get taskLabel => 'Завдання';

  @override
  String get saveMyAnswerCta => 'Зберегти мою відповідь';

  @override
  String get saveProgressError =>
      'Не вдалося зберегти прогрес. Перевір пам’ять пристрою.';

  @override
  String get answerReceivedHeading => 'Твою відповідь прийнято.';

  @override
  String walkedThroughField(String fieldName) {
    return 'Поле $fieldName вже позаду. Шлях триває.';
  }

  @override
  String get rollForNextFieldCta => 'Кинути кубик для наступного поля';

  @override
  String get finalTurnLabel => 'Останній хід';

  @override
  String get pathContinuesLabel => 'Шлях триває';

  @override
  String get yourDesireLabel => 'Твоє бажання';

  @override
  String get currentAreaOfActionColon => 'Твоя поточна сфера дії:';

  @override
  String get reachedFinalPathText => 'Ти дістався фінальної частини шляху.';

  @override
  String get youAreNowOnText => 'Тепер ти на';

  @override
  String get finalTurnInstructions =>
      'Усі 32 шляхи пройдено. Ще один останній хід — щоб зрозуміти, де ти зараз.';

  @override
  String onFieldWhereWillPathLead(String num) {
    return 'Ти на полі $num. Куди поведе шлях?';
  }

  @override
  String get fromThisPlaceLabel => 'Із цієї точки';

  @override
  String arrivingAtField(String num) {
    return 'Прибуття · Поле $num';
  }

  @override
  String get wheelTurnsOnceMore => 'Колесо обертається ще раз…';

  @override
  String get pathTurnsEllipsis => 'Шлях повертає…';

  @override
  String get rollingEllipsis => 'Кубик котиться…';

  @override
  String get rollFinalDiceCta => 'Кинути фінальний кубик';

  @override
  String get rollDiceCta => 'Кинути кубик';

  @override
  String get receiveSuccessCodeCta => 'Отримати мій код успіху  →';

  @override
  String enterFieldNameCta(String name) {
    return 'Увійти в $name  →';
  }

  @override
  String get journeyCompleteHeading => 'Твою подорож\nзавершено';

  @override
  String get journeyCompleteSubtext =>
      'Усі 32 шляхи пройдено.\nЦе твій код успіху.';

  @override
  String get yourOriginalDesireLabel => 'Твоє початкове бажання';

  @override
  String get currentAreaOfActionLabel => 'Твоя поточна сфера дії';

  @override
  String get whatYouHaveDiscoveredLabel => 'Твої відкриття';

  @override
  String get preparingPdfCta => 'Підготовка PDF…';

  @override
  String get savePdfCta => 'Зберегти як PDF';

  @override
  String get startNewJourneyCta => 'Почати нову подорож';

  @override
  String get goldenFishClosingLine =>
      'Золота рибка вже в дорозі.\nТвоє завдання — вірити й діяти.';

  @override
  String get yourAnalysisLabel => 'Твій аналіз';

  @override
  String get yourNextDirectionLabel => 'Твій наступний напрям';

  @override
  String get recommendedStepsLabel => 'Рекомендовані наступні кроки';

  @override
  String get todaysIntentionHeading => 'Намір на сьогодні';

  @override
  String get todaysIntentionSubtitle =>
      'Твій результат іде за твоїм наміром — запиши його.';

  @override
  String get diaryIntentionHint => 'Запиши свій намір на сьогодні…';

  @override
  String get saveButton => 'Зберегти';

  @override
  String get checkButton => 'Перевірити';

  @override
  String get diarySaveError => 'Не вдалося зберегти. Перевір пам’ять пристрою.';

  @override
  String get diaryEmptyState => 'Твої наміри з’являться тут.';

  @override
  String get yourJourneysHeading => 'Твої подорожі';

  @override
  String get journeysSubtitle =>
      'Кожне твоє бажання й те, як далеко воно тебе привело.';

  @override
  String get journeysEmptyState => 'Твої подорожі з’являться тут.';

  @override
  String journeyCompletedOn(String date) {
    return 'Завершено · $date';
  }

  @override
  String get journeyInProgress => 'Триває';

  @override
  String journeyFieldsProgress(int count, int total) {
    return '$count / $total полів';
  }

  @override
  String get yourProfileFallback => 'Твій профіль';

  @override
  String get profileNoDataMessage =>
      'Ми ще не маємо твоїх даних — вони додаються під час першого налаштування.';

  @override
  String get profileBirthdayLabel => 'Дата народження';

  @override
  String get profileEmailLabel => 'Електронна пошта';

  @override
  String get profileFocusLabel => 'Фокус';

  @override
  String get helpSubtitle => 'Відповіді на найпоширеніші запитання.';

  @override
  String get helpFaqWhatIsLeadlifeQ => 'Що таке Hatchpot?';

  @override
  String get helpFaqWhatIsLeadlifeA =>
      'Це керована подорож навколо обраного тобою наміру, яка допомагає зрозуміти, чого ти хочеш, змінити внутрішній стан і знайти свій напрям.';

  @override
  String get helpFaqDiceQ => 'Як працює кубик?';

  @override
  String get helpFaqDiceA =>
      'Кинь кубик, щоб дізнатися, чи готовий твій намір. Якщо так — подорож починається. Якщо ні — ти отримаєш підказку, щоб уточнити його й спробувати знову.';

  @override
  String get helpFaqStuckFieldQ => 'Що робити, якщо я застряг на полі?';

  @override
  String get helpFaqStuckFieldA =>
      'Відповідай чесно й кількома словами. Неправильних відповідей немає — кожне поле лише на мить змінює твій фокус.';

  @override
  String get helpFaqSavedIntentionsQ => 'Де зберігаються мої наміри?';

  @override
  String get helpFaqSavedIntentionsA =>
      'Усе, що ти зберігаєш у вкладці «Щоденник», залишається в її історії на твоєму пристрої.';

  @override
  String get helpFaqChangeIntentionQ => 'Чи можу я змінити намір пізніше?';

  @override
  String get helpFaqChangeIntentionA =>
      'Так. У будь-який момент запиши новий намір у вкладці «Щоденник» і звір його зі своїм шляхом.';

  @override
  String get aboutHeading => 'Про систему';

  @override
  String get aboutIntro =>
      'Hatchpot побудовано навколо 32 полів, розташованих як один безперервний шлях.';

  @override
  String get tenLevelsHeading => '10 рівнів реальності';

  @override
  String get tenLevelsBody =>
      'Шари, крізь які рухається твій намір: від конкретних життєвих обставин до глибших станів за ними.';

  @override
  String get lifeStrategiesHeading => '22 життєві стратегії';

  @override
  String get lifeStrategiesBody =>
      'Різні способи мислити, обирати, відчувати й діяти. Тобі не потрібно їх вивчати — ти просто проходиш ті, до яких веде твій шлях.';

  @override
  String get successCodeHeading => 'Твій код успіху';

  @override
  String get successCodeBody =>
      'Наприкінці подорожі твої рішення та усвідомлення об’єднуються в особистий код — не універсальну відповідь, а карту повернення до твого бажання.';

  @override
  String get helpModalExampleLabel => 'Приклад';

  @override
  String get helpModalNamingHeading => 'Як сформулювати бажання';

  @override
  String get helpModalYesLabel => 'ТАК — ТЕПЕРІШНІЙ ЧАС';

  @override
  String get helpModalNoLabel => 'ЩЕ НІ — МАЙБУТНІЙ ЧАС';

  @override
  String get helpModalGoodExample =>
      '«Моє життя побудоване так, що моя робота й моя правда — одне ціле».';

  @override
  String get helpModalBadExample => '«Я хочу створити життя, у якому…»';

  @override
  String get helpModalClosingText =>
      'Говори так, ніби це вже здійснилося.\nШлях відповідає на впевненість.';

  @override
  String get helpModalUnderstandCta => 'Я розумію';

  @override
  String get diceStepTwoOfThree => 'Крок 2 із 3';

  @override
  String get diceScreenTitle => 'Пробудження шляху';

  @override
  String get diceYourIntentionLabel => 'Твій намір';

  @override
  String get diceClueYesTitle => 'Так';

  @override
  String get diceClueYesText => 'Твоє бажання готове. Шлях може починатися.';

  @override
  String get diceClueConnectionsTitle => 'Зв’язки';

  @override
  String get diceClueConnectionsText =>
      'Хто пов’язаний із цим бажанням? Довірся інтуїції. Чи є тут людина, стосунки або співпраця? Додай те, що відчувається доречним.';

  @override
  String get diceClueClarityTitle => 'Ясність';

  @override
  String get diceClueClarityText =>
      'Зроби бажання конкретнішим. Додай деталі, щоб було зрозуміло, чого саме ти хочеш.';

  @override
  String get diceClueExpansionTitle => 'Розширення';

  @override
  String get diceClueExpansionText =>
      'Мисли масштабніше. Розшир горизонт. Як це бажання може стати ще значущішим або натхненнішим?';

  @override
  String get diceClueFreedomTitle => 'Свобода';

  @override
  String get diceClueFreedomText =>
      'Чи містить твоє бажання приховані обмеження? Перефразуй його так, щоб воно давало свободу, можливості й силу замість обмежень.';

  @override
  String get diceClueMeaningTitle => 'Сенс';

  @override
  String get diceClueMeaningText =>
      'Що робить це бажання справді важливим для тебе? Додай свої цінності та глибший сенс.';

  @override
  String get diceClueFeelingsTitle => 'Почуття';

  @override
  String get diceClueFeelingsText =>
      'Що ти хочеш відчувати, коли бажання стане реальністю? Додай ці емоції до бажання — вони важливі.';

  @override
  String get diceClueExpressionTitle => 'Вираження';

  @override
  String get diceClueExpressionText =>
      'Перепиши бажання. Обери слова, які звучать легше, ясніше й природніше. Іноді інше формулювання змінює все.';

  @override
  String get diceUniverseListens => 'Всесвіт слухає…';

  @override
  String get diceRollingLabel => 'Кубик котиться…';

  @override
  String get diceRollLabel => 'Кинути';

  @override
  String get diceRollAgainLabel => 'Кинути ще раз';

  @override
  String get diceEnterFirstFieldCta => 'Увійти в перше поле  →';

  @override
  String get diceRefineMyDesire => 'Уточнити моє бажання';

  @override
  String get paywallHeadlineLine1 => 'Твоє бажання сказало «так».';

  @override
  String get paywallHeadlineLine2 => 'Твій шлях готовий.';

  @override
  String get paywallSubheading => 'Обери, наскільки глибоко хочеш піти.';

  @override
  String get paywallSeeDetails => 'Переглянути деталі';

  @override
  String get paywallChooseThisPathCta => 'Обрати цей шлях';

  @override
  String get accountLinkHeadline => 'Захисти свою подорож';

  @override
  String get accountLinkSubtitle =>
      'Створи обліковий запис, щоб подорож і покупка збереглися навіть після зміни телефону.';

  @override
  String get continueWithApple => 'Продовжити з Apple';

  @override
  String get continueWithGoogle => 'Продовжити з Google';

  @override
  String get continueWithEmail => 'Продовжити з електронною поштою';

  @override
  String get accountLinkPasswordHint => 'Створи пароль';

  @override
  String get createAccountCta => 'Створити обліковий запис';

  @override
  String get accountLinkSkip => 'Можливо, пізніше';

  @override
  String get accountLinkErrorGeneric => 'Щось пішло не так. Спробуй ще раз.';

  @override
  String get paywallTariffOneJourneyTitle => 'Одна подорож';

  @override
  String get paywallTariffOneJourneyTagline => 'Одне бажання, один напрям';

  @override
  String get paywallFeatureQuestionnairesToEndPractices =>
      'Опитування та завершальні практики';

  @override
  String get paywallFeatureFinalDirection => 'Фінальний напрям';

  @override
  String get paywallFeaturePersonalJournal => 'Особистий журнал';

  @override
  String get paywallTariffLeadlifePassTitle => 'Hatchpot Pass';

  @override
  String get paywallTariffLeadlifePassTagline => 'Заглиблюйся будь-коли';

  @override
  String get paywallFeatureUnlimitedJourneys => 'Необмежені подорожі';

  @override
  String get paywallFeatureFullJourneyHistory => 'Повна історія подорожей';

  @override
  String get paywallFeatureNewPractices => 'Нові практики';

  @override
  String get awakenedStepThreeOfThree => 'Крок 3 із 3';

  @override
  String get awakenedFieldOneAwaits => 'Поле 01 чекає';

  @override
  String get awakenedJourneyBegunTitle => 'Твоя подорож\nрозпочалася.';

  @override
  String get awakenedPathRespondBody =>
      'Шлях відповість на твій намір.\nІди ним терпляче.';

  @override
  String get awakenedHeldInLight => 'У світлі';

  @override
  String get awakenedEnterFieldOneCta => 'Увійти в поле 01  →';

  @override
  String howItWorksStepOfTotal(int step, int total) {
    return 'Крок $step із $total';
  }

  @override
  String get howItWorksBeginJourneyCta => 'Розпочати подорож';

  @override
  String get howItWorksContinueCta => 'Продовжити';

  @override
  String get howItWorksSlide1Title => 'Що таке подорож Hatchpot?';

  @override
  String get howItWorksSlide1Para =>
      'Керована подорож, створена, щоб допомогти тобі зрозуміти, чого ти насправді хочеш, змінити внутрішній стан і знайти свій напрям.';

  @override
  String get howItWorksSlide2Title => 'Почни з одного бажання';

  @override
  String get howItWorksSlide2Line1 =>
      'Запиши те, чого хочеш, так, ніби це вже стало правдою.';

  @override
  String get howItWorksSlide2Line2 => 'Зосередься на цьому.';

  @override
  String get howItWorksSlide2Line3 => 'Потім кинь кубик.';

  @override
  String get howItWorksSlide2Para =>
      'У Hatchpot твоя подорож починається з уточнення наміру, з яким ти хочеш працювати зараз.';

  @override
  String get howItWorksSlide3Title => 'Дозволь кубику вести тебе';

  @override
  String get howItWorksSlide3Line1 => 'Якщо випаде 1, твоє бажання готове.';

  @override
  String get howItWorksSlide3Line2 => 'Твоя подорож починається.';

  @override
  String get howItWorksSlide3Para1 =>
      'Якщо випаде інше число, ти отримаєш підказку, яка допоможе уточнити, переформулювати або переосмислити бажання.';

  @override
  String get howItWorksSlide3Para2 =>
      'Ти можеш уточнити його або обрати зовсім інше.';

  @override
  String get howItWorksSlide4Title => 'Тоді починається твоя подорож';

  @override
  String get howItWorksSlide4Para1 =>
      'Обери, як хочеш взаємодіяти з Hatchpot, і почни рухатися своїм унікальним шляхом.';

  @override
  String get howItWorksSlide4Line => 'Система складається з 32 полів:';

  @override
  String get howItWorksSlide4Line1 => '10 рівнів реальності.';

  @override
  String get howItWorksSlide4Line2 => '22 життєві стратегії.';

  @override
  String get howItWorksSlide4Para2 => 'Твій шлях крізь них — унікальний.';

  @override
  String get howItWorksSlide5Title => 'Рухайся своїм шляхом';

  @override
  String get howItWorksSlide5Line1 => 'Кинь кубик.';

  @override
  String get howItWorksSlide5Line2 => 'Увійди в поле.';

  @override
  String get howItWorksSlide5Line3 =>
      'Дай відповідь на одне запитання або виконай просте завдання.';

  @override
  String get howItWorksSlide5Para1 =>
      'Більшість взаємодій займають менше хвилини.';

  @override
  String get howItWorksSlide5Para2 =>
      'Кожне поле змінює твій фокус і допомагає поглянути на бажання з іншої точки зору.';

  @override
  String get howItWorksSlide6Title => '22 стратегії. Різні способи рухатися.';

  @override
  String get howItWorksSlide6Para1 =>
      'Ти проходиш різні життєві стратегії — способи мислити, обирати, відчувати й діяти.';

  @override
  String get howItWorksSlide6Para2 =>
      'Тобі не потрібно вивчати систему. Просто йди своїм шляхом.';

  @override
  String get howItWorksSlide6RichTextBefore =>
      'Хочеш зрозуміти її будову? Відкрий ';

  @override
  String get howItWorksSlide6RichTextAfter => ' «Про систему» в меню.';

  @override
  String get howItWorksSlide7Title => 'Твій код успіху';

  @override
  String get howItWorksSlide7Para1 =>
      'Наприкінці подорожі твої відповіді поєднуються.';

  @override
  String get howItWorksSlide7Line1 => 'Твої рішення.';

  @override
  String get howItWorksSlide7Line2 => 'Твої усвідомлення.';

  @override
  String get howItWorksSlide7Line3 => 'Твій напрям.';

  @override
  String get howItWorksSlide7Para2 =>
      'Hatchpot перетворює їх на твій особистий код успіху — карту повернення до твого бажання.';

  @override
  String get howItWorksSlide7Para3 => 'Не універсальна відповідь.';

  @override
  String get howItWorksSlide7Para4 =>
      'Твій шлях, створений із твоїх відповідей.';

  @override
  String get field01Name => 'Світло';

  @override
  String get field01Subtitle => 'Бажання';

  @override
  String get field01Intro =>
      'У Hatchpot Світло — це символічний початок, енергія, яка вже присутня у твоїй ідеї.\n\nБажання, яке ти записала, відображає щось справді важливе для тебе. Нехай його цінність підтримає тебе на початку шляху.';

  @override
  String get field01Task => 'Яке бажання ти береш у цю подорож?';

  @override
  String get field02Name => 'Зв’язок';

  @override
  String get field02Subtitle => 'Ініціатива';

  @override
  String get field02Intro =>
      'Кожна ідея починається з іскри.\n\nРозвиток починається, коли ти ділишся нею зі світом.\nКожне бажання має початок.\nЗгадай, коли ця мрія вперше з’явилася у твоєму житті.';

  @override
  String get field02Task =>
      'Коли це бажання вперше з’явилося у твоєму житті?\n\nЗ ким ти можеш поділитися ним сьогодні, щоб підтримати його здійснення?';

  @override
  String get field03Name => 'Форма';

  @override
  String get field03Subtitle => 'Бачення';

  @override
  String get field03Intro =>
      'Бажання стає реальним, коли набуває чіткої форми.\nУяви, як виглядає успіх для тебе.';

  @override
  String get field03Task => 'Як виглядає успіх для тебе?';

  @override
  String get field04Name => 'Масштаб';

  @override
  String get field04Subtitle => 'Внесок';

  @override
  String get field04Intro =>
      'Бажанню потрібна структура, здатна утримувати його енергію та дії.\n\nЦе поле символічно пов’язане з Юпітером, масштабом, розширенням і добротою.';

  @override
  String get field04Task =>
      'Чому для світу цінно, щоб твоє бажання здійснилося? Напиши стільки пунктів, скільки відчуваєш.\n\nЯ даю світу __________, і світ приймає мене та дає мені можливості й підтримку.';

  @override
  String get field05Name => 'Обмеження';

  @override
  String get field05Subtitle => 'Стійкість';

  @override
  String get field05Intro =>
      'Перешкоди — нормальний етап будь-якого становлення.\n\nПоглянь іще раз на те, що стоїть на твоєму шляху: можливо, воно вже показує силу, яка зростає в тобі.';

  @override
  String get field05Task =>
      'Що зараз здається тобі обмеженням? Якої позитивної якості чи поведінки воно тебе навчає?';

  @override
  String get field06Name => 'Цінності';

  @override
  String get field06Subtitle => 'Автентичність';

  @override
  String get field06Intro =>
      'Твоє бажання відображає частину тебе, яка готова проявитися.\n\nПобач, ким ти стаєш для себе і світу, коли воно здійснюється, і яка цінність стоїть за ним. Це поле також відображає внутрішню дитину та любов.';

  @override
  String get field06Task =>
      'Яку частину тебе відображає це бажання? Ким ти стаєш для себе і світу, коли воно здійснюється? Яка цінність стоїть за ним?\n\nЯ визнаю себе __________ і використовую ці свої якості для реалізації задуманого.';

  @override
  String get field06CodeInstruction =>
      'Впиши у формулу якості, які ти готова й хочеш проявляти у своєму житті.';

  @override
  String get field07Name => 'Почуття';

  @override
  String get field07Subtitle => 'Емоційна усвідомленість';

  @override
  String get field07Intro =>
      'Це поле показує емоційний вимір твого запиту. Емоції — це знаки. Якщо їх не придушувати, а прожити, енергія починає йти в потрібне русло.\n\nЦе поле працює як фільтр готовності: воно показує, які стани зараз заважають руху, а які відкривають шлях.';

  @override
  String get field07Task =>
      'Які емоції ти найчастіше проживаєш саме у зв’язку зі своїм запитом? Чи є емоція або повторюваний емоційний цикл, у якому ти ніби застрягаєш? Чим зазвичай викликані такі стани?\n\nЯ відпускаю __________ і даю енергії йти на реалізацію свого запиту.';

  @override
  String get field08Name => 'Мислення';

  @override
  String get field08Subtitle => 'Ясність';

  @override
  String get field08Intro =>
      'Це поле показує, які думки й установки стоять навколо твого запиту. Одні переконання підтримують рух, інші можуть непомітно обмежувати проявлення.\n\nКоли ти бачиш їх ясно, з’являється можливість обрати новий напрям.';

  @override
  String get field08Task =>
      'Що ти насправді думаєш про свій запит? Які установки або переконання можуть заважати його реалізації?\n\nЯ трансформую обмежувальні переконання у свободу проявлення.';

  @override
  String get field09Name => 'Підсвідомість';

  @override
  String get field09Subtitle => 'Уява';

  @override
  String get field09Intro =>
      'Підсвідомість зберігає в собі всі минулі події та досвіди, а також майбутні ймовірності.\n\nЧерез це поле ми налаштуємося на бажану гілку ймовірності.';

  @override
  String get field09Task =>
      'Уяви реалізацію свого запиту від серця. Яку картинку ти бачиш? Опиши її тезисно: що відбувається, де ти перебуваєш, що відчуваєш і що вже стало реальним.';

  @override
  String get field10Name => 'Реальність';

  @override
  String get field10Subtitle => 'Дія';

  @override
  String get field10Intro =>
      'Це поле про реальність і фізичний світ. Тут запит починає переходити з ідеї, почуття й образу в конкретні дії.\n\nЯкщо твій запит пов’язаний із матерією, грошима, тілом або видимим результатом, це поле особливо важливе.';

  @override
  String get field10Task =>
      'Напиши 10 дій, які, на твій погляд, допоможуть реалізувати твій запит. Постарайся, щоб більшість із них можна було зробити вже сьогодні, мінімум половину.';

  @override
  String get field11Name => 'Можливість';

  @override
  String get field11Subtitle => 'Довіра';

  @override
  String get field11Intro => 'У кожному бажанні є можливість його здійснення.';

  @override
  String get field11Task =>
      'Чи справді ти віриш, що твоє бажання можливе? Якщо так, чи можеш довіритися процесу?';

  @override
  String get field12Name => 'Воля';

  @override
  String get field12Subtitle => 'Винахідливість';

  @override
  String get field12Intro => 'Твоя воля — твій найпотужніший ресурс.';

  @override
  String get field12Task => 'Які ресурси ти вже маєш для здійснення бажання?';

  @override
  String get field13Name => 'Інтуїція';

  @override
  String get field13Subtitle => 'Внутрішня тиша';

  @override
  String get field13Intro => 'Твій внутрішній голос завжди знає шлях.';

  @override
  String get field13Task => 'Що твій внутрішній голос говорить про це бажання?';

  @override
  String get field14Name => 'Творення';

  @override
  String get field14Subtitle => 'Творчість';

  @override
  String get field14Intro =>
      'Кожна реальність починається як можливість.\n\nТворення — це міст між ідеєю та її втіленням.\n\nТворення перетворює можливості на реальність.\n\nЩодня ти щось створюєш своїми діями, енергією та увагою.';

  @override
  String get field14Task =>
      'Як це бажання може набути своєї першої форми?\n\nЩо ти вже створюєш у своєму житті?';

  @override
  String get field15Name => 'Сила';

  @override
  String get field15Subtitle => 'Управління';

  @override
  String get field15Intro =>
      'Сила починається зі структури.\n\nУправляти можна лише тим, що має структуру.\n\nТе, чим можна управляти, можна покращити.';

  @override
  String get field15Task =>
      'Чим тобі потрібно управляти, щоб наблизитися до мети?\n\nЯ створюю структуру в __________, щоб побудувати __________.';

  @override
  String get field16Name => 'Знання';

  @override
  String get field16Subtitle => 'Досвід';

  @override
  String get field16Intro =>
      'Знання стає цінним, коли ти його використовуєш.\n\nСправжня мудрість з’являється через дію.\n\nПотрібне знання може показати наступний крок.';

  @override
  String get field16Task =>
      'Чи маєш ти вже достатньо знань для досягнення мети?\n\nЯкщо так, які знання допоможуть?\n\nЯкщо ні, де можна знайти потрібні знання?\n\nЗнання, яке допоможе мені рухатися вперед, — __________.\n\nЯ можу отримати нові знання від __________.';

  @override
  String get field17Name => 'Вибір';

  @override
  String get field17Subtitle => 'Довіра до себе';

  @override
  String get field17Intro =>
      'Кожен вибір формує людину, якою ти стаєш.\n\nКоли ти обираєш те, що справді твоє, то впевнено рухаєшся вперед.\n\nТвоє серце вже знає, що відчувається правдивим.\n\nДовірся собі достатньо, щоб обрати це.';

  @override
  String get field17Task =>
      'Що відчувається справді правильним для тебе?\n\nЯ обираю __________, тому що це моє.';

  @override
  String get field18Name => 'Рух';

  @override
  String get field18Subtitle => 'Дисципліна';

  @override
  String get field18Intro =>
      'Твоє бажання потребує дисципліни.\nМаленькі послідовні кроки наближають тебе до бажаного.';

  @override
  String get field18Task =>
      'Яку дію ти можеш дисципліновано виконувати, щоб досягти бажання?\n\nЯк довго ти можеш продовжувати?\n\nЯ регулярно робитиму __________ протягом __________, щоб наблизитися до бажання.';

  @override
  String get field19Name => 'Правда';

  @override
  String get field19Subtitle => 'Чесність';

  @override
  String get field19Intro =>
      'Рух уперед починається з того, щоб побачити речі такими, якими вони є.\n\nПравда створює основу для змін.';

  @override
  String get field19Task =>
      'Що є правдою для тебе прямо зараз?\n\nМоя правда зараз — __________.\n\nЩоб наблизитися до бажання, я маю намір покращити __________.';

  @override
  String get field20Name => 'Призначення';

  @override
  String get field20Subtitle => 'Сміливість';

  @override
  String get field20Intro =>
      'Значуща мета приносить користь не лише тобі.\n\nКоли бажання служить більшій меті, воно стає сильнішим.\n\nЩоб іти власним шляхом, потрібна сміливість.\n\nЩо значущіша мета, то більше людей вона може надихнути й підтримати.';

  @override
  String get field20Task =>
      'Як твоє бажання може принести користь іншим?\n\nЗапиши 10 способів, якими воно може допомогти іншим людям.';

  @override
  String get field21Name => 'Зміна';

  @override
  String get field21Subtitle => 'Гнучкість';

  @override
  String get field21Intro =>
      'Життя продовжує рухатися.\n\nТи не можеш контролювати кожну зміну, але можеш навчитися рухатися разом із нею.';

  @override
  String get field21Task =>
      'Що починає розгортатися у твоєму житті зараз?\n\nЯ відпускаю контроль над __________ і дозволяю життю рухатися.\n\nЯ помічаю, що __________ починає розгортатися в моєму житті.\n\nЯ починаю робити __________, щоб розвивати __________.';

  @override
  String get field22Name => 'Баланс';

  @override
  String get field22Subtitle => 'Самовладання';

  @override
  String get field22Intro =>
      'Справжня сила — не примус.\n\nЦе здатність врівноважити силу й м’якість.';

  @override
  String get field22Task =>
      'Де у своєму житті ти можеш перестати тиснути й почати відповідати збалансовано?\n\nДе можна використати менше сили й більше рівноваги?\n\nМоя сила в тому, що я можу __________ без примусу, контролю чи боротьби.';

  @override
  String get field23Name => 'Спостереження';

  @override
  String get field23Subtitle => 'Усвідомленість';

  @override
  String get field23Intro =>
      'Іноді пауза — це теж крок уперед.\n\nСпостерігаючи, ти починаєш бачити речі інакше.';

  @override
  String get field23Task =>
      'Що ти зараз намагаєшся змусити статися?\n\nЗупинися на хвилину й поспостерігай.\n\nЩо тепер ти бачиш інакше?\n\nСповільнюючись, я усвідомлюю __________.';

  @override
  String get field24Name => 'Трансформація';

  @override
  String get field24Subtitle => 'Здатність змінюватися';

  @override
  String get field24Intro =>
      'Розвиток потребує змін.\n\nЩоб створити щось нове, можливо, доведеться відпустити щось старе.';

  @override
  String get field24Task =>
      'За що ти тримаєшся, хоча воно більше не служить тобі?\n\nЩо має змінитися в тобі, щоб досягти мети?\n\nЯ відпускаю __________, щоб стати собою.';

  @override
  String get field25Name => 'Намір';

  @override
  String get field25Subtitle => 'Фокус';

  @override
  String get field25Intro =>
      'Те, на чому ти зосереджуєшся, зростає.\n\nЧіткий намір дає бажанню напрям і сенс.';

  @override
  String get field25Task =>
      'Чому це бажання важливе для тебе?\n\nЦе бажання важливе для мене, тому що __________.';

  @override
  String get field26Name => 'Прив’язаність';

  @override
  String get field26Subtitle => 'Чесність із собою';

  @override
  String get field26Intro =>
      'Не все, за що ти тримаєшся, справді твоє.\n\nІноді страх маскується під бажання.';

  @override
  String get field26Task =>
      'Що ти робиш, бо боїшся цього не зробити?\n\nОдна мета, яка більше не відчувається справді моєю, — __________.\n\nОдин намір, який досі відчувається правдивим, — __________.';

  @override
  String get field27Name => 'Розпад';

  @override
  String get field27Subtitle => 'Стійкість';

  @override
  String get field27Intro =>
      'Іноді старе має зруйнуватися, перш ніж ти зможеш рухатися вперед.\n\nКоли думки й почуття діють разом, твій шлях стає яснішим.';

  @override
  String get field27Task =>
      'Що ти думаєш про своє бажання?\n\nЩо ти відчуваєш щодо нього?\n\nЧи є між ними суперечність?\n\nЯкщо так, спробуй поєднати свої думки й почуття.\n\nЩо мають почути твої почуття?\n\nЩо мають зрозуміти твої думки?';

  @override
  String get field28Name => 'Спрямування';

  @override
  String get field28Subtitle => 'Узгодженість із потоком';

  @override
  String get field28Intro =>
      'Життя тече через отримання й віддавання.\n\nЩо більше ти відкриваєшся цьому потоку, то легше йти своїм шляхом.';

  @override
  String get field28Task =>
      'Куди веде тебе це бажання?\n\nМоє бажання веде мене до __________.\n\nЯ обираю бути собою й довіряти потоку, навіть якщо __________.';

  @override
  String get field29Name => 'Відчуття';

  @override
  String get field29Subtitle => 'Чутливість';

  @override
  String get field29Intro =>
      'Не все можна побачити чітко.\n\nІноді єдиний шлях уперед — довіритися своїм відчуттям.';

  @override
  String get field29Task =>
      'Із чим ти боїшся зіткнутися?\n\nЯ зустрічаюся з __________.\n\nЯ зустрічаю тінь, яка __________.';

  @override
  String get field30Name => 'Інтеграція';

  @override
  String get field30Subtitle => 'Впізнавання';

  @override
  String get field30Intro =>
      'Ти починаєш упізнавати себе в новій реальності.\n\nЩо чіткіше бачиш, ким стаєш, то легше інтегрувати цю ідентичність у своє життя.';

  @override
  String get field30Task =>
      'Хто ти, коли це бажання вже є частиною твого життя?\n\nХто ти, коли це бажання вже здійснилося?\n\nЯ людина, яка __________.\n\nЯ впізнаю себе як людину, яка __________.';

  @override
  String get field31Name => 'Пробудження';

  @override
  String get field31Subtitle => 'Дія';

  @override
  String get field31Intro =>
      'Ти вже знаєш достатньо.\n\nПитання вже не в тому, чого ти хочеш. Питання в тому, чи настав час діяти.';

  @override
  String get field31Task =>
      'Яку дію ти більше не можеш відкладати?\n\nЯку дію, як ти знаєш, потрібно зробити?\n\nЯ починаю діяти й __________.\n\nЯ прокидаюся й починаю діяти, __________.';

  @override
  String get field32Name => 'Цілісність';

  @override
  String get field32Subtitle => 'Відвага';

  @override
  String get field32Intro =>
      'Цілісність починається, коли ти збираєш усі частини себе.\n\nСтрах іще може залишатися, але час зробити наступний крок.';

  @override
  String get field32Task =>
      'Які страхи досі стоять між тобою й наступним кроком?\n\nЯ визнаю ці страхи й усе одно обираю рухатися до __________.';

  @override
  String get pdfJourneyReportLabel => 'Звіт про твою подорож';

  @override
  String get pdfJourneyCompleteHeading => 'Твою подорож\nзавершено';

  @override
  String get pdfWalkedAllPathsLine => 'Усі 32 шляхи пройдено.';

  @override
  String get pdfYourDesireLabel => 'ТВОЄ БАЖАННЯ';

  @override
  String get pdfCurrentAreaOfActionLabel => 'ТВОЯ ПОТОЧНА СФЕРА ДІЇ';

  @override
  String get pdfWhatYouHaveDiscoveredLabel => 'ЩО ТИ ВІДКРИВ';

  @override
  String get pdfNoAnswersRecorded => 'Відповідей не записано.';

  @override
  String get privacyPolicyLabel => 'Політика конфіденційності';

  @override
  String get termsOfUseLabel => 'Умови використання';

  @override
  String get legalConsentPrefix => 'Я погоджуюся з ';

  @override
  String get legalConsentAnd => ' та ';

  @override
  String get legalConsentSuffix => '.';

  @override
  String get legalPrivacySection1Heading => 'Огляд';

  @override
  String get legalPrivacySection1Body =>
      'Останнє оновлення: 20 серпня 2026 року. Ця політика пояснює, яку інформацію Hatchpot («ми») обробляє під час використання застосунку Hatchpot, навіщо ми це робимо, де вона може зберігатися та які можливості вибору ти маєш.';

  @override
  String get legalPrivacySection2Heading => 'Інформація, яку ми збираємо';

  @override
  String get legalPrivacySection2Body =>
      'Ми обробляємо інформацію, яку ти вирішуєш ввести: ім’я, дату народження, електронну адресу, сферу фокусу, бажання, відповіді, записи щоденника та історію подорожей. Якщо ти створюєш обліковий запис, Firebase Authentication обробляє його ідентифікатор і дані для входу. Ми також обробляємо технічну інформацію та дані про використання, необхідні для безпеки, аналітики й діагностики збоїв, зокрема взаємодії із застосунком, відомості про пристрій та операційну систему, версію застосунку й діагностичні звіти. Ми не просимо вводити дані платіжної картки.';

  @override
  String get legalPrivacySection3Heading => 'Як ми використовуємо інформацію';

  @override
  String get legalPrivacySection3Body =>
      'Ми використовуємо цю інформацію, щоб надавати й персоналізувати твою подорож, створювати персоналізований ШІ-вміст полів і фінальний аналіз, зберігати та синхронізувати прогрес після створення облікового запису, надсилати запитані нагадування, захищати сервіс, діагностувати збої, розуміти використання функцій, покращувати застосунок і керувати обліковим записом.';

  @override
  String get legalPrivacySection4Heading => 'Де зберігаються твої дані';

  @override
  String get legalPrivacySection4Body =>
      'Спочатку інформація зберігається на твоєму пристрої. Якщо ти використовуєш лише анонімний обліковий запис, прогрес і щоденник не синхронізуються з іншим пристроєм. Якщо прив’язати обліковий запис, профіль, поточний прогрес, відповіді, щоденник та історія подорожей зберігатимуться в Google Firebase Cloud Firestore для відновлення на іншому пристрої. Дані облікового запису обробляє Firebase Authentication, а дані про використання та збої можуть обробляти Firebase Analytics і Firebase Crashlytics. Для персоналізації гри ми надсилаємо бажання та обрану сферу фокусу до API Anthropic. Для фінального аналізу надсилаємо бажання, запитання й відповіді з відвіданих полів. Anthropic повертає створений текст гри та аналіз. За стандартною політикою зберігання API Anthropic вхідні й вихідні дані зазвичай видаляються із систем протягом 30 днів, за винятком обмежених випадків, пов’язаних із безпекою, запобіганням зловживанням і вимогами законодавства.';

  @override
  String get legalPrivacySection5Heading => 'Передавання інформації';

  @override
  String get legalPrivacySection5Body =>
      'Ми не продаємо особисту інформацію та не використовуємо рекламні мережі. Ми передаємо інформацію лише настільки, наскільки це потрібно для роботи застосунку: Google LLC — для хмарного сховища Firebase, автентифікації, аналітики, звітів про збої, App Check і Cloud Functions; Anthropic, PBC та пов’язаним компаніям — для генерації й аналізу за допомогою ШІ; Apple або Google — якщо ти обираєш їхній сервіс входу. Ці постачальники обробляють інформацію відповідно до власних умов і зобов’язань щодо конфіденційності.';

  @override
  String get legalPrivacySection6Heading => 'Міжнародне передавання';

  @override
  String get legalPrivacySection6Body =>
      'Google Firebase і Anthropic можуть обробляти інформацію за межами твоєї країни або Європейської економічної зони, зокрема у США та інших регіонах, де працюють їхні постачальники послуг. Коли це потрібно, передавання здійснюється із застосуванням юридично визнаних гарантій.';

  @override
  String get legalPrivacySection7Heading => 'Зберігання та видалення даних';

  @override
  String get legalPrivacySection7Body =>
      'Локальна інформація видаляється, коли ти видаляєш застосунок або очищуєш його дані. Якщо обліковий запис прив’язано, у застосунку можна видалити його та пов’язані профіль Firebase, прогрес, щоденник й історію подорожей. Дані, уже надіслані Anthropic, обробляються за правилами зберігання API Anthropic, описаними вище. Деякі обмежені записи можуть зберігатися, якщо це потрібно для безпеки, запобігання шахрайству, вирішення спорів або виконання закону. Також можна написати нам на leadlife.app@gmail.com.';

  @override
  String get legalPrivacySection8Heading => 'Твої права';

  @override
  String get legalPrivacySection8Body =>
      'Залежно від місця проживання ти можеш мати право на доступ, виправлення, видалення або експорт даних, заперечення проти певної обробки чи її обмеження, а також відкликання згоди, якщо обробка ґрунтується на ній. Напиши на leadlife.app@gmail.com. Перед виконанням запиту нам може знадобитися підтвердити твою особу.';

  @override
  String get legalPrivacySection9Heading => 'Діти';

  @override
  String get legalPrivacySection9Body =>
      'Hatchpot не призначений для дітей віком до 16 років, і ми свідомо не збираємо їхню інформацію.';

  @override
  String get legalPrivacySection10Heading => 'Зміни та контакти';

  @override
  String get legalPrivacySection10Body =>
      'Ми можемо оновлювати цю політику, коли змінюється застосунок або вимоги законодавства. Дату оновлення буде вказано вище, а суттєві зміни буде відображено в застосунку. Запитання можна надсилати на leadlife.app@gmail.com.';

  @override
  String get legalTermsSection1Heading => 'Прийняття умов';

  @override
  String get legalTermsSection1Body =>
      'Останнє оновлення: [заповнити перед публікацією]. Використовуючи Hatchpot, ти погоджуєшся з цими Умовами. Якщо ти не погоджуєшся, не використовуй застосунок.';

  @override
  String get legalTermsSection2Heading => 'Сервіс';

  @override
  String get legalTermsSection2Body =>
      'Hatchpot — це застосунок для особистого розвитку й саморефлексії, побудований навколо твого бажання, подорожі через 32 поля та делікатних нагадувань. Вміст надається лише для розваги й саморефлексії та не є професійною медичною, психологічною, фінансовою чи юридичною порадою.';

  @override
  String get legalTermsSection3Heading => 'Вимоги до користувача';

  @override
  String get legalTermsSection3Body =>
      'Для використання Hatchpot тобі має бути щонайменше 16 років або ти маєш досягти віку цифрової згоди у своїй країні. Ти погоджуєшся надавати точну інформацію.';

  @override
  String get legalTermsSection4Heading => 'Облікові записи';

  @override
  String get legalTermsSection4Body =>
      'За замовчуванням застосунок працює анонімно. За бажанням можна прив’язати обліковий запис Google, Apple або електронну пошту й пароль, щоб перенести подорож і покупки на новий пристрій. Ти відповідаєш за безпеку своїх даних для входу.';

  @override
  String get legalTermsSection5Heading => 'Підписки та платежі';

  @override
  String get legalTermsSection5Body =>
      'Платні плани — це підписки з автоматичним поновленням, оплата яких здійснюється через App Store або Google Play. Ціну й умови поновлення показано до покупки. Підписку можна будь-коли скасувати в налаштуваннях облікового запису App Store або Google Play; скасування набуде чинності наприкінці поточного розрахункового періоду. Повернення коштів здійснюють Apple або Google за власними правилами.';

  @override
  String get legalTermsSection6Heading => 'Твій вміст';

  @override
  String get legalTermsSection6Body =>
      'Те, що ти пишеш у застосунку, належить тобі. Ти надаєш нам обмежений дозвіл зберігати й обробляти це виключно для надання сервісу.';

  @override
  String get legalTermsSection7Heading => 'Прийнятне використання';

  @override
  String get legalTermsSection7Body =>
      'Ти погоджуєшся не використовувати застосунок незаконно, не втручатися в його роботу та не здійснювати зворотне проєктування, декомпіляцію або дизасемблювання.';

  @override
  String get legalTermsSection8Heading =>
      'Відмова від гарантій і відповідальність';

  @override
  String get legalTermsSection8Body =>
      'Hatchpot надається «як є», без гарантій будь-якого виду. У максимально дозволених законом межах ми не відповідаємо за непрямі, випадкові або наслідкові збитки, що виникли через використання застосунку.';

  @override
  String get legalTermsSection9Heading => 'Припинення';

  @override
  String get legalTermsSection9Body =>
      'Ми можемо призупинити або припинити доступ до застосунку в разі порушення цих умов. Ти можеш будь-коли припинити використання та видалити обліковий запис.';

  @override
  String get legalTermsSection10Heading => 'Застосовне право та зміни';

  @override
  String get legalTermsSection10Body =>
      'Ці умови регулюються законодавством [заповнити юрисдикцію]. Ми можемо час від часу оновлювати їх; суттєві зміни буде відображено в застосунку. Є запитання? Напиши на [електронна адреса підтримки].';

  @override
  String get accountSectionTitle => 'Обліковий запис';

  @override
  String get accountAnonymousStatus =>
      'Зараз твої дані зберігаються лише на цьому пристрої.';

  @override
  String get accountConnectedStatus =>
      'Твої дані безпечно синхронізуються з обліковим записом.';

  @override
  String get resetPasswordAction => 'Скинути пароль';

  @override
  String get resetPasswordPrompt =>
      'Введи електронну адресу, пов’язану з обліковим записом.';

  @override
  String get resetPasswordSent => 'Посилання для скидання пароля надіслано.';

  @override
  String get signOutAction => 'Вийти';

  @override
  String get signOutConfirm =>
      'Твоя хмарна копія залишиться в безпеці. Локальні дані буде видалено з цього пристрою.';

  @override
  String get deleteAccountAction => 'Видалити обліковий запис';

  @override
  String get deleteAccountConfirm =>
      'Це назавжди видалить обліковий запис, хмарні дані, подорож, щоденник та історію. Скасувати цю дію неможливо.';

  @override
  String get cancelAction => 'Скасувати';

  @override
  String get confirmAction => 'Підтвердити';

  @override
  String get accountActionError =>
      'Щось пішло не так. Перевір з’єднання та спробуй ще раз.';
}
