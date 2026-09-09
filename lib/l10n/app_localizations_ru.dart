// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get languageTitle => 'Язык';

  @override
  String get languageSystem => 'Как на телефоне';

  @override
  String get welcomeGreeting => 'Добро пожаловать';

  @override
  String get whatsYourWish => 'Какое у тебя желание?';

  @override
  String get presentPerfectPrompt =>
      'Напиши в настоящем времени — так, словно оно уже исполнилось.';

  @override
  String get typeItHere => 'Напиши здесь…';

  @override
  String get howItWorks => 'Как это работает';

  @override
  String get buildSuccessCode => 'Создать код успеха';

  @override
  String get navHome => 'Главная';

  @override
  String get navJournal => 'Журнал';

  @override
  String get navDiary => 'Дневник';

  @override
  String get seeExample => 'Посмотреть пример';

  @override
  String get drawerHistory => 'История';

  @override
  String get drawerProfile => 'Профиль';

  @override
  String get drawerHelp => 'Помощь';

  @override
  String get drawerAbout => 'О системе';

  @override
  String get stepOneOfThreeIntention => 'Шаг 1 из 3 · Твоё намерение';

  @override
  String get whatDoYouDesire => 'Чего ты желаешь?';

  @override
  String get wishFieldHint => 'У меня есть… / Я… / Я испытываю…';

  @override
  String get beSpecificHonestYou =>
      'Будь конкретнее. Будь честнее. Будь собой.';

  @override
  String get confirmMyDesire => 'Подтвердить моё желание';

  @override
  String get contactAuthorTitle => 'Связаться с автором игры';

  @override
  String get contactAuthorSubtitle =>
      'Если есть вопрос, отзыв или нужна помощь, можно написать напрямую.';

  @override
  String get contactAuthorEmailCta => 'Написать на почту';

  @override
  String get contactAuthorInstagramCta => 'Открыть Instagram';

  @override
  String get contactAuthorEmailCopied =>
      'Почта скопирована: leadlife.app@gmail.com';

  @override
  String onboardingStepOfFive(int step) {
    return 'Шаг $step из 5';
  }

  @override
  String get onboardingNameGreeting => 'Привет. Мы рады, что ты здесь.';

  @override
  String get onboardingNamePrompt =>
      'Прежде чем начать, как мне к тебе обращаться?';

  @override
  String get yourNameHint => 'Твоё имя';

  @override
  String get continueButton => 'Продолжить';

  @override
  String onboardingBirthdayQuestion(String name) {
    return 'Когда у тебя день рождения, $name?';
  }

  @override
  String get onboardingBirthdaySubtitle =>
      'Это поможет нам адаптировать путешествие именно для тебя.';

  @override
  String get selectYourBirthday => 'Выбери дату рождения';

  @override
  String get onboardingContactHeading => 'Оставайся на связи.';

  @override
  String get onboardingContactSubtitle =>
      'Как мы можем связаться с тобой по поводу твоего путешествия?';

  @override
  String get emailHint => 'твоя@почта.com';

  @override
  String get allowGentleReminders =>
      'Разреши деликатные напоминания, чтобы не сбиваться со своего пути.';

  @override
  String get allowSensitiveDataProcessing =>
      'Разрешить обработку предоставленной мной информации, которая может относиться к данным о здоровье или другим чувствительным персональным данным, для работы соответствующих функций Hatchpot.';

  @override
  String get comebackReminderTitle => 'Твой путь ждёт';

  @override
  String get comebackReminderBody =>
      'Ты остановился(-ась) на середине путешествия. Возвращайся, когда будешь готов(-а), и продолжай.';

  @override
  String get onboardingFocusHeading =>
      'Что больше всего занимает твои мысли\nпрямо сейчас?';

  @override
  String get onboardingFocusSubtitle =>
      'Выбери сферы, которым нужно твоё внимание.';

  @override
  String get focusRelationships => 'Отношения';

  @override
  String get focusCareerPurpose => 'Карьера и призвание';

  @override
  String get focusHealthEnergy => 'Здоровье и энергия';

  @override
  String get focusMoneyAbundance => 'Деньги и изобилие';

  @override
  String get focusInnerPeace => 'Внутренний покой';

  @override
  String get takeABreathIn => 'Вдохни.';

  @override
  String get andOut => 'И выдохни.';

  @override
  String onboardingReadyMessage(String name) {
    return '$name, твой путь вот-вот начнётся.';
  }

  @override
  String get letsStart => 'Начать';

  @override
  String get yourPathLabel => 'Твой путь';

  @override
  String fieldOfTotal(String num, int total) {
    return 'Поле $num из $total';
  }

  @override
  String get myAnswersLabel => 'Мои ответы';

  @override
  String enterFieldCta(String num) {
    return 'Войти в поле $num  →';
  }

  @override
  String get answersEmptyState => 'Твои ответы появятся здесь.';

  @override
  String fieldBadgeNumber(String num) {
    return 'ПОЛЕ $num';
  }

  @override
  String get receiveMyTaskCta => 'Получить моё задание  →';

  @override
  String get readyToBeginPathCta => 'Я готов начать свой путь  →';

  @override
  String fieldNumberAndName(String num, String name) {
    return 'ПОЛЕ $num · $name';
  }

  @override
  String get yourAnswerHint => 'Твой ответ…';

  @override
  String get taskLabel => 'Задание';

  @override
  String get saveMyAnswerCta => 'Сохранить мой ответ';

  @override
  String get saveProgressError =>
      'Не удалось сохранить прогресс. Проверь память устройства.';

  @override
  String get answerReceivedHeading => 'Твой ответ принят.';

  @override
  String walkedThroughField(String fieldName) {
    return 'Поле $fieldName уже позади. Путь продолжается.';
  }

  @override
  String get rollForNextFieldCta => 'Бросить кубик для следующего поля';

  @override
  String get finalTurnLabel => 'Последний ход';

  @override
  String get pathContinuesLabel => 'Путь продолжается';

  @override
  String get yourDesireLabel => 'Твоё желание';

  @override
  String get currentAreaOfActionColon => 'Твоя текущая область действий:';

  @override
  String get reachedFinalPathText => 'Ты на финальном участке пути.';

  @override
  String get youAreNowOnText => 'Теперь ты на';

  @override
  String get finalTurnInstructions =>
      'Все 32 пути пройдены. Ещё один последний ход — чтобы понять, где ты сейчас.';

  @override
  String onFieldWhereWillPathLead(String num) {
    return 'Ты на поле $num. Куда приведёт путь?';
  }

  @override
  String get fromThisPlaceLabel => 'Из этой точки';

  @override
  String arrivingAtField(String num) {
    return 'Прибытие · Поле $num';
  }

  @override
  String get wheelTurnsOnceMore => 'Колесо вращается ещё раз…';

  @override
  String get pathTurnsEllipsis => 'Путь поворачивает…';

  @override
  String get rollingEllipsis => 'Кубик катится…';

  @override
  String get rollFinalDiceCta => 'Бросить финальный кубик';

  @override
  String get rollDiceCta => 'Бросить кубик';

  @override
  String get receiveSuccessCodeCta => 'Получить мой код успеха  →';

  @override
  String enterFieldNameCta(String name) {
    return 'Войти в $name  →';
  }

  @override
  String get journeyCompleteHeading => 'Твоё путешествие\nзавершено';

  @override
  String get journeyCompleteSubtext =>
      'Все 32 пути пройдены.\nЭто твой код успеха.';

  @override
  String get yourOriginalDesireLabel => 'Твоё исходное желание';

  @override
  String get currentAreaOfActionLabel => 'Твоя текущая область действий';

  @override
  String get whatYouHaveDiscoveredLabel => 'Твои открытия';

  @override
  String get preparingPdfCta => 'Подготовка PDF…';

  @override
  String get savePdfCta => 'Сохранить как PDF';

  @override
  String get startNewJourneyCta => 'Начать новое путешествие';

  @override
  String get goldenFishClosingLine =>
      'Золотая рыбка уже в пути.\nТвоя задача — верить и действовать.';

  @override
  String get yourAnalysisLabel => 'Твой анализ';

  @override
  String get yourNextDirectionLabel => 'Твоё следующее направление';

  @override
  String get recommendedStepsLabel => 'Рекомендуемые следующие шаги';

  @override
  String get todaysIntentionHeading => 'Намерение на сегодня';

  @override
  String get todaysIntentionSubtitle =>
      'Твой результат следует за твоим намерением — запиши его.';

  @override
  String get diaryIntentionHint => 'Запиши своё намерение на сегодня…';

  @override
  String get saveButton => 'Сохранить';

  @override
  String get checkButton => 'Проверить';

  @override
  String get diarySaveError =>
      'Не удалось сохранить. Проверь память устройства.';

  @override
  String get diaryEmptyState => 'Твои намерения появятся здесь.';

  @override
  String get yourJourneysHeading => 'Твои путешествия';

  @override
  String get journeysSubtitle =>
      'Каждое твоё желание и то, как далеко оно тебя привело.';

  @override
  String get journeysEmptyState => 'Твои путешествия появятся здесь.';

  @override
  String journeyCompletedOn(String date) {
    return 'Завершено · $date';
  }

  @override
  String get journeyInProgress => 'Продолжается';

  @override
  String journeyFieldsProgress(int count, int total) {
    return '$count / $total полей';
  }

  @override
  String get yourProfileFallback => 'Твой профиль';

  @override
  String get profileNoDataMessage =>
      'У нас пока нет твоих данных — они добавляются при первом запуске.';

  @override
  String get profileBirthdayLabel => 'Дата рождения';

  @override
  String get profileEmailLabel => 'Электронная почта';

  @override
  String get profileFocusLabel => 'Фокус';

  @override
  String get helpSubtitle => 'Ответы на самые частые вопросы.';

  @override
  String get helpFaqWhatIsLeadlifeQ => 'Что такое Hatchpot?';

  @override
  String get helpFaqWhatIsLeadlifeA =>
      'Это направляемое путешествие вокруг выбранного тобой намерения, которое помогает понять, чего ты хочешь, изменить внутреннее состояние и найти своё направление.';

  @override
  String get helpFaqDiceQ => 'Как работает кубик?';

  @override
  String get helpFaqDiceA =>
      'Брось кубик, чтобы узнать, готово ли твоё намерение. Если да — путешествие начинается. Если нет — ты получишь подсказку, чтобы уточнить его и попробовать снова.';

  @override
  String get helpFaqStuckFieldQ => 'Что делать, если я застрял на поле?';

  @override
  String get helpFaqStuckFieldA =>
      'Отвечай честно и несколькими словами. Неправильных ответов нет — каждое поле лишь ненадолго меняет твой фокус.';

  @override
  String get helpFaqSavedIntentionsQ => 'Где сохраняются мои намерения?';

  @override
  String get helpFaqSavedIntentionsA =>
      'Всё, что ты сохраняешь во вкладке «Дневник», остаётся в её истории на твоём устройстве.';

  @override
  String get helpFaqChangeIntentionQ => 'Можно ли изменить намерение позже?';

  @override
  String get helpFaqChangeIntentionA =>
      'Да. В любой момент запиши новое намерение во вкладке «Дневник» и сверь его со своим путём.';

  @override
  String get aboutHeading => 'О системе';

  @override
  String get aboutIntro =>
      'Hatchpot состоит из 32 полей, расположенных как один непрерывный путь.';

  @override
  String get tenLevelsHeading => '10 уровней реальности';

  @override
  String get tenLevelsBody =>
      'Слои, через которые движется твоё намерение: от конкретных жизненных обстоятельств до более глубоких состояний за ними.';

  @override
  String get lifeStrategiesHeading => '22 жизненные стратегии';

  @override
  String get lifeStrategiesBody =>
      'Разные способы думать, выбирать, чувствовать и действовать. Их не нужно изучать — ты просто проходишь те, к которым ведёт твой путь.';

  @override
  String get successCodeHeading => 'Твой код успеха';

  @override
  String get successCodeBody =>
      'В конце путешествия твои решения и осознания объединяются в личный код — не универсальный ответ, а карту возвращения к твоему желанию.';

  @override
  String get helpModalExampleLabel => 'Пример';

  @override
  String get helpModalNamingHeading => 'Как сформулировать желание';

  @override
  String get helpModalYesLabel => 'ДА — НАСТОЯЩЕЕ ВРЕМЯ';

  @override
  String get helpModalNoLabel => 'ЕЩЁ НЕТ — БУДУЩЕЕ ВРЕМЯ';

  @override
  String get helpModalGoodExample =>
      '«Моя жизнь устроена так, что моя работа и моя правда — одно целое».';

  @override
  String get helpModalBadExample => '«Я хочу построить жизнь, в которой…»';

  @override
  String get helpModalClosingText =>
      'Говори так, словно это уже исполнилось.\nПуть отвечает на уверенность.';

  @override
  String get helpModalUnderstandCta => 'Понятно';

  @override
  String get diceStepTwoOfThree => 'Шаг 2 из 3';

  @override
  String get diceScreenTitle => 'Пробуждение пути';

  @override
  String get diceYourIntentionLabel => 'Твоё намерение';

  @override
  String get diceClueYesTitle => 'Да';

  @override
  String get diceClueYesText => 'Твоё желание готово. Путь может начаться.';

  @override
  String get diceClueConnectionsTitle => 'Связи';

  @override
  String get diceClueConnectionsText =>
      'Кто связан с этим желанием? Доверься интуиции. Есть ли здесь человек, отношения или сотрудничество? Добавь то, что кажется уместным.';

  @override
  String get diceClueClarityTitle => 'Ясность';

  @override
  String get diceClueClarityText =>
      'Сделай желание конкретнее. Добавь детали, чтобы было понятно, чего именно ты хочешь.';

  @override
  String get diceClueExpansionTitle => 'Расширение';

  @override
  String get diceClueExpansionText =>
      'Мысли масштабнее. Расширь горизонт. Как это желание может стать ещё более значимым или вдохновляющим?';

  @override
  String get diceClueFreedomTitle => 'Свобода';

  @override
  String get diceClueFreedomText =>
      'Содержит ли твоё желание скрытые ограничения? Перефразируй его так, чтобы оно давало свободу, возможности и силу вместо ограничений.';

  @override
  String get diceClueMeaningTitle => 'Смысл';

  @override
  String get diceClueMeaningText =>
      'Что делает это желание по-настоящему важным для тебя? Добавь свои ценности и более глубокий смысл.';

  @override
  String get diceClueFeelingsTitle => 'Чувства';

  @override
  String get diceClueFeelingsText =>
      'Что ты хочешь чувствовать, когда желание станет реальностью? Добавь эти эмоции к желанию — они важны.';

  @override
  String get diceClueExpressionTitle => 'Выражение';

  @override
  String get diceClueExpressionText =>
      'Перепиши желание. Выбери слова, которые звучат легче, яснее и естественнее. Иногда другая формулировка меняет всё.';

  @override
  String get diceUniverseListens => 'Вселенная слушает…';

  @override
  String get diceRollingLabel => 'Кубик катится…';

  @override
  String get diceRollLabel => 'Бросить';

  @override
  String get diceRollAgainLabel => 'Бросить ещё раз';

  @override
  String get diceEnterFirstFieldCta => 'Войти в первое поле  →';

  @override
  String get diceRefineMyDesire => 'Уточнить моё желание';

  @override
  String get paywallHeadlineLine1 => 'Твоё желание сказало «да».';

  @override
  String get paywallHeadlineLine2 => 'Твой путь готов.';

  @override
  String get paywallSubheading => 'Выбери, насколько глубоко ты хочешь пойти.';

  @override
  String get paywallSeeDetails => 'Посмотреть детали';

  @override
  String get paywallChooseThisPathCta => 'Выбрать этот путь';

  @override
  String get accountLinkHeadline => 'Защити своё путешествие';

  @override
  String get accountLinkSubtitle =>
      'Создай аккаунт, чтобы путешествие и покупка сохранились даже после смены телефона.';

  @override
  String get continueWithApple => 'Продолжить с Apple';

  @override
  String get continueWithGoogle => 'Продолжить с Google';

  @override
  String get continueWithEmail => 'Продолжить с электронной почтой';

  @override
  String get accountLinkPasswordHint => 'Создай пароль';

  @override
  String get createAccountCta => 'Создать аккаунт';

  @override
  String get accountLinkSkip => 'Может быть, позже';

  @override
  String get accountLinkErrorGeneric => 'Что-то пошло не так. Попробуй снова.';

  @override
  String get paywallTariffOneJourneyTitle => 'Одно путешествие';

  @override
  String get paywallTariffOneJourneyTagline => 'Одно желание, одно направление';

  @override
  String get paywallFeatureQuestionnairesToEndPractices =>
      'Опросы и завершающие практики';

  @override
  String get paywallFeatureFinalDirection => 'Финальное направление';

  @override
  String get paywallFeaturePersonalJournal => 'Личный журнал';

  @override
  String get paywallTariffLeadlifePassTitle => 'Hatchpot Pass';

  @override
  String get paywallTariffLeadlifePassTagline =>
      'Погружайся глубже в любое время';

  @override
  String get paywallFeatureUnlimitedJourneys => 'Неограниченные путешествия';

  @override
  String get paywallFeatureFullJourneyHistory => 'Полная история путешествий';

  @override
  String get paywallFeatureNewPractices => 'Новые практики';

  @override
  String get awakenedStepThreeOfThree => 'Шаг 3 из 3';

  @override
  String get awakenedFieldOneAwaits => 'Поле 01 ждёт';

  @override
  String get awakenedJourneyBegunTitle => 'Твоё путешествие\nначалось.';

  @override
  String get awakenedPathRespondBody =>
      'Путь ответит на твоё намерение.\nИди по нему терпеливо.';

  @override
  String get awakenedHeldInLight => 'В свете';

  @override
  String get awakenedEnterFieldOneCta => 'Войти в поле 01  →';

  @override
  String get howItWorksBeginJourneyCta => 'Начать путешествие';

  @override
  String get howItWorksContinueCta => 'Продолжить';

  @override
  String get howItWorksSlide1Title => 'Структурированный путь к себе';

  @override
  String get howItWorksSlide1Body =>
      'Hatchpot — система саморефлексии, которая соединяет тебя с твоим внутренним «я» через игру, символ и интуицию.';

  @override
  String get howItWorksSlide2Title => 'Кубик слышит твоё бессознательное';

  @override
  String get howItWorksSlide2Body =>
      'Напиши своё желание и брось кубик.\n\nВыпала 1 — оно готово, и путешествие начинается.\n\nЛюбое другое число — подсказка, которая поможет уточнить или изменить желание.';

  @override
  String get howItWorksSlide3Title => '32 поля. Твой личный путь';

  @override
  String get howItWorksSlide3Body =>
      'Ты пройдёшь через 10 уровней реальности и 22 жизненные стратегии — разные способы думать, чувствовать и действовать.\n\nБрось кубик, ответь на один вопрос, иди дальше. Большинство шагов занимают меньше минуты.';

  @override
  String get howItWorksSlide4Title => 'Собери свой код успеха';

  @override
  String get howItWorksSlide4Body =>
      'Каждый ответ становится частью личного кода — карты, которая приведёт тебя обратно к твоему желанию.\n\nНе универсальный ответ. Только твой путь.';

  @override
  String get field01Name => 'Свет';

  @override
  String get field01Subtitle => 'Желание';

  @override
  String get field01Intro =>
      'В Hatchpot Свет — это символическое начало, энергия, которая уже присутствует в твоей идее.\n\nЖелание, которое ты написала, отражает что-то действительно важное для тебя. Пусть его ценность поддержит тебя в начале пути.';

  @override
  String get field01Task => '';

  @override
  String get field02Name => 'Связь';

  @override
  String get field02Subtitle => 'Инициатива';

  @override
  String get field02Intro =>
      'Каждая идея начинается с искры.\n\nРазвитие начинается, когда ты делишься ею с миром.\nУ каждого желания есть начало.\nВспомни, когда эта мечта впервые появилась в твоей жизни.';

  @override
  String get field02Task =>
      'Когда это желание впервые появилось в твоей жизни?\n\nС кем ты можешь поделиться им сегодня, чтобы поддержать его осуществление?';

  @override
  String get field03Name => 'Форма';

  @override
  String get field03Subtitle => 'Видение';

  @override
  String get field03Intro =>
      'Желание становится реальным, когда обретает ясную форму.\nПредставь, как выглядит успех для тебя.';

  @override
  String get field03Task => 'Как выглядит успех для тебя?';

  @override
  String get field04Name => 'Масштаб';

  @override
  String get field04Subtitle => 'Вклад';

  @override
  String get field04Intro =>
      'Желанию нужна структура, способная удерживать его энергию и действия.\n\nЭто поле связано с масштабом, расширением и добротой.';

  @override
  String get field04Task =>
      'Почему для мира ценно, чтобы твоё желание исполнилось? Напиши столько пунктов, сколько чувствуешь.\n\nЯ даю миру __________, и мир принимает меня, даёт мне возможности и поддержку.';

  @override
  String get field05Name => 'Ограничение';

  @override
  String get field05Subtitle => 'Устойчивость';

  @override
  String get field05Intro =>
      'Преграды — нормальный этап любого становления.\n\nЕщё раз взгляни на то, что стоит на твоём пути: возможно, оно уже показывает силу, которая растёт внутри тебя.';

  @override
  String get field05Task =>
      'Что сейчас кажется тебе ограничением? Каким положительным качествам или поведению оно тебя учит?';

  @override
  String get field06Name => 'Ценности';

  @override
  String get field06Subtitle => 'Подлинность';

  @override
  String get field06Intro =>
      'Твоё желание отражает часть тебя, которая готова проявиться.\n\nУвидь, кем ты становишься для себя и мира, когда оно реализуется, и какая ценность стоит за ним. Это поле также отражает внутреннего ребёнка и любовь.';

  @override
  String get field06Task =>
      'Какую часть тебя отражает это желание? Кем ты становишься для себя и мира, когда оно реализуется? Какая ценность стоит за ним?\n\nЯ признаю себя __________ и использую эти свои качества для реализации задуманного.';

  @override
  String get field06CodeInstruction =>
      'Впишите в формулу качества, которые вы готовы и хотите проявлять в своей жизни.';

  @override
  String get field07Name => 'Чувства';

  @override
  String get field07Subtitle => 'Эмоциональная осознанность';

  @override
  String get field07Intro =>
      'Это поле показывает эмоциональное измерение твоего запроса. Эмоции — это знаки. Если их не подавлять, а прожить, энергия начинает идти в нужное русло.\n\nЭто поле работает как фильтр готовности: оно показывает, какие состояния сейчас мешают движению, а какие открывают путь.';

  @override
  String get field07Task =>
      'Какие эмоции ты чаще всего проживаешь именно в связи со своим запросом? Есть ли эмоция или повторяющийся эмоциональный цикл, в котором ты как будто застреваешь? Чем обычно вызваны такие состояния?\n\nЯ отпускаю __________ и даю энергии идти на реализацию своего запроса.';

  @override
  String get field08Name => 'Мышление';

  @override
  String get field08Subtitle => 'Ясность';

  @override
  String get field08Intro =>
      'Это поле показывает, какие мысли и установки стоят вокруг твоего запроса. Одни убеждения поддерживают движение, другие могут незаметно ограничивать проявление.\n\nКогда ты видишь их ясно, появляется возможность выбрать новое направление.';

  @override
  String get field08Task =>
      'Что ты на самом деле думаешь о своём запросе? Какие установки или убеждения могут мешать его реализации?\n\nЯ трансформирую ограничивающие убеждения в свободу проявления.';

  @override
  String get field09Name => 'Подсознание';

  @override
  String get field09Subtitle => 'Воображение';

  @override
  String get field09Intro =>
      'Подсознание хранит в себе все прошлые события и опыты, а также будущие вероятности.\n\nЧерез это поле мы настроимся на желаемую ветку вероятности.';

  @override
  String get field09Task =>
      'Представь реализацию своего запроса от сердца. Какую картинку ты видишь? Опиши её тезисно: что происходит, где ты находишься, что чувствуешь и что уже стало реальным.';

  @override
  String get field10Name => 'Реальность';

  @override
  String get field10Subtitle => 'Действие';

  @override
  String get field10Intro =>
      'Это поле про реальность и физический мир. Здесь запрос начинает переходить из идеи, чувства и образа в конкретные действия.\n\nЕсли твой запрос связан с материей, деньгами, телом или видимым результатом, это поле особенно важно.';

  @override
  String get field10Task =>
      'Напиши 10 действий, которые, на твой взгляд, помогут реализовать твой запрос. Постарайся, чтобы большинство из них можно было сделать уже сегодня, минимум половину.';

  @override
  String get field11Name => 'Возможность';

  @override
  String get field11Subtitle => 'Доверие';

  @override
  String get field11Intro =>
      'В каждом желании есть возможность его осуществления.';

  @override
  String get field11Task =>
      'Ты действительно веришь, что твоё желание возможно? Если да, можешь ли ты довериться процессу?';

  @override
  String get field12Name => 'Воля';

  @override
  String get field12Subtitle => 'Находчивость';

  @override
  String get field12Intro => 'Твоя воля — твой самый мощный ресурс.';

  @override
  String get field12Task =>
      'Какие ресурсы у тебя уже есть для осуществления желания?';

  @override
  String get field13Name => 'Интуиция';

  @override
  String get field13Subtitle => 'Внутренняя тишина';

  @override
  String get field13Intro => 'Твой внутренний голос всегда знает путь.';

  @override
  String get field13Task =>
      'Что твой внутренний голос говорит об этом желании?';

  @override
  String get field14Name => 'Создание';

  @override
  String get field14Subtitle => 'Творчество';

  @override
  String get field14Intro =>
      'Каждая реальность начинается как возможность.\n\nСоздание — это мост между идеей и её воплощением.\n\nСоздание превращает возможности в реальность.\n\nКаждый день ты что-то создаёшь своими действиями, энергией и вниманием.';

  @override
  String get field14Task =>
      'Как это желание может обрести свою первую форму?\n\nЧто ты уже создаёшь в своей жизни?';

  @override
  String get field15Name => 'Сила';

  @override
  String get field15Subtitle => 'Управление';

  @override
  String get field15Intro =>
      'Сила начинается со структуры.\n\nУправлять можно только тем, что имеет структуру.\n\nТо, чем можно управлять, можно улучшить.';

  @override
  String get field15Task =>
      'Чем тебе нужно управлять, чтобы приблизиться к цели?\n\nЯ создаю структуру в __________, чтобы построить __________.';

  @override
  String get field16Name => 'Знание';

  @override
  String get field16Subtitle => 'Опыт';

  @override
  String get field16Intro =>
      'Знание становится ценным, когда ты его используешь.\n\nНастоящая мудрость появляется через действие.\n\nНужное знание может показать следующий шаг.';

  @override
  String get field16Task =>
      'Достаточно ли у тебя знаний для достижения цели?\n\nЕсли да, какие знания помогут?\n\nЕсли нет, где можно найти нужные знания?\n\nЗнание, которое поможет мне двигаться вперёд, — __________.\n\nЯ могу получить новые знания от __________.';

  @override
  String get field17Name => 'Выбор';

  @override
  String get field17Subtitle => 'Доверие к себе';

  @override
  String get field17Intro =>
      'Каждый выбор формирует человека, которым ты становишься.\n\nКогда ты выбираешь то, что действительно твоё, ты уверенно движешься вперёд.\n\nТвоё сердце уже знает, что ощущается правдой.\n\nДоверься себе достаточно, чтобы выбрать это.';

  @override
  String get field17Task =>
      'Что ощущается по-настоящему правильным для тебя?\n\nЯ выбираю __________, потому что это моё.';

  @override
  String get field18Name => 'Движение';

  @override
  String get field18Subtitle => 'Дисциплина';

  @override
  String get field18Intro =>
      'Твоё желание требует дисциплины.\nМаленькие последовательные шаги приближают тебя к желаемому.';

  @override
  String get field18Task =>
      'Какое действие ты можешь дисциплинированно выполнять, чтобы достичь желания?\n\nКак долго ты можешь продолжать?\n\nЯ буду регулярно делать __________ в течение __________, чтобы приблизиться к желанию.';

  @override
  String get field19Name => 'Правда';

  @override
  String get field19Subtitle => 'Честность';

  @override
  String get field19Intro =>
      'Движение вперёд начинается с того, чтобы увидеть вещи такими, какие они есть.\n\nПравда создаёт основу для перемен.';

  @override
  String get field19Task =>
      'Что является правдой для тебя прямо сейчас?\n\nМоя правда сейчас — __________.\n\nЧтобы приблизиться к желанию, я улучшаю __________.';

  @override
  String get field20Name => 'Предназначение';

  @override
  String get field20Subtitle => 'Смелость';

  @override
  String get field20Intro =>
      'Значимая цель приносит пользу не только тебе.\n\nКогда желание служит большей цели, оно становится сильнее.\n\nЧтобы идти своим путём, нужна смелость.\n\nЧем значимее цель, тем больше людей она может вдохновить и поддержать.';

  @override
  String get field20Task =>
      'Как твоё желание может принести пользу другим?\n\nЗапиши 10 способов, которыми оно может помочь другим людям.';

  @override
  String get field21Name => 'Изменение';

  @override
  String get field21Subtitle => 'Гибкость';

  @override
  String get field21Intro =>
      'Жизнь продолжает двигаться.\n\nНельзя контролировать каждое изменение, но можно научиться двигаться вместе с ним.';

  @override
  String get field21Task =>
      'Что начинает разворачиваться в твоей жизни прямо сейчас?\n\nЯ отпускаю контроль над __________ и позволяю жизни двигаться.\n\nЯ замечаю, что __________ начинает разворачиваться в моей жизни.\n\nЯ начинаю делать __________, чтобы развивать __________.';

  @override
  String get field22Name => 'Баланс';

  @override
  String get field22Subtitle => 'Самообладание';

  @override
  String get field22Intro =>
      'Настоящая сила — не принуждение.\n\nЭто способность уравновесить силу и мягкость.';

  @override
  String get field22Task =>
      'Где в своей жизни ты можешь перестать давить и начать отвечать сбалансированно?\n\nГде можно использовать меньше силы и больше равновесия?\n\nМоя сила в том, что я могу __________ без принуждения, контроля или борьбы.';

  @override
  String get field23Name => 'Наблюдение';

  @override
  String get field23Subtitle => 'Осознанность';

  @override
  String get field23Intro =>
      'Иногда пауза — это тоже шаг вперёд.\n\nНаблюдая, ты начинаешь видеть вещи иначе.';

  @override
  String get field23Task =>
      'Что ты сейчас пытаешься заставить произойти?\n\nОстановись на минуту и понаблюдай.\n\nЧто теперь ты видишь иначе?\n\nЗамедляясь, я осознаю __________.';

  @override
  String get field24Name => 'Трансформация';

  @override
  String get field24Subtitle => 'Способность меняться';

  @override
  String get field24Intro =>
      'Развитие требует перемен.\n\nЧтобы создать что-то новое, возможно, придётся отпустить что-то старое.';

  @override
  String get field24Task =>
      'За что ты держишься, хотя оно больше не служит тебе?\n\nЧто должно измениться в тебе, чтобы достичь цели?\n\nЯ отпускаю __________, чтобы стать собой.';

  @override
  String get field25Name => 'Намерение';

  @override
  String get field25Subtitle => 'Фокус';

  @override
  String get field25Intro =>
      'То, на чём ты сосредотачиваешься, растёт.\n\nЯсное намерение даёт желанию направление и смысл.';

  @override
  String get field25Task =>
      'Почему это желание важно для тебя?\n\nЭто желание важно для меня, потому что __________.';

  @override
  String get field26Name => 'Привязанность';

  @override
  String get field26Subtitle => 'Честность с собой';

  @override
  String get field26Intro =>
      'Не всё, за что ты держишься, действительно твоё.\n\nИногда страх маскируется под желание.';

  @override
  String get field26Task =>
      'Что ты делаешь, потому что боишься этого не делать?\n\nОдна цель, которая больше не ощущается по-настоящему моей, — __________.\n\nОдно намерение, которое всё ещё ощущается правдой, — __________.';

  @override
  String get field27Name => 'Распад';

  @override
  String get field27Subtitle => 'Устойчивость';

  @override
  String get field27Intro =>
      'Иногда старое должно разрушиться, прежде чем ты сможешь двигаться вперёд.\n\nКогда мысли и чувства действуют вместе, твой путь становится яснее.';

  @override
  String get field27Task =>
      'Что ты думаешь о своём желании?\n\nЧто ты чувствуешь по отношению к нему?\n\nЕсть ли между ними противоречие?\n\nЕсли да, попробуй соединить свои мысли и чувства.\n\nЧто должны услышать твои чувства?\n\nЧто должны понять твои мысли?';

  @override
  String get field28Name => 'Направление';

  @override
  String get field28Subtitle => 'Согласованность с потоком';

  @override
  String get field28Intro =>
      'Жизнь течёт через получение и отдачу.\n\nЧем больше ты открываешься этому потоку, тем легче следовать своему пути.';

  @override
  String get field28Task =>
      'Куда ведёт тебя это желание?\n\nМоё желание ведёт меня к __________.\n\nЯ выбираю быть собой и доверять потоку, даже если __________.';

  @override
  String get field29Name => 'Ощущение';

  @override
  String get field29Subtitle => 'Чувствительность';

  @override
  String get field29Intro =>
      'Не всё можно увидеть ясно.\n\nИногда единственный путь вперёд — довериться своим ощущениям.';

  @override
  String get field29Task =>
      'С чем ты боишься столкнуться?\n\nЯ встречаюсь с __________.\n\nЯ встречаю тень, которая __________.';

  @override
  String get field30Name => 'Интеграция';

  @override
  String get field30Subtitle => 'Узнавание';

  @override
  String get field30Intro =>
      'Ты начинаешь узнавать себя в новой реальности.\n\nЧем яснее ты видишь, кем становишься, тем легче интегрировать эту идентичность в свою жизнь.';

  @override
  String get field30Task =>
      'Кто ты, когда это желание уже стало частью твоей жизни?\n\nКто ты, когда это желание уже исполнилось?\n\nЯ человек, который __________.\n\nЯ узнаю себя как человека, который __________.';

  @override
  String get field31Name => 'Пробуждение';

  @override
  String get field31Subtitle => 'Действие';

  @override
  String get field31Intro =>
      'Ты уже знаешь достаточно.\n\nВопрос уже не в том, чего ты хочешь. Вопрос в том, настало ли время действовать.';

  @override
  String get field31Task =>
      'Какое действие больше нельзя откладывать?\n\nКакое действие, как ты знаешь, нужно совершить?\n\nЯ начинаю действовать и __________.\n\nЯ просыпаюсь и начинаю действовать, __________.';

  @override
  String get field32Name => 'Целостность';

  @override
  String get field32Subtitle => 'Отвага';

  @override
  String get field32Intro =>
      'Целостность начинается, когда ты собираешь все части себя.\n\nСтрах всё ещё может оставаться, но время сделать следующий шаг.';

  @override
  String get field32Task =>
      'Какие страхи всё ещё стоят между тобой и следующим шагом?\n\nЯ признаю эти страхи и всё равно выбираю двигаться к __________.';

  @override
  String get pdfJourneyReportLabel => 'Отчёт о твоём путешествии';

  @override
  String get pdfJourneyCompleteHeading => 'Твоё путешествие\nзавершено';

  @override
  String get pdfWalkedAllPathsLine => 'Все 32 пути пройдены.';

  @override
  String get pdfYourDesireLabel => 'ТВОЁ ЖЕЛАНИЕ';

  @override
  String get pdfCurrentAreaOfActionLabel => 'ТВОЯ ТЕКУЩАЯ ОБЛАСТЬ ДЕЙСТВИЙ';

  @override
  String get pdfWhatYouHaveDiscoveredLabel => 'ТВОИ ОТКРЫТИЯ';

  @override
  String get pdfNoAnswersRecorded => 'Ответов пока нет.';

  @override
  String get privacyPolicyLabel => 'Политика конфиденциальности';

  @override
  String get termsOfUseLabel => 'Условия использования';

  @override
  String get subscriptionTermsLabel => 'Условия подписки и возврата средств';

  @override
  String get legalConsentPrefix => 'Я принимаю ';

  @override
  String get legalConsentAnd => ' и ';

  @override
  String get legalConsentSuffix => '.';

  @override
  String get legalPrivacySection1Heading => 'Обзор';

  @override
  String get legalPrivacySection1Body =>
      'Последнее обновление: 9 сентября 2026 года. Эта Политика конфиденциальности объясняет, какую информацию обрабатывает Hatchpot, с какой целью, кому она может передаваться, где может храниться и какие права имеет пользователь.\n\nHatchpot («Hatchpot», «мы», «нас» или «наш сервис») — цифровое приложение для личной рефлексии, самопознания и развлечения с использованием технологий искусственного интеллекта.\n\nОператором Hatchpot является физическое лицо-предприниматель Маймур Евгения Феликсовна, зарегистрированная в соответствии с законодательством Украины.\n\nРегистрационные и контактные данные: РНОКПП 3743203085; адрес регистрации: ул. Жуковского, 2, г. Днепр, 49000, Украина; электронная почта: leadlife.app@gmail.com.';

  @override
  String get legalPrivacySection2Heading => 'Какую информацию мы обрабатываем';

  @override
  String get legalPrivacySection2Body =>
      'Информация, которую ты предоставляешь самостоятельно — в зависимости от использованных функций это может включать: имя или выбранное имя; дату рождения; адрес электронной почты; выбранную область фокуса; твоё желание или намерение; ответы на вопросы; записи дневника; историю путешествия по приложению; содержание запросов к функциям искусственного интеллекта; иную информацию, которую ты указываешь в свободном тексте.\n\nДанные аккаунта — если ты создаёшь или подключаешь аккаунт, соответствующие данные обрабатывает Firebase Authentication: идентификатор аккаунта, адрес электронной почты и технические данные, необходимые для аутентификации.\n\nТехническая информация — тип и модель устройства, операционная система, версия приложения, технические идентификаторы, сведения о взаимодействии с приложением, диагностические сведения и сведения о сбоях. Firebase Analytics и Firebase Crashlytics могут использоваться для аналитики и диагностики. Мы не просим вводить данные платёжной карты.';

  @override
  String get legalPrivacySection3Heading => 'Чувствительная информация';

  @override
  String get legalPrivacySection3Body =>
      'Некоторые твои записи — особенно записи дневника, ответы на вопросы или свободный текст — потенциально могут содержать информацию о здоровье, психологическом состоянии, убеждениях, отношениях или иных личных обстоятельствах.\n\nМы не требуем от тебя предоставлять такую информацию для использования приложения, однако ты можешь добровольно ввести её в соответствующее поле. Если ты добровольно предоставляешь информацию, относящуюся к специальным категориям персональных данных, она обрабатывается только в объёме, необходимом для соответствующей функции, и на применимом правовом основании.\n\nНе вводи в приложение пароли, платёжные реквизиты, номера документов, секретные ключи или иную информацию, раскрытие которой может создать для тебя риск.';

  @override
  String get legalPrivacySection4Heading => 'Цель обработки';

  @override
  String get legalPrivacySection4Body =>
      'Мы используем информацию только для конкретных и законных целей: предоставление функций Hatchpot; создание персонализированного игрового и рефлексивного содержимого; обработка запросов к функциям искусственного интеллекта; формирование итогового анализа по твоему запросу; сохранение и синхронизация прогресса; восстановление аккаунта; отправка запрошенных напоминаний; обеспечение безопасности сервиса; предотвращение злоупотреблений и мошенничества; диагностика технических ошибок; анализ использования функций; улучшение стабильности и функциональности приложения; выполнение юридических обязанностей; защита прав и законных интересов пользователя и оператора.\n\nМы не продаём персональные данные пользователей и не используем их для продажи сторонних товаров или услуг через рекламные сети.';

  @override
  String get legalPrivacySection5Heading =>
      'Искусственный интеллект и Anthropic';

  @override
  String get legalPrivacySection5Body =>
      'Для создания персонализированного ИИ-содержимого Hatchpot использует сторонние технологии искусственного интеллекта, в частности API Anthropic. В зависимости от используемой функции компании Anthropic может передаваться необходимый для выполнения запроса контекст: твоё желание, выбранная область фокуса, вопросы, твои ответы, сведения о пройденных полях и другой необходимый контекст. Мы стремимся передавать только тот объём информации, который необходим для выполнения конкретного запроса.\n\nAnthropic — отдельный поставщик технологий, который обрабатывает переданные ему данные в соответствии с собственными применимыми условиями и политиками. Для коммерческого API Anthropic стандартный срок хранения входных и выходных данных составляет до 30 дней после получения или создания, за исключением случаев иной договорённости, требований закона или необходимости обеспечения безопасности и соблюдения правил использования.\n\nПередача данных компании Anthropic является передачей информации третьему лицу и прямо раскрывается тебе этой Политикой.';

  @override
  String get legalPrivacySection6Heading => 'Поставщики услуг';

  @override
  String get legalPrivacySection6Body =>
      'Для работы приложения мы можем использовать сторонние технологические сервисы: Google Firebase (Authentication, Cloud Firestore, Analytics, Crashlytics, App Check, Cloud Functions), Anthropic API, а также Apple и/или Google — для соответствующих сервисов входа и обработки покупок. Такие поставщики получают только тот объём данных, который необходим для оказания соответствующей услуги.';

  @override
  String get legalPrivacySection7Heading => 'Международная передача';

  @override
  String get legalPrivacySection7Body =>
      'Google Firebase и Anthropic могут обрабатывать информацию за пределами твоей страны или Европейской экономической зоны, в частности в США и других регионах, где работают их поставщики услуг. Если применяется GDPR или иное законодательство с особыми требованиями к международной передаче данных, такая передача осуществляется на предусмотренном законом правовом основании и с применением надлежащих гарантий.';

  @override
  String get legalPrivacySection8Heading => 'Правовые основания обработки';

  @override
  String get legalPrivacySection8Body =>
      'В зависимости от конкретной операции обработка может осуществляться на основании: согласия пользователя; необходимости исполнения договора с пользователем; необходимости выполнения юридических обязанностей; необходимости защиты жизненно важных интересов; законного интереса, если это допускается применимым законодательством. Для обработки чувствительной информации применяется дополнительное правовое основание, когда этого требует закон.\n\nВ Украине обработка данных о здоровье и некоторых других специальных категорий регулируется отдельными требованиями Закона Украины «О защите персональных данных».';

  @override
  String get legalPrivacySection9Heading => 'Порядок предоставления согласия';

  @override
  String get legalPrivacySection9Body =>
      'Если это необходимо, ты предоставляешь согласие через явно выраженное действие, в частности установку соответствующего флажка. Согласие не считается предоставленным лишь в силу факта использования приложения, если законодательство требует отдельного согласия. Флажки согласия в Hatchpot — в частности на экране с важной информацией об ИИ и на разрешение обработки чувствительной информации — не установлены заранее: ты выбираешь активно.\n\nТы можешь отозвать согласие в случаях и порядке, предусмотренных применимым законодательством. Отзыв согласия не влияет на законность обработки, осуществлённой до отзыва.';

  @override
  String get legalPrivacySection10Heading => 'Хранение и удаление данных';

  @override
  String get legalPrivacySection10Body =>
      'Мы храним персональные данные не дольше, чем это необходимо для соответствующих целей, если более длительный срок не предусмотрен законом. Локальная информация удаляется, когда ты удаляешь приложение или очищаешь его данные.\n\nМы удаляем данные, связанные с аккаунтом, в соответствии с процедурой удаления (раздел 11), однако некоторые данные могут храниться в резервных копиях, журналах безопасности, финансовой документации или в случаях, предусмотренных законом — в частности для предотвращения мошенничества, разрешения споров, обеспечения безопасности или выполнения требований Apple, Google или иных поставщиков.\n\nДанные, уже отправленные Anthropic, подчиняются применимым правилам хранения Anthropic, описанным выше.';

  @override
  String get legalPrivacySection11Heading => 'Удаление аккаунта';

  @override
  String get legalPrivacySection11Body =>
      'Ты можешь запросить удаление аккаунта и связанных с ним данных через соответствующую функцию в приложении или отправив запрос на leadlife.app@gmail.com. После удаления аккаунта некоторые данные могут храниться в резервных копиях, журналах безопасности или в случаях, когда их хранение требуется законом.';

  @override
  String get legalPrivacySection12Heading => 'Права пользователя';

  @override
  String get legalPrivacySection12Body =>
      'В зависимости от применимого законодательства ты можешь иметь право: получить информацию о своих персональных данных; получить копию данных; исправить неточные данные; удалить данные; ограничить обработку; возразить против определённых видов обработки; отозвать согласие; получить данные в машиночитаемом формате; обратиться с жалобой в компетентный орган по защите данных.\n\nЗапрос отправляй на leadlife.app@gmail.com. Перед выполнением запроса мы можем попросить разумное подтверждение личности.';

  @override
  String get legalPrivacySection13Heading => 'Минимальный возраст';

  @override
  String get legalPrivacySection13Body =>
      'Hatchpot предназначен только для лиц, достигших 18 лет. Hatchpot не предназначен для детей и несовершеннолетних. Если нам станет известно, что мы получили персональные данные лица младше 18 лет без надлежащего правового основания, мы примем разумные меры для удаления таких данных.';

  @override
  String get legalPrivacySection14Heading => 'Безопасность';

  @override
  String get legalPrivacySection14Body =>
      'Мы применяем разумные технические и организационные меры для защиты персональных данных от несанкционированного доступа, изменения, раскрытия, утраты или уничтожения. Ни один способ передачи или хранения данных не может гарантировать абсолютную безопасность.';

  @override
  String get legalPrivacySection15Heading => 'Изменения и контакты';

  @override
  String get legalPrivacySection15Body =>
      'Мы можем обновлять эту Политику при изменении функциональности Hatchpot, используемых поставщиков или применимого законодательства. Дата последнего обновления указана в начале документа; о существенных изменениях мы можем дополнительно сообщить через приложение или иным разумным способом.\n\nПо вопросам обработки персональных данных пиши на leadlife.app@gmail.com.\n\nОператор: ФОП Маймур Евгения Феликсовна, Украина.';

  @override
  String get legalTermsSection1Heading => 'Общие положения';

  @override
  String get legalTermsSection1Body =>
      'Последнее обновление: 9 сентября 2026 года. Эти Условия использования («Условия») регулируют отношения между пользователем Hatchpot («пользователь», «ты») и оператором приложения — физическим лицом-предпринимателем Маймур Евгенией Феликсовной, зарегистрированной в соответствии с законодательством Украины (РНОКПП 3743203085, ул. Жуковского, 2, г. Днепр, 49000, Украина).\n\nHatchpot — коммерческое название цифрового приложения, предназначенного для личной рефлексии, самопознания и развлечения.\n\nИспользуя Hatchpot, создавая аккаунт или покупая платные функции, ты подтверждаешь, что ознакомился(-лась) с этими Условиями. Если ты не согласен(-на) с Условиями, не используй Hatchpot.';

  @override
  String get legalTermsSection2Heading => 'Назначение Hatchpot';

  @override
  String get legalTermsSection2Body =>
      'Hatchpot предоставляет цифровой инструмент для личной рефлексии и самопознания, построенный вокруг твоего желания, путешествия через игровые поля, вопросов, ответов, записей дневника и ИИ-содержимого.\n\nHatchpot не является медицинской, психологической, психотерапевтической или психиатрической услугой. Содержимое, которое создаёт Hatchpot, в том числе ИИ-содержимое, не является медицинской консультацией, психологической консультацией, психотерапией, психиатрической помощью, диагнозом, лечением, финансовой рекомендацией или юридической консультацией.';

  @override
  String get legalTermsSection3Heading =>
      'Предостережение об искусственном интеллекте';

  @override
  String get legalTermsSection3Body =>
      'Часть содержимого Hatchpot создана с использованием технологий искусственного интеллекта. ИИ может создавать неточные, неполные или субъективные ответы. ИИ-содержимое не следует воспринимать как установленный факт, профессиональное заключение или прогноз будущих событий. Ты самостоятельно оцениваешь полученное содержимое и принимаешь решения с учётом собственных обстоятельств.';

  @override
  String get legalTermsSection4Heading => 'Возраст пользователя';

  @override
  String get legalTermsSection4Body =>
      'Hatchpot предназначен для пользователей от 18 лет. Используя Hatchpot, ты подтверждаешь, что тебе исполнилось 18 лет. Если тебе не исполнилось 18 лет, не создавай аккаунт, не используй платные функции и не предоставляй свои персональные данные для использования Hatchpot.';

  @override
  String get legalTermsSection5Heading => 'Аккаунты';

  @override
  String get legalTermsSection5Body =>
      'Hatchpot может предоставлять возможность использовать приложение без регистрации. Ты можешь подключить аккаунт через электронную почту, Google, Apple или иной поддерживаемый способ. Ты обязан(-а) предоставлять достоверную информацию и обеспечивать безопасность своих данных для входа.';

  @override
  String get legalTermsSection6Heading => 'Твоё содержимое';

  @override
  String get legalTermsSection6Body =>
      'Ты сохраняешь права на текст, ответы, записи дневника, желания и иное содержимое, которое ты создаёшь или вводишь в Hatchpot («Пользовательское содержимое»). Предоставляя Пользовательское содержимое, ты разрешаешь Hatchpot в необходимом для работы сервиса объёме получать к нему доступ, хранить, обрабатывать, передавать и технически использовать его для: предоставления функций приложения; синхронизации; формирования персонализированного содержимого; обработки запросов искусственного интеллекта, в частности путём передачи соответствующего контекста сторонним поставщикам технологий, включая Anthropic (см. Политику конфиденциальности); формирования запрошенного тобой анализа; обеспечения безопасности; технического обслуживания.\n\nHatchpot не приобретает право собственности на Пользовательское содержимое, не продаёт его и не использует для рекламного таргетирования. Ты подтверждаешь, что имеешь право предоставлять размещаемую тобой информацию.';

  @override
  String get legalTermsSection7Heading => 'Запрещённое использование';

  @override
  String get legalTermsSection7Body =>
      'Ты не должен(на): использовать Hatchpot незаконным способом; нарушать работу приложения; пытаться получить несанкционированный доступ к системам; распространять вредоносный код; осуществлять обратное проектирование, декомпиляцию или дизассемблирование, кроме случаев, прямо разрешённых применимым законом; использовать приложение для нарушения прав третьих лиц или создания угрозы безопасности других пользователей.';

  @override
  String get legalTermsSection8Heading => 'Кризисные ситуации';

  @override
  String get legalTermsSection8Body =>
      'Hatchpot не предназначен для использования в чрезвычайных ситуациях. Если твоё сообщение указывает на непосредственную угрозу жизни, здоровью или безопасности тебе или другому лицу, Hatchpot может приостановить обычную игровую или рефлексивную обработку и вместо этого показать заранее подготовленную информацию о необходимости обращения за экстренной или профессиональной помощью.\n\nНе используй Hatchpot вместо экстренной, медицинской, психологической или психиатрической помощи.';

  @override
  String get legalTermsSection9Heading => 'Отказ от гарантий';

  @override
  String get legalTermsSection9Body =>
      'Hatchpot предоставляется «как есть» и «в доступном виде». Мы не гарантируем, что приложение будет работать бесперебойно, не будет содержать технических ошибок, будет доступно в любое время, будет полностью совместимо с каждым устройством или будет создавать исключительно точное или уместное ИИ-содержимое.';

  @override
  String get legalTermsSection10Heading => 'Ограничение ответственности';

  @override
  String get legalTermsSection10Body =>
      'В максимально допустимой применимым законодательством мере Hatchpot не несёт ответственности за косвенные, случайные, специальные или последующие убытки, возникшие вследствие использования или невозможности использования приложения. Ты самостоятельно принимаешь решения на основании информации, полученной через Hatchpot.\n\nНи одно положение этих Условий не исключает и не ограничивает ответственность оператора в случаях, когда такое исключение или ограничение запрещено применимым законодательством, и не лишает потребителя прав, предоставленных ему императивными нормами законодательства — в частности законодательства Украины о дистанционных договорах и цифровом контенте, а если ты проживаешь в другой стране — обязательных прав, предоставленных тебе законодательством страны твоего проживания.';

  @override
  String get legalTermsSection11Heading => 'Платные функции и подписки';

  @override
  String get legalTermsSection11Body =>
      'Hatchpot может предоставлять платные функции, подписки и цифровой контент. Условия оплаты, автоматического продления, отмены и возврата средств определены в отдельном документе «Условия подписки и возврата средств», который является неотъемлемой частью этих Условий.';

  @override
  String get legalTermsSection12Heading => 'Удаление аккаунта';

  @override
  String get legalTermsSection12Body =>
      'Ты можешь прекратить использование Hatchpot и удалить аккаунт в порядке, предусмотренном приложением. Удаление аккаунта не освобождает стороны от обязательств, которые по своей природе должны сохраняться после прекращения использования сервиса.';

  @override
  String get legalTermsSection13Heading => 'Приостановление доступа';

  @override
  String get legalTermsSection13Body =>
      'Мы можем временно ограничить или прекратить доступ пользователя, если: пользователь нарушает эти Условия; использование аккаунта создаёт угрозу безопасности; это необходимо для предотвращения мошенничества; этого требует закон; это необходимо для защиты прав других пользователей или оператора.';

  @override
  String get legalTermsSection14Heading => 'Применимое право';

  @override
  String get legalTermsSection14Body =>
      'Эти Условия регулируются законодательством Украины. Если ты являешься потребителем и проживаешь в другой стране, выбор украинского права не лишает тебя прав, предоставленных тебе обязательными нормами законодательства страны твоего проживания.';

  @override
  String get legalTermsSection15Heading => 'Изменения Условий и контакты';

  @override
  String get legalTermsSection15Body =>
      'Мы можем изменять эти Условия в случае изменения приложения, бизнес-модели или законодательства. О существенных изменениях мы можем сообщить через приложение или иным разумным способом. Продолжение использования Hatchpot после вступления изменений в силу означает использование сервиса на условиях обновлённых Условий в пределах, допускаемых законом.\n\nОператор: ФОП Маймур Евгения Феликсовна, Украина. Электронная почта: leadlife.app@gmail.com.';

  @override
  String get legalSubscriptionSection1Heading => 'Платные функции';

  @override
  String get legalSubscriptionSection1Body =>
      'Некоторые функции Hatchpot могут предоставляться за плату. До совершения покупки ты получаешь информацию о стоимости, валюте, периоде подписки, наличии автоматического продления, составе платной функции и условиях отмены.';

  @override
  String get legalSubscriptionSection2Heading =>
      'Подписка и автоматическое продление';

  @override
  String get legalSubscriptionSection2Body =>
      'Если выбранная услуга является подпиской, она автоматически продлевается на соответствующий период, если ты не отменишь её до даты продления. Отмена подписки прекращает дальнейшее автоматическое продление, но не обязательно прекращает доступ к уже оплаченному периоду.';

  @override
  String get legalSubscriptionSection3Heading =>
      'Оплата через магазины приложений';

  @override
  String get legalSubscriptionSection3Body =>
      'Платежи через iOS осуществляются через App Store, а через Android — через Google Play, если иное не указано непосредственно в приложении. К отдельным аспектам оплаты могут применяться правила соответствующего магазина.';

  @override
  String get legalSubscriptionSection4Heading => 'Отмена';

  @override
  String get legalSubscriptionSection4Body =>
      'Ты можешь отменить подписку в соответствующих настройках аккаунта App Store или Google Play. После отмены ты, как правило, сохраняешь доступ до конца уже оплаченного периода, если иное не предусмотрено применимыми правилами или законодательством.';

  @override
  String get legalSubscriptionSection5Heading => 'Возврат средств';

  @override
  String get legalSubscriptionSection5Body =>
      'Право на возврат средств определяется применимым законодательством, условиями договора и правилами соответствующего магазина приложений. Ничто в этом документе не ограничивает обязательные права потребителя.\n\nЕсли применимое законодательство предусматривает право отказаться от дистанционного договора или цифрового контента, эта возможность сохраняется при соблюдении установленных законом условий. Для цифрового контента, предоставление которого уже началось, право на отказ может быть ограничено в случаях, предусмотренных законом, в частности если ты заранее предоставил(-а) чёткое согласие на начало предоставления цифрового контента и был(-а) уведомлён(-а) о последствиях такого согласия.';

  @override
  String get legalSubscriptionSection6Heading => 'Бесплатный период';

  @override
  String get legalSubscriptionSection6Body =>
      'Если Hatchpot предлагает бесплатный пробный период, его продолжительность и условия автоматического перехода на платную подписку указываются до начала пробного периода.';

  @override
  String get legalSubscriptionSection7Heading => 'Изменение цены';

  @override
  String get legalSubscriptionSection7Body =>
      'В случае изменения цены будущего периода подписки ты будешь уведомлён(-а) в порядке, предусмотренном применимым законодательством и правилами соответствующего магазина.';

  @override
  String get legalSubscriptionSection8Heading => 'Ошибочные платежи';

  @override
  String get legalSubscriptionSection8Body =>
      'Если ты считаешь, что с тебя была ошибочно списана сумма, обращайся на leadlife.app@gmail.com. При необходимости ты также можешь воспользоваться процедурой возврата средств соответствующего магазина приложений.';

  @override
  String get legalSubscriptionSection9Heading =>
      'Отмена или приостановка со стороны сервиса';

  @override
  String get legalSubscriptionSection9Body =>
      'Если мы отменяем или приостанавливаем твой доступ по причинам на нашей стороне — а не из-за нарушения тобой этих Условий, — мы не лишаем тебя уже оплаченного.\n\nЕсли ты приобрёл(-а) разовую покупку одного путешествия, доступ к уже оплаченному путешествию сохраняется; если это технически невозможно, мы возвращаем деньги пропорционально неиспользованной части.\n\nЕсли у тебя активна подписка и мы отменяем или приостанавливаем её по причинам на нашей стороне, ты сохраняешь доступ на оставшуюся часть уже оплаченного периода либо получаешь эквивалентное количество дополнительных путешествий или дней доступа взамен утраченного времени — либо пропорциональный возврат средств, если ни один из этих вариантов невозможен.\n\nЭто положение не применяется, если доступ ограничен из-за нарушения тобой этих Условий, требований закона, мошенничества или злоупотреблений.';

  @override
  String get aiDisclaimerHeading => 'ВАЖНАЯ ИНФОРМАЦИЯ';

  @override
  String get aiDisclaimerBody =>
      'Hatchpot предназначен для развлечения, личной рефлексии и самопознания.\n\nHatchpot не является медицинской, психологической, психотерапевтической или психиатрической помощью.\n\nОтветы, которые создаёт искусственный интеллект, могут содержать ошибки, неточности или субъективные интерпретации и не заменяют консультацию квалифицированного специалиста.\n\nНе используй Hatchpot для постановки диагноза, лечения заболевания или принятия решений, требующих профессиональной медицинской, психологической, юридической или финансовой консультации.\n\nHatchpot не предназначен для чрезвычайных ситуаций. Если тебе или другому человеку непосредственно угрожает опасность, обратись за экстренной помощью или к соответствующему специалисту.';

  @override
  String get aiDisclaimerCheckboxLabel =>
      'Мне исполнилось 18 лет. Я ознакомился(-лась) с этой информацией и понимаю, что Hatchpot не является медицинской, психологической или психиатрической помощью, а ответы ИИ могут быть неточными.';

  @override
  String get crisisResourcesHeading => 'Остановимся здесь на минуту';

  @override
  String get crisisResourcesBody =>
      'Похоже, то, что ты написал(-а), заслуживает большего, чем может дать игра. Hatchpot не предназначен для кризисных ситуаций и не заменяет профессиональную помощь.\n\nПожалуйста, обратись к тому, кому доверяешь, к специалисту по психическому здоровью или в службу экстренной помощи в своей стране. Тебе не нужно проходить через это в одиночку.';

  @override
  String get crisisResourcesBackCta => 'Вернуться';

  @override
  String get accountSectionTitle => 'Аккаунт';

  @override
  String get accountAnonymousStatus =>
      'Сейчас твои данные хранятся только на этом устройстве.';

  @override
  String get accountConnectedStatus =>
      'Твои данные безопасно синхронизируются с аккаунтом.';

  @override
  String get resetPasswordAction => 'Сбросить пароль';

  @override
  String get resetPasswordPrompt =>
      'Введи адрес электронной почты, связанный с аккаунтом.';

  @override
  String get resetPasswordSent => 'Ссылка для сброса пароля отправлена.';

  @override
  String get signOutAction => 'Выйти';

  @override
  String get signOutConfirm =>
      'Твоя облачная копия останется в безопасности. Локальные данные будут удалены с этого устройства.';

  @override
  String get deleteAccountAction => 'Удалить аккаунт';

  @override
  String get deleteAccountConfirm =>
      'Это навсегда удалит аккаунт, облачные данные, путешествие, дневник и историю. Отменить это действие невозможно.';

  @override
  String get cancelAction => 'Отмена';

  @override
  String get confirmAction => 'Подтвердить';

  @override
  String get accountActionError =>
      'Что-то пошло не так. Проверь соединение и попробуй снова.';
}
