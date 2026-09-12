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
  String get contactAuthorTitle => 'Зв’язатися з авторкою гри';

  @override
  String get contactAuthorSubtitle =>
      'Якщо є питання, відгук або потрібна допомога, можна написати напряму.';

  @override
  String get contactAuthorEmailCta => 'Написати на пошту';

  @override
  String get contactAuthorInstagramCta => 'Відкрити Instagram';

  @override
  String get contactAuthorEmailCopied =>
      'Пошту скопійовано: leadlife.app@gmail.com';

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
  String get allowSensitiveDataProcessing =>
      'Дозволити обробку наданої мною інформації, яка може стосуватися даних про здоров’я чи інших чутливих персональних даних, для роботи відповідних функцій Hatchpot.';

  @override
  String get comebackReminderTitle => 'Твій шлях чекає';

  @override
  String get comebackReminderBody =>
      'Ти залишив(-ла) подорож на півдорозі. Повертайся, коли будеш готовий(-а), і продовжуй.';

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
  String get purchasePendingMessage =>
      'Твоя покупка очікує підтвердження. Ми відкриємо доступ до Hatchpot Plus, щойно вона підтвердиться.';

  @override
  String get purchaseErrorGeneric =>
      'Щось пішло не так з покупкою. Спробуй ще раз.';

  @override
  String get restorePurchasesAction => 'Відновити покупки';

  @override
  String get restorePurchasesSuccess => 'Твої покупки відновлено.';

  @override
  String get hatchpotPlusActiveStatus => 'Hatchpot Plus активний.';

  @override
  String get hatchpotPlusInactiveStatus => 'Hatchpot Plus не активний.';

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
  String get howItWorksBeginJourneyCta => 'Розпочати подорож';

  @override
  String get howItWorksContinueCta => 'Продовжити';

  @override
  String get howItWorksSlide1Title => 'Структурований шлях до себе';

  @override
  String get howItWorksSlide1Body =>
      'Hatchpot — система саморефлексії, яка з’єднує тебе з твоїм внутрішнім «я» через гру, символ та інтуїцію.';

  @override
  String get howItWorksSlide2Title => 'Кубик чує твоє несвідоме';

  @override
  String get howItWorksSlide2Body =>
      'Напиши своє бажання і кинь кубик.\n\nВипала 1 — воно готове, і подорож починається.\n\nБудь-яке інше число — підказка, яка допоможе уточнити або змінити бажання.';

  @override
  String get howItWorksSlide3Title => '32 поля. Твій особистий шлях';

  @override
  String get howItWorksSlide3Body =>
      'Ти пройдеш через 10 рівнів реальності та 22 життєві стратегії — різні способи думати, відчувати та діяти.\n\nКинь кубик, дай відповідь на одне запитання, рухайся далі. Більшість кроків займають менше хвилини.';

  @override
  String get howItWorksSlide4Title => 'Збери свій код успіху';

  @override
  String get howItWorksSlide4Body =>
      'Кожна відповідь стає частиною особистого коду — карти, яка приведе тебе назад до твого бажання.\n\nНе універсальна відповідь. Лише твій шлях.';

  @override
  String get field01Name => 'Світло';

  @override
  String get field01Subtitle => 'Бажання';

  @override
  String get field01Intro =>
      'У Hatchpot Світло — це символічний початок, енергія, яка вже присутня у твоїй ідеї.\n\nБажання, яке ти записала, відображає щось справді важливе для тебе. Нехай його цінність підтримає тебе на початку шляху.';

  @override
  String get field01Task => '';

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
      'Бажанню потрібна структура, здатна утримувати його енергію та дії.\n\nЦе поле пов’язане з масштабом, розширенням і добротою.';

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
  String get subscriptionTermsLabel => 'Умови підписки та повернення коштів';

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
      'Останнє оновлення: 9 вересня 2026 року. Ця Політика конфіденційності пояснює, яку інформацію обробляє Hatchpot, з якою метою, кому вона може передаватися, де може зберігатися та які права має користувач.\n\nHatchpot («Hatchpot», «ми», «нас» або «наш сервіс») — цифровий застосунок для особистої рефлексії, самопізнання та розваги з використанням технологій штучного інтелекту.\n\nОператором Hatchpot є фізична особа-підприємець Маймур Євгенія Феліксівна, зареєстрована відповідно до законодавства України.\n\nРеєстраційні та контактні дані: РНОКПП 3743203085; адреса реєстрації: вул. Жуковського, 2, м. Дніпро, 49000, Україна; електронна пошта: leadlife.app@gmail.com.';

  @override
  String get legalPrivacySection2Heading => 'Яку інформацію ми обробляємо';

  @override
  String get legalPrivacySection2Body =>
      'Інформація, яку ти надаєш самостійно — залежно від використаних функцій це може включати: ім’я або обране ім’я; дату народження; електронну адресу; обрану сферу фокусу; твоє бажання чи намір; відповіді на запитання; записи щоденника; історію подорожі застосунком; зміст запитів до функцій штучного інтелекту; іншу інформацію, яку ти вказуєш у вільному тексті.\n\nДані облікового запису — якщо ти створюєш або підключаєш обліковий запис, відповідні дані обробляє Firebase Authentication: ідентифікатор облікового запису, електронна адреса та технічні дані, потрібні для автентифікації.\n\nТехнічна інформація — тип і модель пристрою, операційна система, версія застосунку, технічні ідентифікатори, відомості про взаємодію із застосунком, діагностичні відомості та відомості про збої. Firebase Analytics і Firebase Crashlytics можуть використовуватися для аналітики й діагностики. Ми не просимо вводити дані платіжної картки.';

  @override
  String get legalPrivacySection3Heading => 'Чутлива інформація';

  @override
  String get legalPrivacySection3Body =>
      'Деякі твої записи — особливо записи щоденника, відповіді на запитання чи вільний текст — потенційно можуть містити інформацію про здоров’я, психологічний стан, переконання, стосунки чи інші особисті обставини.\n\nМи не вимагаємо від тебе надавати таку інформацію для використання застосунку, однак ти можеш добровільно ввести її у відповідне поле. Якщо ти добровільно надаєш інформацію, що належить до спеціальних категорій персональних даних, вона обробляється лише в обсязі, необхідному для відповідної функції, і на застосовній правовій підставі.\n\nНе вводь у застосунок паролі, платіжні реквізити, номери документів, секретні ключі чи іншу інформацію, розкриття якої може створити для тебе ризик.';

  @override
  String get legalPrivacySection4Heading => 'Мета обробки';

  @override
  String get legalPrivacySection4Body =>
      'Ми використовуємо інформацію лише для конкретних і законних цілей: надання функцій Hatchpot; створення персоналізованого ігрового та рефлексивного вмісту; обробка запитів до функцій штучного інтелекту; формування підсумкового аналізу на твій запит; збереження та синхронізація прогресу; відновлення облікового запису; надсилання запитаних нагадувань; забезпечення безпеки сервісу; запобігання зловживанням і шахрайству; діагностика технічних помилок; аналіз використання функцій; покращення стабільності й функціональності застосунку; виконання юридичних обов’язків; захист прав і законних інтересів користувача та оператора.\n\nМи не продаємо персональні дані користувачів і не використовуємо їх для продажу стороннніх товарів чи послуг через рекламні мережі.';

  @override
  String get legalPrivacySection5Heading => 'Штучний інтелект і Anthropic';

  @override
  String get legalPrivacySection5Body =>
      'Для створення персоналізованого AI-вмісту Hatchpot використовує сторонні технології штучного інтелекту, зокрема API Anthropic. Залежно від використаної функції до Anthropic може передаватися необхідний для виконання запиту контекст: твоє бажання, обрана сфера фокусу, запитання, твої відповіді, відомості про пройдені поля та інший необхідний контекст. Ми прагнемо передавати лише той обсяг інформації, який потрібен для виконання конкретного запиту.\n\nAnthropic є окремим постачальником технологій і обробляє передані йому дані відповідно до власних застосовних умов і політик. Для комерційного API Anthropic стандартний строк зберігання вхідних і вихідних даних становить до 30 днів після отримання чи створення, за винятком випадків іншої домовленості, вимог закону або потреби забезпечення безпеки й дотримання правил використання.\n\nПередавання даних до Anthropic є передаванням інформації третій особі та прямо розкривається тобі цією Політикою.';

  @override
  String get legalPrivacySection6Heading => 'Постачальники послуг';

  @override
  String get legalPrivacySection6Body =>
      'Для роботи застосунку ми можемо використовувати сторонні технологічні сервіси: Google Firebase (Authentication, Cloud Firestore, Analytics, Crashlytics, App Check, Cloud Functions), Anthropic API, а також Apple та/або Google — для відповідних сервісів входу й обробки покупок. Такі постачальники отримують лише той обсяг даних, який потрібен для надання відповідної послуги.';

  @override
  String get legalPrivacySection7Heading => 'Міжнародне передавання';

  @override
  String get legalPrivacySection7Body =>
      'Google Firebase і Anthropic можуть обробляти інформацію за межами твоєї країни або Європейської економічної зони, зокрема у США та інших регіонах, де працюють їхні постачальники послуг. Якщо застосовується GDPR або інше законодавство з особливими вимогами до міжнародного передавання даних, таке передавання здійснюється на передбаченій законом правовій підставі та із застосуванням належних гарантій.';

  @override
  String get legalPrivacySection8Heading => 'Правові підстави обробки';

  @override
  String get legalPrivacySection8Body =>
      'Залежно від конкретної операції обробка може здійснюватися на підставі: згоди користувача; необхідності виконання договору з користувачем; необхідності виконання юридичних обов’язків; необхідності захисту життєво важливих інтересів; законного інтересу, якщо це допускається застосовним законодавством. Для обробки чутливої інформації застосовується додаткова правова підстава, коли цього вимагає закон.\n\nВ Україні обробка даних про здоров’я та деяких інших спеціальних категорій регулюється окремими вимогами Закону України «Про захист персональних даних».';

  @override
  String get legalPrivacySection9Heading => 'Порядок надання згоди';

  @override
  String get legalPrivacySection9Body =>
      'Якщо це потрібно, ти надаєш згоду через явно виражену дію, зокрема встановлення відповідного прапорця. Згода не вважається наданою лише через факт використання застосунку, якщо законодавство вимагає окремої згоди. Прапорці згоди в Hatchpot — зокрема на екрані з важливою інформацією про ШІ та на дозвіл обробки чутливої інформації — не встановлені заздалегідь: ти обираєш активно.\n\nТи можеш відкликати згоду у випадках і порядку, передбачених застосовним законодавством. Відкликання згоди не впливає на законність обробки, здійсненої до відкликання.';

  @override
  String get legalPrivacySection10Heading => 'Зберігання та видалення даних';

  @override
  String get legalPrivacySection10Body =>
      'Ми зберігаємо персональні дані не довше, ніж це потрібно для відповідних цілей, якщо довший строк не передбачено законом. Локальна інформація видаляється, коли ти видаляєш застосунок або очищуєш його дані.\n\nМи видаляємо дані, пов’язані з обліковим записом, відповідно до процедури видалення (розділ 11), однак деякі дані можуть зберігатися в резервних копіях, журналах безпеки, фінансовій документації або у випадках, передбачених законом — зокрема для запобігання шахрайству, вирішення спорів, забезпечення безпеки або виконання вимог Apple, Google чи інших постачальників.\n\nДані, вже надіслані Anthropic, підпорядковуються застосовним правилам зберігання Anthropic, описаним вище.';

  @override
  String get legalPrivacySection11Heading => 'Видалення облікового запису';

  @override
  String get legalPrivacySection11Body =>
      'Ти можеш запросити видалення облікового запису та пов’язаних із ним даних через відповідну функцію в застосунку або надіславши запит на leadlife.app@gmail.com. Після видалення облікового запису деякі дані можуть зберігатися в резервних копіях, журналах безпеки або у випадках, коли їх зберігання вимагається законом.';

  @override
  String get legalPrivacySection12Heading => 'Права користувача';

  @override
  String get legalPrivacySection12Body =>
      'Залежно від застосовного законодавства ти можеш мати право: отримати інформацію про свої персональні дані; отримати копію даних; виправити неточні дані; видалити дані; обмежити обробку; заперечити проти певних видів обробки; відкликати згоду; отримати дані в машиночитному форматі; звернутися зі скаргою до компетентного органу із захисту даних.\n\nЗапит надсилай на leadlife.app@gmail.com. Перед виконанням запиту ми можемо попросити розумне підтвердження особи.';

  @override
  String get legalPrivacySection13Heading => 'Мінімальний вік';

  @override
  String get legalPrivacySection13Body =>
      'Hatchpot призначений лише для осіб, яким виповнилося 18 років. Hatchpot не призначений для дітей та неповнолітніх. Якщо нам стане відомо, що ми отримали персональні дані особи молодше 18 років без належної правової підстави, ми вживемо розумних заходів для видалення таких даних.';

  @override
  String get legalPrivacySection14Heading => 'Безпека';

  @override
  String get legalPrivacySection14Body =>
      'Ми застосовуємо розумні технічні й організаційні заходи для захисту персональних даних від несанкціонованого доступу, зміни, розкриття, втрати чи знищення. Жоден спосіб передавання чи зберігання даних не може гарантувати абсолютну безпеку.';

  @override
  String get legalPrivacySection15Heading => 'Зміни та контакти';

  @override
  String get legalPrivacySection15Body =>
      'Ми можемо оновлювати цю Політику, коли змінюється функціональність Hatchpot, використовувані постачальники або застосовне законодавство. Дату останнього оновлення вказано на початку документа; про суттєві зміни ми можемо додатково повідомити через застосунок або в інший розумний спосіб.\n\nЗ питань обробки персональних даних пиши на leadlife.app@gmail.com.\n\nОператор: ФОП Маймур Євгенія Феліксівна, Україна.';

  @override
  String get legalTermsSection1Heading => 'Загальні положення';

  @override
  String get legalTermsSection1Body =>
      'Останнє оновлення: 9 вересня 2026 року. Ці Умови використання («Умови») регулюють відносини між користувачем Hatchpot («користувач», «ти») та оператором застосунку — фізичною особою-підприємцем Маймур Євгенія Феліксівна, зареєстрованою відповідно до законодавства України (РНОКПП 3743203085, вул. Жуковського, 2, м. Дніпро, 49000, Україна).\n\nHatchpot — комерційна назва цифрового застосунку, призначеного для особистої рефлексії, самопізнання та розваги.\n\nВикористовуючи Hatchpot, створюючи обліковий запис або купуючи платні функції, ти підтверджуєш, що ознайомився(-лася) з цими Умовами. Якщо ти не погоджуєшся з Умовами, не використовуй Hatchpot.';

  @override
  String get legalTermsSection2Heading => 'Призначення Hatchpot';

  @override
  String get legalTermsSection2Body =>
      'Hatchpot надає цифровий інструмент для особистої рефлексії й самопізнання, побудований навколо твого бажання, подорожі через ігрові поля, запитань, відповідей, записів щоденника та ШІ-вмісту.\n\nHatchpot не є медичною, психологічною, психотерапевтичною чи психіатричною послугою. Вміст, який створює Hatchpot, зокрема ШІ-вміст, не є медичною консультацією, психологічною консультацією, психотерапією, психіатричною допомогою, діагнозом, лікуванням, фінансовою рекомендацією чи юридичною консультацією.';

  @override
  String get legalTermsSection3Heading =>
      'Застереження щодо штучного інтелекту';

  @override
  String get legalTermsSection3Body =>
      'Частину вмісту Hatchpot створено з використанням технологій штучного інтелекту. ШІ може створювати неточні, неповні або суб’єктивні відповіді. ШІ-вміст не слід сприймати як встановлений факт, професійний висновок чи прогноз майбутніх подій. Ти самостійно оцінюєш отриманий вміст і приймаєш рішення з урахуванням власних обставин.';

  @override
  String get legalTermsSection4Heading => 'Вік користувача';

  @override
  String get legalTermsSection4Body =>
      'Hatchpot призначений для користувачів віком від 18 років. Використовуючи Hatchpot, ти підтверджуєш, що тобі виповнилося 18 років. Якщо тобі не виповнилося 18 років, не створюй обліковий запис, не використовуй платні функції та не надавай свої персональні дані для використання Hatchpot.';

  @override
  String get legalTermsSection5Heading => 'Облікові записи';

  @override
  String get legalTermsSection5Body =>
      'Hatchpot може надавати можливість використовувати застосунок без реєстрації. Ти можеш підключити обліковий запис через електронну пошту, Google, Apple або інший підтримуваний спосіб. Ти зобов’язаний(-а) надавати достовірну інформацію та забезпечувати безпеку своїх даних для входу.';

  @override
  String get legalTermsSection6Heading => 'Твій вміст';

  @override
  String get legalTermsSection6Body =>
      'Ти зберігаєш права на текст, відповіді, записи щоденника, бажання та інший вміст, який ти створюєш чи вводиш у Hatchpot («Користувацький вміст»). Надаючи Користувацький вміст, ти дозволяєш Hatchpot у необхідному для роботи сервісу обсязі отримувати до нього доступ, зберігати, обробляти, передавати й технічно використовувати його для: надання функцій застосунку; синхронізації; формування персоналізованого вмісту; обробки запитів штучного інтелекту, зокрема шляхом передавання відповідного контексту стороннім постачальникам технологій, включно з Anthropic (див. Політику конфіденційності); формування запитаного тобою аналізу; забезпечення безпеки; технічного обслуговування.\n\nHatchpot не набуває права власності на Користувацький вміст, не продає його і не використовує для рекламного таргетування. Ти підтверджуєш, що маєш право надавати розміщувану тобою інформацію.';

  @override
  String get legalTermsSection7Heading => 'Заборонене використання';

  @override
  String get legalTermsSection7Body =>
      'Ти не повинен(на): використовувати Hatchpot незаконним способом; порушувати роботу застосунку; намагатися отримати несанкціонований доступ до систем; поширювати шкідливий код; здійснювати зворотне проєктування, декомпіляцію чи дизасемблювання, крім випадків, прямо дозволених застосовним законом; використовувати застосунок для порушення прав третіх осіб чи створення загрози безпеці інших користувачів.';

  @override
  String get legalTermsSection8Heading => 'Кризові ситуації';

  @override
  String get legalTermsSection8Body =>
      'Hatchpot не призначений для використання в надзвичайних ситуаціях. Якщо твоє повідомлення вказує на безпосередню загрозу життю, здоров’ю чи безпеці тобі або іншій особі, Hatchpot може призупинити звичайну ігрову чи рефлексивну обробку та натомість показати заздалегідь підготовлену інформацію про необхідність звернення по екстрену чи професійну допомогу.\n\nНе використовуй Hatchpot замість екстреної, медичної, психологічної чи психіатричної допомоги.';

  @override
  String get legalTermsSection9Heading => 'Відмова від гарантій';

  @override
  String get legalTermsSection9Body =>
      'Hatchpot надається «як є» та «у доступному вигляді». Ми не гарантуємо, що застосунок працюватиме безперервно, не міститиме технічних помилок, буде доступний у будь-який час, буде повністю сумісний із кожним пристроєм або створюватиме виключно точний чи доречний ШІ-вміст.';

  @override
  String get legalTermsSection10Heading => 'Обмеження відповідальності';

  @override
  String get legalTermsSection10Body =>
      'У максимально дозволеній застосовним законодавством межі Hatchpot не несе відповідальності за непрямі, випадкові, спеціальні чи наслідкові збитки, що виникли внаслідок використання або неможливості використання застосунку. Ти самостійно приймаєш рішення на підставі інформації, отриманої через Hatchpot.\n\nЖодне положення цих Умов не виключає й не обмежує відповідальність оператора у випадках, коли таке виключення чи обмеження заборонено застосовним законодавством, і не позбавляє споживача прав, наданих йому імперативними нормами законодавства — зокрема законодавства України про дистанційні договори та цифровий контент, а якщо ти проживаєш в іншій країні — обов’язкових прав, наданих тобі законодавством країни твого проживання.';

  @override
  String get legalTermsSection11Heading => 'Платні функції та підписки';

  @override
  String get legalTermsSection11Body =>
      'Hatchpot може надавати платні функції, підписки та цифровий контент. Умови оплати, автоматичного поновлення, скасування та повернення коштів визначені в окремому документі «Умови підписки та повернення коштів», який є невіддільною частиною цих Умов.';

  @override
  String get legalTermsSection12Heading => 'Видалення облікового запису';

  @override
  String get legalTermsSection12Body =>
      'Ти можеш припинити використання Hatchpot і видалити обліковий запис у передбаченому застосунком порядку. Видалення облікового запису не звільняє сторони від зобов’язань, які за своєю природою мають зберігатися після припинення використання сервісу.';

  @override
  String get legalTermsSection13Heading => 'Призупинення доступу';

  @override
  String get legalTermsSection13Body =>
      'Ми можемо тимчасово обмежити або припинити доступ користувача, якщо: користувач порушує ці Умови; використання облікового запису створює загрозу безпеці; це потрібно для запобігання шахрайству; цього вимагає закон; це потрібно для захисту прав інших користувачів або оператора.';

  @override
  String get legalTermsSection14Heading => 'Застосовне право';

  @override
  String get legalTermsSection14Body =>
      'Ці Умови регулюються законодавством України. Якщо ти є споживачем і проживаєш в іншій країні, вибір українського права не позбавляє тебе прав, наданих тобі обов’язковими нормами законодавства країни твого проживання.';

  @override
  String get legalTermsSection15Heading => 'Зміни Умов і контакти';

  @override
  String get legalTermsSection15Body =>
      'Ми можемо змінювати ці Умови в разі зміни застосунку, бізнес-моделі чи законодавства. Про суттєві зміни ми можемо повідомити через застосунок або в інший розумний спосіб. Продовження використання Hatchpot після набрання змінами чинності означає використання сервісу на умовах оновлених Умов у межах, які допускає закон.\n\nОператор: ФОП Маймур Євгенія Феліксівна, Україна. Електронна пошта: leadlife.app@gmail.com.';

  @override
  String get legalSubscriptionSection1Heading => 'Платні функції';

  @override
  String get legalSubscriptionSection1Body =>
      'Деякі функції Hatchpot можуть надаватися за плату. До здійснення покупки ти отримуєш інформацію про вартість, валюту, період підписки, наявність автоматичного поновлення, склад платної функції та умови скасування.';

  @override
  String get legalSubscriptionSection2Heading =>
      'Підписка та автоматичне поновлення';

  @override
  String get legalSubscriptionSection2Body =>
      'Якщо обрана послуга є підпискою, вона автоматично поновлюється на відповідний період, якщо ти не скасуєш її до дати поновлення. Скасування підписки припиняє подальше автоматичне поновлення, але не обов’язково припиняє доступ до вже оплаченого періоду.';

  @override
  String get legalSubscriptionSection3Heading =>
      'Оплата через магазини застосунків';

  @override
  String get legalSubscriptionSection3Body =>
      'Платежі через iOS здійснюються через App Store, а через Android — через Google Play, якщо інше не вказано безпосередньо в застосунку. До окремих аспектів оплати можуть застосовуватися правила відповідного магазину.';

  @override
  String get legalSubscriptionSection4Heading => 'Скасування';

  @override
  String get legalSubscriptionSection4Body =>
      'Ти можеш скасувати підписку у відповідних налаштуваннях облікового запису App Store або Google Play. Після скасування ти, як правило, зберігаєш доступ до кінця вже оплаченого періоду, якщо інше не передбачено застосовними правилами чи законодавством.';

  @override
  String get legalSubscriptionSection5Heading => 'Повернення коштів';

  @override
  String get legalSubscriptionSection5Body =>
      'Право на повернення коштів визначається застосовним законодавством, умовами договору та правилами відповідного магазину застосунків. Ніщо в цьому документі не обмежує обов’язкові права споживача.\n\nЯкщо застосовне законодавство передбачає право відмовитися від дистанційного договору чи цифрового контенту, ця можливість зберігається за дотримання встановлених законом умов. Для цифрового контенту, надання якого вже розпочалося, право на відмову може бути обмежене у випадках, передбачених законом, зокрема якщо ти попередньо надав(-ла) чітку згоду на початок надання цифрового контенту й був(-ла) повідомлений(-а) про наслідки такої згоди.';

  @override
  String get legalSubscriptionSection6Heading => 'Безкоштовний період';

  @override
  String get legalSubscriptionSection6Body =>
      'Якщо Hatchpot пропонує безкоштовний пробний період, його тривалість і умови автоматичного переходу на платну підписку вказуються до початку пробного періоду.';

  @override
  String get legalSubscriptionSection7Heading => 'Зміна ціни';

  @override
  String get legalSubscriptionSection7Body =>
      'У разі зміни ціни майбутнього періоду підписки ти будеш повідомлений(-а) у порядку, передбаченому застосовним законодавством і правилами відповідного магазину.';

  @override
  String get legalSubscriptionSection8Heading => 'Помилкові платежі';

  @override
  String get legalSubscriptionSection8Body =>
      'Якщо ти вважаєш, що з тебе було помилково списано суму, звертайся на leadlife.app@gmail.com. За потреби ти також можеш скористатися процедурою повернення коштів відповідного магазину застосунків.';

  @override
  String get legalSubscriptionSection9Heading =>
      'Скасування або призупинення з боку сервісу';

  @override
  String get legalSubscriptionSection9Body =>
      'Якщо ми скасовуємо або призупиняємо твій доступ з причин на нашому боці, а не через порушення тобою цих Умов, ми не позбавляємо тебе вже оплаченого.\n\nЯкщо ти придбав(-ла) одноразову покупку однієї подорожі, доступ до вже оплаченої подорожі зберігається; якщо технічно це неможливо, ми повертаємо кошти пропорційно невикористаній частині.\n\nЯкщо в тебе активна підписка і ми скасовуємо чи призупиняємо її з причин на нашому боці, ти зберігаєш доступ на решту вже оплаченого періоду або отримуєш еквівалентну кількість додаткових подорожей чи днів доступу замість втраченого часу — або пропорційне повернення коштів, якщо жоден із цих варіантів неможливий.\n\nЦе положення не застосовується, якщо доступ обмежено через порушення тобою цих Умов, вимоги закону, шахрайство або зловживання.';

  @override
  String get aiDisclaimerHeading => 'ВАЖЛИВА ІНФОРМАЦІЯ';

  @override
  String get aiDisclaimerBody =>
      'Hatchpot призначений для розваги, особистої рефлексії та самопізнання.\n\nHatchpot не є медичною, психологічною, психотерапевтичною чи психіатричною допомогою.\n\nВідповіді, які створює штучний інтелект, можуть містити помилки, неточності або суб’єктивні інтерпретації і не замінюють консультацію кваліфікованого фахівця.\n\nНе використовуй Hatchpot для встановлення діагнозу, лікування захворювання чи прийняття рішень, що потребують професійної медичної, психологічної, юридичної або фінансової консультації.\n\nHatchpot не призначений для надзвичайних ситуацій. Якщо тобі або іншій людині безпосередньо загрожує небезпека, зверніться по екстрену допомогу або до відповідного фахівця.';

  @override
  String get aiDisclaimerCheckboxLabel =>
      'Мені виповнилося 18 років. Я ознайомився(-лася) з цією інформацією і розумію, що Hatchpot не є медичною, психологічною чи психіатричною допомогою, а відповіді ШІ можуть бути неточними.';

  @override
  String get crisisResourcesHeading => 'Зупинимося тут на хвилину';

  @override
  String get crisisResourcesBody =>
      'Здається, те, що ти написав(-ла), заслуговує на більше, ніж може дати гра. Hatchpot не призначений для кризових ситуацій і не замінює професійну допомогу.\n\nБудь ласка, звернися до когось, кому довіряєш, до фахівця з психічного здоров’я або до служби екстреної допомоги у своїй країні. Ти не мусиш проходити через це наодинці.';

  @override
  String get crisisResourcesBackCta => 'Повернутися';

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
