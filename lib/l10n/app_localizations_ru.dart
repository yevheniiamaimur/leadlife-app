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
  String get aiAssistantLinkCta =>
      '✨ Не знаешь, как выразить это словами? Спроси ассистента';

  @override
  String get aiAssistantTitle => 'Уточни своё желание';

  @override
  String get aiAssistantGreeting =>
      'Какое желание ты берёшь в это путешествие? Расскажи немного о нём, и я помогу выразить его словами.';

  @override
  String get aiAssistantInputHint => 'Напиши ответ…';

  @override
  String get aiAssistantUseThisWish => 'Использовать это желание';

  @override
  String get aiAssistantError =>
      'Ассистент не смог ответить. Проверь соединение и попробуй снова.';

  @override
  String get aiAssistantRetryCta => 'Попробовать снова';

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
  String howItWorksStepOfTotal(int step, int total) {
    return 'Шаг $step из $total';
  }

  @override
  String get howItWorksBeginJourneyCta => 'Начать путешествие';

  @override
  String get howItWorksContinueCta => 'Продолжить';

  @override
  String get howItWorksSlide1Title => 'Что такое путешествие Hatchpot?';

  @override
  String get howItWorksSlide1Para =>
      'Направляемое путешествие, созданное, чтобы помочь тебе понять, чего ты на самом деле хочешь, изменить внутреннее состояние и найти своё направление.';

  @override
  String get howItWorksSlide2Title => 'Начни с одного желания';

  @override
  String get howItWorksSlide2Line1 =>
      'Запиши то, чего хочешь, так, словно это уже стало реальностью.';

  @override
  String get howItWorksSlide2Line2 => 'Сосредоточься на этом.';

  @override
  String get howItWorksSlide2Line3 => 'Затем брось кубик.';

  @override
  String get howItWorksSlide2Para =>
      'В Hatchpot путешествие начинается с уточнения намерения, с которым ты хочешь работать сейчас.';

  @override
  String get howItWorksSlide3Title => 'Позволь кубику вести тебя';

  @override
  String get howItWorksSlide3Line1 => 'Если выпадет 1, твоё желание готово.';

  @override
  String get howItWorksSlide3Line2 => 'Твоё путешествие начинается.';

  @override
  String get howItWorksSlide3Para1 =>
      'Если выпадет другое число, ты получишь подсказку, которая поможет уточнить, переформулировать или переосмыслить желание.';

  @override
  String get howItWorksSlide3Para2 =>
      'Можно уточнить его или выбрать совсем другое.';

  @override
  String get howItWorksSlide4Title => 'Затем начинается твоё путешествие';

  @override
  String get howItWorksSlide4Para1 =>
      'Выбери, как ты хочешь взаимодействовать с Hatchpot, и начни двигаться по своему уникальному пути.';

  @override
  String get howItWorksSlide4Line => 'Система состоит из 32 полей:';

  @override
  String get howItWorksSlide4Line1 => '10 уровней реальности.';

  @override
  String get howItWorksSlide4Line2 => '22 жизненные стратегии.';

  @override
  String get howItWorksSlide4Para2 => 'Твой путь через них уникален.';

  @override
  String get howItWorksSlide5Title => 'Двигайся по своему пути';

  @override
  String get howItWorksSlide5Line1 => 'Брось кубик.';

  @override
  String get howItWorksSlide5Line2 => 'Войди в поле.';

  @override
  String get howItWorksSlide5Line3 =>
      'Ответь на один вопрос или выполни простое задание.';

  @override
  String get howItWorksSlide5Para1 =>
      'Большинство взаимодействий занимает меньше минуты.';

  @override
  String get howItWorksSlide5Para2 =>
      'Каждое поле меняет твой фокус и помогает взглянуть на желание с другой точки зрения.';

  @override
  String get howItWorksSlide6Title => '22 стратегии. Разные способы двигаться.';

  @override
  String get howItWorksSlide6Para1 =>
      'Ты проходишь разные жизненные стратегии — способы думать, выбирать, чувствовать и действовать.';

  @override
  String get howItWorksSlide6Para2 =>
      'Систему не нужно изучать. Просто следуй своему пути.';

  @override
  String get howItWorksSlide6RichTextBefore =>
      'Хочешь понять её устройство? Открой ';

  @override
  String get howItWorksSlide6RichTextAfter => ' «О системе» в меню.';

  @override
  String get howItWorksSlide7Title => 'Твой код успеха';

  @override
  String get howItWorksSlide7Para1 =>
      'В конце путешествия твои ответы соединяются.';

  @override
  String get howItWorksSlide7Line1 => 'Твои решения.';

  @override
  String get howItWorksSlide7Line2 => 'Твои осознания.';

  @override
  String get howItWorksSlide7Line3 => 'Твоё направление.';

  @override
  String get howItWorksSlide7Para2 =>
      'Hatchpot превращает их в твой личный код успеха — карту возвращения к твоему желанию.';

  @override
  String get howItWorksSlide7Para3 => 'Не универсальный ответ.';

  @override
  String get howItWorksSlide7Para4 => 'Твой путь, созданный из твоих ответов.';

  @override
  String get field01Name => 'Свет';

  @override
  String get field01Subtitle => 'Желание';

  @override
  String get field01Intro =>
      'Каждое путешествие начинается с желания.\n\nТвоё желание важно, потому что указывает на что-то значимое для твоего развития.';

  @override
  String get field01Task => 'Какое желание ты берёшь в это путешествие?';

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
      'Каждая цель создаёт влияние.\nПодумай, какую ценность твоё желание приносит другим.';

  @override
  String get field04Task => 'Кто получит пользу, когда ты достигнешь этого?';

  @override
  String get field05Name => 'Ограничение';

  @override
  String get field05Subtitle => 'Устойчивость';

  @override
  String get field05Intro =>
      'Ограничения — естественная часть каждого путешествия.\n\nОни помогают развить силу, необходимую для достижения цели.';

  @override
  String get field05Task =>
      'Какие ограничения у тебя есть сейчас — физические, эмоциональные, финансовые, социальные или другие? Как они помогают тебе развиваться?';

  @override
  String get field06Name => 'Ценности';

  @override
  String get field06Subtitle => 'Подлинность';

  @override
  String get field06Intro =>
      'Твои ценности направляют твои решения.\n\nСамые сильные желания часто связаны с тем, что всегда было для тебя важно.';

  @override
  String get field06Task =>
      'Что всегда было важно для тебя?\n\nОтражает ли это желание твои ценности?\n\nКакие качества были естественными для тебя в детстве?\n\nКакие из них всё ещё живы в тебе?\n\nКак они могут помочь осуществить желание?';

  @override
  String get field07Name => 'Чувства';

  @override
  String get field07Subtitle => 'Эмоциональная осознанность';

  @override
  String get field07Intro =>
      'Чувства — это сигналы, а не препятствия.\n\nОни показывают, что поддерживает твоё желание, а что требует внимания.';

  @override
  String get field07Task =>
      'Какие эмоции ты испытываешь чаще всего? Как они влияют на твоё желание?';

  @override
  String get field08Name => 'Мышление';

  @override
  String get field08Subtitle => 'Ясность';

  @override
  String get field08Intro =>
      'Одни убеждения поддерживают каждое желание, а другие ограничивают его.\n\nЧем яснее ты их видишь, тем больше свободы у тебя в выборе пути.';

  @override
  String get field08Task =>
      'Какие убеждения поддерживают тебя, а какие сдерживают?';

  @override
  String get field09Name => 'Подсознание';

  @override
  String get field09Subtitle => 'Воображение';

  @override
  String get field09Intro =>
      'Твоё подсознание хранит план жизни, которой ты желаешь.';

  @override
  String get field09Task =>
      'Если бы твоё желание уже стало реальностью, какой была бы твоя жизнь? Опиши её.';

  @override
  String get field10Name => 'Реальность';

  @override
  String get field10Subtitle => 'Действие';

  @override
  String get field10Intro => 'Реальность формируется твоими действиями.';

  @override
  String get field10Task =>
      'Запиши 10 действий, которые можно сделать сегодня, чтобы приблизиться к цели.';

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
  String get legalConsentPrefix => 'Я принимаю ';

  @override
  String get legalConsentAnd => ' и ';

  @override
  String get legalConsentSuffix => '.';

  @override
  String get legalPrivacySection1Heading => 'Обзор';

  @override
  String get legalPrivacySection1Body =>
      'Последнее обновление: 20 августа 2026 года. Эта политика объясняет, какую информацию Hatchpot («мы») обрабатывает при использовании приложения Hatchpot, зачем мы это делаем, где она может храниться и какие возможности выбора у тебя есть.';

  @override
  String get legalPrivacySection2Heading => 'Какую информацию мы собираем';

  @override
  String get legalPrivacySection2Body =>
      'Мы обрабатываем информацию, которую ты решаешь ввести: имя, дату рождения, адрес электронной почты, область фокуса, желания, ответы, записи дневника и историю путешествий. Если ты создаёшь аккаунт, Firebase Authentication обрабатывает его идентификатор и данные для входа. Мы также обрабатываем техническую информацию и данные об использовании, необходимые для безопасности, аналитики и диагностики сбоев, включая взаимодействия с приложением, сведения об устройстве и операционной системе, версию приложения и диагностические отчёты. Мы не просим вводить данные платёжной карты.';

  @override
  String get legalPrivacySection3Heading => 'Как мы используем информацию';

  @override
  String get legalPrivacySection3Body =>
      'Мы используем эту информацию, чтобы предоставлять и персонализировать твоё путешествие, создавать персонализированное ИИ-содержимое полей и итоговый анализ, сохранять и синхронизировать прогресс после создания аккаунта, отправлять запрошенные напоминания, защищать сервис, диагностировать сбои, понимать использование функций, улучшать приложение и управлять аккаунтом.';

  @override
  String get legalPrivacySection4Heading => 'Где хранятся твои данные';

  @override
  String get legalPrivacySection4Body =>
      'Сначала информация сохраняется на твоём устройстве. Если используется только анонимный аккаунт, прогресс и дневник не синхронизируются с другим устройством. Если привязать аккаунт, профиль, текущий прогресс, ответы, дневник и история путешествий сохраняются в Google Firebase Cloud Firestore, чтобы их можно было восстановить на другом устройстве. Данные аккаунта обрабатывает Firebase Authentication, а данные об использовании и сбоях могут обрабатывать Firebase Analytics и Firebase Crashlytics. Для персонализации игры мы отправляем желание и выбранную область фокуса в API Anthropic. Для итогового анализа мы отправляем желание, вопросы и ответы с посещённых полей. Anthropic возвращает созданный текст игры и анализ. Согласно стандартной политике хранения API Anthropic, входные и выходные данные обычно удаляются из его систем в течение 30 дней, за исключением ограниченных случаев, связанных с безопасностью, предотвращением злоупотреблений и требованиями закона.';

  @override
  String get legalPrivacySection5Heading => 'Передача информации';

  @override
  String get legalPrivacySection5Body =>
      'Мы не продаём личную информацию и не используем рекламные сети. Мы передаём информацию только в той мере, в которой это необходимо для работы приложения: Google LLC — для облачного хранилища Firebase, аутентификации, аналитики, отчётов о сбоях, App Check и Cloud Functions; Anthropic, PBC и связанным компаниям — для генерации и анализа с помощью ИИ; Apple или Google — если ты выбираешь их сервис входа. Эти поставщики обрабатывают информацию в соответствии со своими условиями и обязательствами по конфиденциальности.';

  @override
  String get legalPrivacySection6Heading => 'Международная передача';

  @override
  String get legalPrivacySection6Body =>
      'Google Firebase и Anthropic могут обрабатывать информацию за пределами твоей страны или Европейской экономической зоны, включая США и другие регионы, где работают их поставщики услуг. Когда это необходимо, передача осуществляется с использованием юридически признанных гарантий.';

  @override
  String get legalPrivacySection7Heading => 'Хранение и удаление данных';

  @override
  String get legalPrivacySection7Body =>
      'Локальная информация удаляется при удалении приложения или очистке его данных. Если аккаунт привязан, в приложении можно удалить его и связанные профиль Firebase, прогресс, дневник и историю путешествий. Данные, уже отправленные Anthropic, обрабатываются по правилам хранения API Anthropic, описанным выше. Некоторые ограниченные записи могут храниться, если это необходимо для безопасности, предотвращения мошенничества, разрешения споров или выполнения требований закона. Также можно написать нам по адресу leadlife.app@gmail.com.';

  @override
  String get legalPrivacySection8Heading => 'Твои права';

  @override
  String get legalPrivacySection8Body =>
      'В зависимости от места проживания у тебя может быть право на доступ, исправление, удаление или экспорт данных, возражение против определённой обработки или её ограничение, а также отзыв согласия, если обработка основана на нём. Напиши на leadlife.app@gmail.com. Перед выполнением запроса нам может потребоваться подтвердить твою личность.';

  @override
  String get legalPrivacySection9Heading => 'Дети';

  @override
  String get legalPrivacySection9Body =>
      'Hatchpot не предназначен для детей младше 16 лет, и мы сознательно не собираем их информацию.';

  @override
  String get legalPrivacySection10Heading => 'Изменения и контакты';

  @override
  String get legalPrivacySection10Body =>
      'Мы можем обновлять эту политику, когда меняется приложение или требования законодательства. Дата обновления будет указана выше, а существенные изменения будут отражены в приложении. Вопросы можно отправлять на leadlife.app@gmail.com.';

  @override
  String get legalTermsSection1Heading => 'Принятие условий';

  @override
  String get legalTermsSection1Body =>
      'Последнее обновление: [заполнить перед публикацией]. Используя Hatchpot, ты принимаешь эти Условия. Если эти Условия тебе не подходят, не используй приложение.';

  @override
  String get legalTermsSection2Heading => 'Сервис';

  @override
  String get legalTermsSection2Body =>
      'Hatchpot — приложение для личного развития и саморефлексии, построенное вокруг твоего желания, путешествия через 32 поля и деликатных напоминаний. Содержимое предоставляется только для развлечения и саморефлексии и не является профессиональной медицинской, психологической, финансовой или юридической консультацией.';

  @override
  String get legalTermsSection3Heading => 'Требования к пользователю';

  @override
  String get legalTermsSection3Body =>
      'Для использования Hatchpot необходимо быть не младше 16 лет или достичь возраста цифрового согласия в своей стране. Ты обязуешься предоставлять точную информацию.';

  @override
  String get legalTermsSection4Heading => 'Аккаунты';

  @override
  String get legalTermsSection4Body =>
      'По умолчанию приложение работает анонимно. При желании можно привязать аккаунт Google, Apple или электронную почту и пароль, чтобы перенести путешествие и покупки на новое устройство. Ты отвечаешь за безопасность своих данных для входа.';

  @override
  String get legalTermsSection5Heading => 'Подписки и платежи';

  @override
  String get legalTermsSection5Body =>
      'Платные планы — это подписки с автоматическим продлением, оплата которых проводится через App Store или Google Play. Цена и условия продления показываются до покупки. Подписку можно отменить в любое время в настройках аккаунта App Store или Google Play; отмена вступит в силу в конце текущего расчётного периода. Возвраты обрабатываются Apple или Google по их правилам.';

  @override
  String get legalTermsSection6Heading => 'Твоё содержимое';

  @override
  String get legalTermsSection6Body =>
      'То, что ты пишешь в приложении, принадлежит тебе. Ты предоставляешь нам ограниченное разрешение хранить и обрабатывать это исключительно для оказания сервиса.';

  @override
  String get legalTermsSection7Heading => 'Допустимое использование';

  @override
  String get legalTermsSection7Body =>
      'Ты обязуешься не использовать приложение незаконно, не вмешиваться в его работу и не выполнять обратное проектирование, декомпиляцию или дизассемблирование.';

  @override
  String get legalTermsSection8Heading => 'Отказ от гарантий и ответственность';

  @override
  String get legalTermsSection8Body =>
      'Hatchpot предоставляется «как есть», без гарантий любого рода. В максимально допустимых законом пределах мы не несём ответственности за косвенный, случайный или последующий ущерб, возникший из-за использования приложения.';

  @override
  String get legalTermsSection9Heading => 'Прекращение';

  @override
  String get legalTermsSection9Body =>
      'Мы можем приостановить или прекратить доступ к приложению при нарушении этих условий. Ты можешь в любое время прекратить использование и удалить аккаунт.';

  @override
  String get legalTermsSection10Heading => 'Применимое право и изменения';

  @override
  String get legalTermsSection10Body =>
      'Эти условия регулируются законодательством [указать юрисдикцию]. Мы можем время от времени обновлять их; существенные изменения будут отражены в приложении. Есть вопросы? Напиши на [адрес службы поддержки].';

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
