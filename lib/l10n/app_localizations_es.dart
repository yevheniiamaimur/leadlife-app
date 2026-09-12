// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get languageTitle => 'Idioma';

  @override
  String get languageSystem => 'El mismo que el teléfono';

  @override
  String get welcomeGreeting => 'Bienvenido';

  @override
  String get whatsYourWish => '¿Cuál es tu deseo?';

  @override
  String get presentPerfectPrompt =>
      'Escríbelo en presente, como si ya se hubiera cumplido.';

  @override
  String get typeItHere => 'Escríbelo aquí…';

  @override
  String get howItWorks => 'Cómo funciona';

  @override
  String get buildSuccessCode => 'Crear el código del éxito';

  @override
  String get navHome => 'Inicio';

  @override
  String get navJournal => 'Diario';

  @override
  String get navDiary => 'Notas';

  @override
  String get seeExample => 'Ver un ejemplo';

  @override
  String get drawerHistory => 'Historial';

  @override
  String get drawerProfile => 'Perfil';

  @override
  String get drawerHelp => 'Ayuda';

  @override
  String get drawerAbout => 'Acerca de';

  @override
  String get stepOneOfThreeIntention => 'Paso 1 de 3 · Tu intención';

  @override
  String get whatDoYouDesire => '¿Qué deseas?';

  @override
  String get wishFieldHint => 'Tengo… / Soy… / Experimento…';

  @override
  String get beSpecificHonestYou => 'Sé concreto. Sé sincero. Sé tú.';

  @override
  String get confirmMyDesire => 'Confirmar mi deseo';

  @override
  String get contactAuthorTitle => 'Contactar con la autora del juego';

  @override
  String get contactAuthorSubtitle =>
      'Si tienes una pregunta, un comentario o necesitas ayuda, puedes escribir directamente.';

  @override
  String get contactAuthorEmailCta => 'Escribir por email';

  @override
  String get contactAuthorInstagramCta => 'Abrir Instagram';

  @override
  String get contactAuthorEmailCopied =>
      'Email copiado: leadlife.app@gmail.com';

  @override
  String onboardingStepOfFive(int step) {
    return 'Paso $step de 5';
  }

  @override
  String get onboardingNameGreeting => 'Hola. Me alegra que estés aquí.';

  @override
  String get onboardingNamePrompt =>
      'Antes de empezar, ¿cómo quieres que te llame?';

  @override
  String get yourNameHint => 'Tu nombre';

  @override
  String get continueButton => 'Continuar';

  @override
  String onboardingBirthdayQuestion(String name) {
    return '¿Cuándo naciste, $name?';
  }

  @override
  String get onboardingBirthdaySubtitle =>
      'Esto nos ayuda a adaptar tu viaje a ti.';

  @override
  String get selectYourBirthday => 'Selecciona tu fecha de nacimiento';

  @override
  String get onboardingContactHeading => 'Sigamos en contacto.';

  @override
  String get onboardingContactSubtitle =>
      '¿Dónde podemos contactarte en relación con tu viaje?';

  @override
  String get emailHint => 'tu@email.com';

  @override
  String get allowGentleReminders =>
      'Permite recordatorios suaves para mantenerte en tu camino.';

  @override
  String get allowSensitiveDataProcessing =>
      'Permite el tratamiento de la información que proporciono, que puede referirse a datos de salud u otros datos personales sensibles, para el funcionamiento de las funciones correspondientes de Hatchpot.';

  @override
  String get comebackReminderTitle => 'Tu camino te espera';

  @override
  String get comebackReminderBody =>
      'Dejaste tu viaje a medias. Vuelve cuando estés listo(a) y continúa.';

  @override
  String get onboardingFocusHeading => '¿Qué ocupa más tu mente\nahora mismo?';

  @override
  String get onboardingFocusSubtitle =>
      'Elige las áreas que requieren tu atención.';

  @override
  String get focusRelationships => 'Relaciones';

  @override
  String get focusCareerPurpose => 'Carrera y propósito';

  @override
  String get focusHealthEnergy => 'Salud y energía';

  @override
  String get focusMoneyAbundance => 'Dinero y abundancia';

  @override
  String get focusInnerPeace => 'Paz interior';

  @override
  String get takeABreathIn => 'Inhala.';

  @override
  String get andOut => 'Y exhala.';

  @override
  String onboardingReadyMessage(String name) {
    return '$name, tu camino está a punto de comenzar.';
  }

  @override
  String get letsStart => 'Empezar';

  @override
  String get yourPathLabel => 'Tu camino';

  @override
  String fieldOfTotal(String num, int total) {
    return 'Campo $num de $total';
  }

  @override
  String get myAnswersLabel => 'Mis respuestas';

  @override
  String enterFieldCta(String num) {
    return 'Entrar en el campo $num  →';
  }

  @override
  String get answersEmptyState => 'Tus respuestas aparecerán aquí.';

  @override
  String fieldBadgeNumber(String num) {
    return 'CAMPO $num';
  }

  @override
  String get receiveMyTaskCta => 'Recibir mi tarea  →';

  @override
  String get readyToBeginPathCta => 'Estoy listo para comenzar mi camino  →';

  @override
  String fieldNumberAndName(String num, String name) {
    return 'CAMPO $num · $name';
  }

  @override
  String get yourAnswerHint => 'Tu respuesta…';

  @override
  String get taskLabel => 'Tarea';

  @override
  String get saveMyAnswerCta => 'Guardar mi respuesta';

  @override
  String get saveProgressError =>
      'No se pudo guardar tu progreso. Comprueba el almacenamiento del dispositivo.';

  @override
  String get answerReceivedHeading => 'Hemos recibido tu respuesta.';

  @override
  String walkedThroughField(String fieldName) {
    return 'Has recorrido $fieldName. El camino continúa.';
  }

  @override
  String get rollForNextFieldCta => 'Lanzar para el siguiente campo';

  @override
  String get finalTurnLabel => 'El turno final';

  @override
  String get pathContinuesLabel => 'El camino continúa';

  @override
  String get yourDesireLabel => 'Tu deseo';

  @override
  String get currentAreaOfActionColon => 'Tu área de acción actual:';

  @override
  String get reachedFinalPathText => 'Has llegado al tramo final.';

  @override
  String get youAreNowOnText => 'Ahora estás en';

  @override
  String get finalTurnInstructions =>
      'Has recorrido los 32 caminos. Un último turno para saber dónde te encuentras ahora.';

  @override
  String onFieldWhereWillPathLead(String num) {
    return 'Estás en el campo $num. ¿Adónde te llevará el camino?';
  }

  @override
  String get fromThisPlaceLabel => 'Desde este lugar';

  @override
  String arrivingAtField(String num) {
    return 'Llegada · Campo $num';
  }

  @override
  String get wheelTurnsOnceMore => 'La rueda gira una vez más…';

  @override
  String get pathTurnsEllipsis => 'El camino gira…';

  @override
  String get rollingEllipsis => 'Lanzando…';

  @override
  String get rollFinalDiceCta => 'Lanzar el dado final';

  @override
  String get rollDiceCta => 'Lanzar el dado';

  @override
  String get receiveSuccessCodeCta => 'Recibir mi código del éxito  →';

  @override
  String enterFieldNameCta(String name) {
    return 'Entrar en $name  →';
  }

  @override
  String get journeyCompleteHeading => 'Tu viaje\nha terminado';

  @override
  String get journeyCompleteSubtext =>
      'Has recorrido los 32 caminos.\nEste es tu código del éxito.';

  @override
  String get yourOriginalDesireLabel => 'Tu deseo original';

  @override
  String get currentAreaOfActionLabel => 'Tu área de acción actual';

  @override
  String get whatYouHaveDiscoveredLabel => 'Lo que has descubierto';

  @override
  String get preparingPdfCta => 'Preparando PDF…';

  @override
  String get savePdfCta => 'Guardar como PDF';

  @override
  String get startNewJourneyCta => 'Empezar un nuevo viaje';

  @override
  String get goldenFishClosingLine =>
      'El pez dorado ya está en camino.\nTu tarea es creer y actuar.';

  @override
  String get yourAnalysisLabel => 'Tu análisis';

  @override
  String get yourNextDirectionLabel => 'Tu próxima dirección';

  @override
  String get recommendedStepsLabel => 'Próximos pasos recomendados';

  @override
  String get todaysIntentionHeading => 'La intención de hoy';

  @override
  String get todaysIntentionSubtitle =>
      'Tu resultado sigue a tu intención: escríbela.';

  @override
  String get diaryIntentionHint => 'Escribe tu intención para hoy…';

  @override
  String get saveButton => 'Guardar';

  @override
  String get checkButton => 'Comprobar';

  @override
  String get diarySaveError =>
      'No se pudo guardar. Comprueba el almacenamiento del dispositivo.';

  @override
  String get diaryEmptyState => 'Tus intenciones aparecerán aquí.';

  @override
  String get yourJourneysHeading => 'Tus viajes';

  @override
  String get journeysSubtitle =>
      'Cada deseo que has formulado y hasta dónde te ha llevado.';

  @override
  String get journeysEmptyState => 'Tus viajes aparecerán aquí.';

  @override
  String journeyCompletedOn(String date) {
    return 'Completado · $date';
  }

  @override
  String get journeyInProgress => 'En curso';

  @override
  String journeyFieldsProgress(int count, int total) {
    return '$count / $total campos';
  }

  @override
  String get yourProfileFallback => 'Tu perfil';

  @override
  String get profileNoDataMessage =>
      'Aún no tenemos tus datos; se recopilan durante la bienvenida.';

  @override
  String get profileBirthdayLabel => 'Fecha de nacimiento';

  @override
  String get profileEmailLabel => 'Correo electrónico';

  @override
  String get profileFocusLabel => 'Enfoque';

  @override
  String get helpSubtitle => 'Respuestas a las preguntas más frecuentes.';

  @override
  String get helpFaqWhatIsLeadlifeQ => '¿Qué es Hatchpot?';

  @override
  String get helpFaqWhatIsLeadlifeA =>
      'Un viaje guiado en torno a una intención que eliges, para ayudarte a aclarar lo que quieres, cambiar tu estado interior y encontrar tu dirección.';

  @override
  String get helpFaqDiceQ => '¿Cómo funciona el dado?';

  @override
  String get helpFaqDiceA =>
      'Lánzalo para saber si tu intención está preparada. Si lo está, comienza tu viaje. Si no, recibirás una pista para precisarla e intentarlo de nuevo.';

  @override
  String get helpFaqStuckFieldQ =>
      '¿Qué hago si me quedo atascado en un campo?';

  @override
  String get helpFaqStuckFieldA =>
      'Responde con sinceridad y en pocas palabras. No hay respuestas incorrectas: cada campo simplemente cambia tu enfoque por un momento.';

  @override
  String get helpFaqSavedIntentionsQ => '¿Dónde se guardan mis intenciones?';

  @override
  String get helpFaqSavedIntentionsA =>
      'Todo lo que guardes en la pestaña Notas permanecerá en su historial, en tu dispositivo.';

  @override
  String get helpFaqChangeIntentionQ =>
      '¿Puedo cambiar mi intención más adelante?';

  @override
  String get helpFaqChangeIntentionA =>
      'Sí. Escribe una nueva cuando quieras desde la pestaña Notas y compárala con tu camino.';

  @override
  String get aboutHeading => 'Acerca del sistema';

  @override
  String get aboutIntro =>
      'Hatchpot se basa en 32 campos dispuestos en un camino continuo.';

  @override
  String get tenLevelsHeading => '10 niveles de realidad';

  @override
  String get tenLevelsBody =>
      'Las capas que recorre tu intención, desde las circunstancias concretas de tu vida hasta los estados más profundos que hay detrás.';

  @override
  String get lifeStrategiesHeading => '22 estrategias de vida';

  @override
  String get lifeStrategiesBody =>
      'Distintas formas de pensar, elegir, sentir y actuar. No necesitas estudiarlas: simplemente recorres aquellas a las que te conduce tu camino.';

  @override
  String get successCodeHeading => 'Tu código del éxito';

  @override
  String get successCodeBody =>
      'Al final del viaje, tus decisiones y descubrimientos se unen en un código personal: no es una respuesta universal, sino un mapa para volver a tu deseo.';

  @override
  String get helpModalExampleLabel => 'Un ejemplo';

  @override
  String get helpModalNamingHeading => 'Cómo formular un deseo';

  @override
  String get helpModalYesLabel => 'SÍ — PRESENTE';

  @override
  String get helpModalNoLabel => 'TODAVÍA NO — FUTURO';

  @override
  String get helpModalGoodExample =>
      '«He construido una vida en la que mi trabajo y mi verdad son una misma cosa».';

  @override
  String get helpModalBadExample => '«Quiero construir una vida en la que…»';

  @override
  String get helpModalClosingText =>
      'Habla como si ya se hubiera cumplido.\nEl camino responde a la certeza.';

  @override
  String get helpModalUnderstandCta => 'Lo entiendo';

  @override
  String get diceStepTwoOfThree => 'Paso 2 de 3';

  @override
  String get diceScreenTitle => 'Despertar el camino';

  @override
  String get diceYourIntentionLabel => 'Tu intención';

  @override
  String get diceClueYesTitle => 'Sí';

  @override
  String get diceClueYesText =>
      'Tu deseo está preparado. El camino puede comenzar.';

  @override
  String get diceClueConnectionsTitle => 'Conexiones';

  @override
  String get diceClueConnectionsText =>
      '¿Quién está relacionado con este deseo? Confía en tu intuición. ¿Hay una persona, relación o colaboración que forme parte de él? Añade lo que sientas adecuado.';

  @override
  String get diceClueClarityTitle => 'Claridad';

  @override
  String get diceClueClarityText =>
      'Haz que tu deseo sea más concreto. Añade detalles para expresar con claridad exactamente lo que quieres.';

  @override
  String get diceClueExpansionTitle => 'Expansión';

  @override
  String get diceClueExpansionText =>
      'Piensa en grande. Amplía tu horizonte. ¿Cómo podría este deseo volverse aún más significativo o inspirador?';

  @override
  String get diceClueFreedomTitle => 'Libertad';

  @override
  String get diceClueFreedomText =>
      '¿Contiene tu deseo alguna limitación oculta? Reformúlalo para que te aporte libertad, posibilidades y fuerza en lugar de restricciones.';

  @override
  String get diceClueMeaningTitle => 'Significado';

  @override
  String get diceClueMeaningText =>
      '¿Qué hace que este deseo sea realmente importante para ti? Añade tus valores personales y su significado más profundo.';

  @override
  String get diceClueFeelingsTitle => 'Sentimientos';

  @override
  String get diceClueFeelingsText =>
      '¿Cómo quieres sentirte cuando este deseo se haga realidad? Añade esas emociones a tu deseo: también importan.';

  @override
  String get diceClueExpressionTitle => 'Expresión';

  @override
  String get diceClueExpressionText =>
      'Reescribe tu deseo. Elige palabras que se sientan más ligeras, claras y naturales. A veces una formulación diferente lo cambia todo.';

  @override
  String get diceUniverseListens => 'El universo escucha…';

  @override
  String get diceRollingLabel => 'Lanzando…';

  @override
  String get diceRollLabel => 'Lanzar';

  @override
  String get diceRollAgainLabel => 'Lanzar de nuevo';

  @override
  String get diceEnterFirstFieldCta => 'Entrar en el primer campo  →';

  @override
  String get diceRefineMyDesire => 'Precisar mi deseo';

  @override
  String get paywallHeadlineLine1 => 'Tu deseo ha dicho que sí.';

  @override
  String get paywallHeadlineLine2 => 'Tu camino está preparado.';

  @override
  String get paywallSubheading => 'Elige hasta dónde quieres llegar.';

  @override
  String get paywallSeeDetails => 'Ver detalles';

  @override
  String get paywallChooseThisPathCta => 'Elegir este camino';

  @override
  String get accountLinkHeadline => 'Protege tu viaje';

  @override
  String get accountLinkSubtitle =>
      'Crea una cuenta para conservar tu viaje y tu compra incluso si cambias de teléfono.';

  @override
  String get continueWithApple => 'Continuar con Apple';

  @override
  String get continueWithGoogle => 'Continuar con Google';

  @override
  String get continueWithEmail => 'Continuar con el correo electrónico';

  @override
  String get accountLinkPasswordHint => 'Crea una contraseña';

  @override
  String get createAccountCta => 'Crear una cuenta';

  @override
  String get accountLinkSkip => 'Quizá más tarde';

  @override
  String get accountLinkErrorGeneric => 'Algo salió mal. Inténtalo de nuevo.';

  @override
  String get purchasePendingMessage =>
      'Tu compra está pendiente de aprobación. Activaremos Hatchpot Plus en cuanto se confirme.';

  @override
  String get purchaseErrorGeneric =>
      'Algo salió mal con la compra. Inténtalo de nuevo.';

  @override
  String get restorePurchasesAction => 'Restaurar compras';

  @override
  String get restorePurchasesSuccess => 'Tus compras se han restaurado.';

  @override
  String get hatchpotPlusActiveStatus => 'Hatchpot Plus está activo.';

  @override
  String get hatchpotPlusInactiveStatus => 'Hatchpot Plus no está activo.';

  @override
  String get paywallTariffOneJourneyTitle => 'Un viaje';

  @override
  String get paywallTariffOneJourneyTagline => 'Un deseo, una dirección';

  @override
  String get paywallFeatureQuestionnairesToEndPractices =>
      'Cuestionarios y prácticas finales';

  @override
  String get paywallFeatureFinalDirection => 'Dirección final';

  @override
  String get paywallFeaturePersonalJournal => 'Diario personal';

  @override
  String get paywallTariffLeadlifePassTitle => 'Hatchpot Pass';

  @override
  String get paywallTariffLeadlifePassTagline => 'Profundiza cuando quieras';

  @override
  String get paywallFeatureUnlimitedJourneys => 'Viajes ilimitados';

  @override
  String get paywallFeatureFullJourneyHistory => 'Historial completo de viajes';

  @override
  String get paywallFeatureNewPractices => 'Nuevas prácticas';

  @override
  String get awakenedStepThreeOfThree => 'Paso 3 de 3';

  @override
  String get awakenedFieldOneAwaits => 'El campo 01 te espera';

  @override
  String get awakenedJourneyBegunTitle => 'Tu viaje\nha comenzado.';

  @override
  String get awakenedPathRespondBody =>
      'El camino responderá a tu intención.\nRecórrelo con paciencia.';

  @override
  String get awakenedHeldInLight => 'Sostenido en la luz';

  @override
  String get awakenedEnterFieldOneCta => 'Entrar en el campo 01  →';

  @override
  String get howItWorksBeginJourneyCta => 'Comenzar tu viaje';

  @override
  String get howItWorksContinueCta => 'Continuar';

  @override
  String get howItWorksSlide1Title => 'Un camino estructurado de vuelta a ti';

  @override
  String get howItWorksSlide1Body =>
      'Hatchpot es un sistema de autorreflexión que te conecta con tu ser interior a través del juego, el símbolo y la intuición.';

  @override
  String get howItWorksSlide2Title => 'El dado escucha tu inconsciente';

  @override
  String get howItWorksSlide2Body =>
      'Escribe tu deseo y lanza el dado.\n\nSi sale 1, está listo y tu viaje comienza.\n\nCualquier otro número es una pista para ayudarte a afinarlo o cambiarlo.';

  @override
  String get howItWorksSlide3Title => '32 campos. Tu propio camino';

  @override
  String get howItWorksSlide3Body =>
      'Recorrerás 10 niveles de realidad y 22 estrategias de vida — distintas formas de pensar, sentir y actuar.\n\nLanza el dado, responde una pregunta, sigue adelante. La mayoría de los pasos toman menos de un minuto.';

  @override
  String get howItWorksSlide4Title => 'Construye tu código del éxito';

  @override
  String get howItWorksSlide4Body =>
      'Cada respuesta se convierte en parte de un código personal — un mapa de regreso a tu deseo.\n\nNo es una respuesta universal. Solo tu camino.';

  @override
  String get field01Name => 'Luz';

  @override
  String get field01Subtitle => 'Deseo';

  @override
  String get field01Intro =>
      'En Hatchpot, la Luz es el comienzo simbólico: la energía que ya está presente en tu idea.\n\nEl deseo que escribiste refleja algo realmente importante para ti. Deja que su valor te acompañe al comenzar tu camino.';

  @override
  String get field01Task => '';

  @override
  String get field02Name => 'Conexión';

  @override
  String get field02Subtitle => 'Iniciativa';

  @override
  String get field02Intro =>
      'Toda idea nace como una chispa.\n\nEl crecimiento comienza cuando la compartes con el mundo.\nTodo deseo tiene un origen.\nRecuerda cuándo apareció este sueño por primera vez en tu vida.';

  @override
  String get field02Task =>
      '¿Cuándo apareció este deseo por primera vez en tu vida?\n\n¿Con quién podrías compartirlo hoy para apoyar su realización?';

  @override
  String get field03Name => 'Forma';

  @override
  String get field03Subtitle => 'Visión';

  @override
  String get field03Intro =>
      'Un deseo se vuelve real cuando adquiere una forma clara.\nImagina cómo se ve el éxito para ti.';

  @override
  String get field03Task => '¿Cómo se ve el éxito para ti?';

  @override
  String get field04Name => 'Escala';

  @override
  String get field04Subtitle => 'Contribución';

  @override
  String get field04Intro =>
      'Un deseo necesita una estructura que pueda sostener su energía y sus acciones.\n\nEste campo está conectado con la escala, la expansión y la bondad.';

  @override
  String get field04Task =>
      '¿Por qué es valioso para el mundo que tu deseo se haga realidad? Escribe tantos puntos como sientas.\n\nYo doy al mundo __________, y el mundo me acepta y me brinda oportunidades y apoyo.';

  @override
  String get field05Name => 'Limitación';

  @override
  String get field05Subtitle => 'Resiliencia';

  @override
  String get field05Intro =>
      'Los obstáculos son una etapa normal de todo proceso de transformación.\n\nMira de nuevo lo que se interpone en tu camino: quizá ya esté mostrando la fuerza que crece dentro de ti.';

  @override
  String get field05Task =>
      '¿Qué te parece una limitación en este momento? ¿Qué cualidad o comportamiento positivo te está enseñando?';

  @override
  String get field06Name => 'Valores';

  @override
  String get field06Subtitle => 'Autenticidad';

  @override
  String get field06Intro =>
      'Tu deseo refleja una parte de ti que está lista para manifestarse.\n\nObserva en quién te conviertes para ti y para el mundo cuando se realiza, y qué valor hay detrás. Este campo también refleja al niño interior y el amor.';

  @override
  String get field06Task =>
      '¿Qué parte de ti expresa este deseo? ¿En quién te conviertes para ti y para el mundo cuando se realiza? ¿Qué valor hay detrás?\n\nMe reconozco como __________ y utilizo estas cualidades para realizar lo que me propongo.';

  @override
  String get field06CodeInstruction =>
      'Escribe las cualidades que estás listo para manifestar y quieres expresar en tu vida.';

  @override
  String get field07Name => 'Sentimientos';

  @override
  String get field07Subtitle => 'Conciencia emocional';

  @override
  String get field07Intro =>
      'Este campo muestra la dimensión emocional de tu petición. Las emociones son señales. Si no las reprimes, sino que las atraviesas, la energía empieza a ir en la dirección correcta.\n\nEste campo funciona como un filtro de preparación: muestra qué estados están frenando el movimiento ahora y cuáles abren el camino.';

  @override
  String get field07Task =>
      '¿Qué emociones vives con más frecuencia específicamente en relación con tu petición? ¿Hay alguna emoción o ciclo emocional repetitivo en el que sientas que te quedas atrapado? ¿Qué suele provocar estos estados?\n\nSuelto __________ y permito que la energía vaya hacia la realización de mi petición.';

  @override
  String get field08Name => 'Pensamiento';

  @override
  String get field08Subtitle => 'Claridad';

  @override
  String get field08Intro =>
      'Este campo muestra qué pensamientos y creencias rodean tu petición. Algunas creencias apoyan el movimiento, mientras que otras pueden limitar silenciosamente la manifestación.\n\nCuando las ves con claridad, puedes elegir una nueva dirección.';

  @override
  String get field08Task =>
      '¿Qué piensas realmente sobre tu petición? ¿Qué creencias o supuestos pueden estar bloqueando su realización?\n\nTransformo las creencias limitantes en libertad de manifestación.';

  @override
  String get field09Name => 'Subconsciente';

  @override
  String get field09Subtitle => 'Imaginación';

  @override
  String get field09Intro =>
      'El subconsciente guarda todos los acontecimientos y experiencias pasadas, así como las probabilidades futuras.\n\nA través de este campo, nos sintonizamos con la rama de probabilidad deseada.';

  @override
  String get field09Task =>
      'Imagina la realización de tu petición desde el corazón. ¿Qué imagen ves? Descríbela en puntos breves: qué ocurre, dónde estás, qué sientes y qué ya se ha vuelto real.';

  @override
  String get field10Name => 'Realidad';

  @override
  String get field10Subtitle => 'Acción';

  @override
  String get field10Intro =>
      'Este campo trata sobre la realidad y el mundo físico. Aquí, la petición empieza a pasar de la idea, el sentimiento y la imagen a acciones concretas.\n\nSi tu petición está relacionada con la materia, el dinero, el cuerpo o un resultado visible, este campo es especialmente importante.';

  @override
  String get field10Task =>
      'Escribe 10 acciones que, desde tu punto de vista, ayudarán a realizar tu petición. Intenta que la mayoría sean acciones que puedas hacer hoy, al menos la mitad.';

  @override
  String get field11Name => 'Posibilidad';

  @override
  String get field11Subtitle => 'Confianza';

  @override
  String get field11Intro =>
      'Dentro de cada deseo existe la posibilidad de que se haga realidad.';

  @override
  String get field11Task =>
      '¿Crees realmente que tu deseo es posible? Si es así, ¿puedes confiar en el proceso?';

  @override
  String get field12Name => 'Voluntad';

  @override
  String get field12Subtitle => 'Ingenio';

  @override
  String get field12Intro => 'Tu voluntad es tu recurso más poderoso.';

  @override
  String get field12Task => '¿Qué recursos tienes ya para cumplir tu deseo?';

  @override
  String get field13Name => 'Intuición';

  @override
  String get field13Subtitle => 'Silencio interior';

  @override
  String get field13Intro => 'Tu voz interior siempre conoce el camino.';

  @override
  String get field13Task => '¿Qué te dice tu voz interior sobre este deseo?';

  @override
  String get field14Name => 'Creación';

  @override
  String get field14Subtitle => 'Creatividad';

  @override
  String get field14Intro =>
      'Toda realidad comienza como una posibilidad.\n\nLa creación es el puente entre una idea y su expresión.\n\nLa creación convierte las posibilidades en realidad.\n\nCada día creas algo mediante tus acciones, tu energía y tu atención.';

  @override
  String get field14Task =>
      '¿Cómo puede adquirir este deseo su primera forma?\n\n¿Qué estás creando ya en tu vida?';

  @override
  String get field15Name => 'Poder';

  @override
  String get field15Subtitle => 'Gestión';

  @override
  String get field15Intro =>
      'El poder comienza con la estructura.\n\nSolo puedes gestionar lo que tiene estructura.\n\nLo que puedes gestionar, puedes mejorarlo.';

  @override
  String get field15Task =>
      '¿Qué necesitas gestionar para acercarte a tu objetivo?\n\nCreo estructura en __________ para construir __________.';

  @override
  String get field16Name => 'Conocimiento';

  @override
  String get field16Subtitle => 'Experiencia';

  @override
  String get field16Intro =>
      'El conocimiento adquiere valor cuando lo utilizas.\n\nLa verdadera sabiduría aparece mediante la acción.\n\nEl conocimiento adecuado puede mostrarte el siguiente paso.';

  @override
  String get field16Task =>
      '¿Tienes ya conocimientos suficientes para alcanzar tu objetivo?\n\nSi es así, ¿qué conocimientos te ayudarán?\n\nSi no, ¿dónde puedes encontrar los que necesitas?\n\nEl conocimiento que me ayudará a avanzar es __________.\n\nPuedo obtener nuevos conocimientos de __________.';

  @override
  String get field17Name => 'Elección';

  @override
  String get field17Subtitle => 'Confianza en ti';

  @override
  String get field17Intro =>
      'Cada elección da forma a la persona en quien te conviertes.\n\nCuando eliges lo que realmente te pertenece, avanzas con confianza.\n\nTu corazón ya sabe qué se siente verdadero.\n\nConfía lo suficiente en ti para elegirlo.';

  @override
  String get field17Task =>
      '¿Qué sientes que es realmente adecuado para ti?\n\nElijo __________ porque me pertenece.';

  @override
  String get field18Name => 'Movimiento';

  @override
  String get field18Subtitle => 'Disciplina';

  @override
  String get field18Intro =>
      'Tu deseo requiere disciplina.\nMediante pasos pequeños y constantes puedes acercarte a lo que quieres.';

  @override
  String get field18Task =>
      '¿Qué acción estás dispuesto a realizar con disciplina para alcanzar tu deseo?\n\n¿Durante cuánto tiempo estás dispuesto a mantenerla?\n\nHaré __________ con regularidad durante __________ para acercarme a mi deseo.';

  @override
  String get field19Name => 'Verdad';

  @override
  String get field19Subtitle => 'Sinceridad';

  @override
  String get field19Intro =>
      'El progreso comienza al ver las cosas como son.\n\nLa verdad crea la base del cambio.';

  @override
  String get field19Task =>
      '¿Qué es verdad para ti ahora mismo?\n\nMi verdad ahora mismo es __________.\n\nPara acercarme a mi deseo, tengo la intención de mejorar __________.';

  @override
  String get field20Name => 'Propósito';

  @override
  String get field20Subtitle => 'Valentía';

  @override
  String get field20Intro =>
      'Un objetivo significativo beneficia a más personas, no solo a ti.\n\nCuando tu deseo sirve a un propósito mayor, se vuelve más fuerte.\n\nSeguir tu propio camino requiere valentía.\n\nCuanto más significativo sea tu objetivo, a más personas podrá inspirar y ayudar.';

  @override
  String get field20Task =>
      '¿Cómo podría beneficiar tu deseo a otras personas?\n\nEscribe 10 formas en las que tu deseo podría ayudarlas.';

  @override
  String get field21Name => 'Cambio';

  @override
  String get field21Subtitle => 'Flexibilidad';

  @override
  String get field21Intro =>
      'La vida sigue avanzando.\n\nNo puedes controlar cada cambio, pero puedes aprender a moverte con él.';

  @override
  String get field21Task =>
      '¿Qué está comenzando a desplegarse ahora en tu vida?\n\nSuelto el control sobre __________ y permito que la vida avance.\n\nNoto que __________ está comenzando a desplegarse en mi vida.\n\nEmpiezo a hacer __________ para desarrollar __________.';

  @override
  String get field22Name => 'Equilibrio';

  @override
  String get field22Subtitle => 'Dominio personal';

  @override
  String get field22Intro =>
      'La verdadera fuerza no consiste en imponer.\n\nEs la capacidad de equilibrar el poder y la delicadeza.';

  @override
  String get field22Task =>
      '¿En qué aspecto de tu vida podrías dejar de forzar y empezar a responder con equilibrio?\n\n¿Dónde podrías emplear menos fuerza y más equilibrio?\n\nMi fortaleza es que puedo __________ sin forzar, controlar ni luchar.';

  @override
  String get field23Name => 'Observación';

  @override
  String get field23Subtitle => 'Conciencia';

  @override
  String get field23Intro =>
      'A veces, una pausa también es un paso adelante.\n\nAl observar, comienzas a ver las cosas de otra manera.';

  @override
  String get field23Task =>
      '¿Qué estás intentando forzar ahora?\n\nDetente durante un minuto y observa.\n\n¿Qué ves ahora de forma diferente?\n\nAl bajar el ritmo, comprendo __________.';

  @override
  String get field24Name => 'Transformación';

  @override
  String get field24Subtitle => 'Capacidad de cambiar';

  @override
  String get field24Intro =>
      'Crecer requiere cambiar.\n\nPara crear algo nuevo, quizá necesites soltar algo antiguo.';

  @override
  String get field24Task =>
      '¿A qué sigues aferrándote aunque ya no te sirve?\n\n¿Qué necesita cambiar en ti para alcanzar tu objetivo?\n\nSuelto __________ para convertirme en quien soy.';

  @override
  String get field25Name => 'Intención';

  @override
  String get field25Subtitle => 'Enfoque';

  @override
  String get field25Intro =>
      'Aquello en lo que te concentras crece.\n\nUna intención clara da dirección y sentido a tu deseo.';

  @override
  String get field25Task =>
      '¿Por qué te importa este deseo?\n\nEste deseo me importa porque __________.';

  @override
  String get field26Name => 'Apego';

  @override
  String get field26Subtitle => 'Sinceridad contigo';

  @override
  String get field26Intro =>
      'No todo aquello a lo que te aferras te pertenece realmente.\n\nA veces el miedo se disfraza de deseo.';

  @override
  String get field26Task =>
      '¿Qué haces porque temes no hacerlo?\n\nUn objetivo que ya no siento verdaderamente mío es __________.\n\nUna intención que todavía siento verdadera es __________.';

  @override
  String get field27Name => 'Ruptura';

  @override
  String get field27Subtitle => 'Resiliencia';

  @override
  String get field27Intro =>
      'A veces algo antiguo necesita desmoronarse antes de que puedas avanzar.\n\nCuando tus pensamientos y sentimientos trabajan juntos, tu camino se vuelve más claro.';

  @override
  String get field27Task =>
      '¿Qué piensas sobre tu deseo?\n\n¿Qué sientes respecto a él?\n\n¿Existe una contradicción entre ambas cosas?\n\nSi la hay, intenta unir tus pensamientos y sentimientos.\n\n¿Qué necesitan escuchar tus sentimientos?\n\n¿Qué necesitan comprender tus pensamientos?';

  @override
  String get field28Name => 'Guía';

  @override
  String get field28Subtitle => 'Armonía con el flujo';

  @override
  String get field28Intro =>
      'La vida fluye al recibir y al dar.\n\nCuanto más te abres a este flujo, más fácil resulta seguir tu camino.';

  @override
  String get field28Task =>
      '¿Hacia dónde te guía este deseo?\n\nMi deseo me guía hacia __________.\n\nElijo ser yo y confiar en el flujo, incluso si __________.';

  @override
  String get field29Name => 'Percepción';

  @override
  String get field29Subtitle => 'Sensibilidad';

  @override
  String get field29Intro =>
      'No todo puede verse con claridad.\n\nA veces la única forma de avanzar es confiar en lo que sientes.';

  @override
  String get field29Task =>
      '¿Qué temes afrontar?\n\nEstoy preparado para afrontar __________.\n\nMe encuentro con la sombra que __________.';

  @override
  String get field30Name => 'Integración';

  @override
  String get field30Subtitle => 'Reconocimiento';

  @override
  String get field30Intro =>
      'Comienzas a reconocerte en una nueva realidad.\n\nCuanto más claramente veas en quién te estás convirtiendo, más fácil será integrar esta identidad en tu vida.';

  @override
  String get field30Task =>
      '¿Quién eres cuando este deseo ya forma parte de tu vida?\n\n¿Quién eres cuando este deseo ya se ha cumplido?\n\nSoy una persona que __________.\n\nMe reconozco como alguien que __________.';

  @override
  String get field31Name => 'Despertar';

  @override
  String get field31Subtitle => 'Acción';

  @override
  String get field31Intro =>
      'Ya sabes lo suficiente.\n\nLa pregunta ya no es qué quieres. La pregunta es si estás preparado para actuar.';

  @override
  String get field31Task =>
      '¿Qué acción ya no puedes posponer?\n\n¿Qué acción sabes que necesitas realizar?\n\nEstoy preparado para actuar y __________.\n\nDespierto y paso a la acción al __________.';

  @override
  String get field32Name => 'Plenitud';

  @override
  String get field32Subtitle => 'Valentía';

  @override
  String get field32Intro =>
      'La plenitud comienza cuando reúnes todas las partes de ti.\n\nPuede que todavía sientas miedo, pero estás preparado para dar el siguiente paso.';

  @override
  String get field32Task =>
      '¿Qué miedos siguen interponiéndose entre tú y tu siguiente paso?\n\nReconozco estos miedos y, aun así, elijo avanzar hacia __________.';

  @override
  String get pdfJourneyReportLabel => 'Informe de tu viaje';

  @override
  String get pdfJourneyCompleteHeading => 'Tu viaje\nha terminado';

  @override
  String get pdfWalkedAllPathsLine => 'Has recorrido los 32 caminos.';

  @override
  String get pdfYourDesireLabel => 'TU DESEO';

  @override
  String get pdfCurrentAreaOfActionLabel => 'TU ÁREA DE ACCIÓN ACTUAL';

  @override
  String get pdfWhatYouHaveDiscoveredLabel => 'LO QUE HAS DESCUBIERTO';

  @override
  String get pdfNoAnswersRecorded => 'No hay respuestas guardadas.';

  @override
  String get privacyPolicyLabel => 'Política de privacidad';

  @override
  String get termsOfUseLabel => 'Condiciones de uso';

  @override
  String get subscriptionTermsLabel =>
      'Condiciones de suscripción y reembolsos';

  @override
  String get legalConsentPrefix => 'Acepto las ';

  @override
  String get legalConsentAnd => ' y la ';

  @override
  String get legalConsentSuffix => '.';

  @override
  String get legalPrivacySection1Heading => 'Resumen';

  @override
  String get legalPrivacySection1Body =>
      'Última actualización: 9 de septiembre de 2026. Esta Política de privacidad explica qué información trata Hatchpot, con qué finalidad, a quién puede comunicarse, dónde puede almacenarse y qué derechos tiene el usuario.\n\nHatchpot («Hatchpot», «nosotros» o «nuestro servicio») es una aplicación digital para la reflexión personal, el autoconocimiento y el entretenimiento que utiliza tecnologías de inteligencia artificial.\n\nEl operador de Hatchpot es Maimur Yevheniia Feliksivna, empresaria individual registrada conforme a la legislación ucraniana.\n\nDatos de registro y de contacto: РНОКПП (número de identificación fiscal) 3743203085; dirección de registro: Calle Zhukovskoho 2, Dnipró, 49000, Ucrania; correo electrónico: leadlife.app@gmail.com.';

  @override
  String get legalPrivacySection2Heading => 'Qué información tratamos';

  @override
  String get legalPrivacySection2Body =>
      'Información que proporcionas tú mismo: según las funciones que utilices, puede incluir tu nombre o el nombre elegido; tu fecha de nacimiento; tu correo electrónico; el área de enfoque elegida; tu deseo o intención; tus respuestas a las preguntas; las entradas del diario; el historial de tu viaje por la aplicación; el contenido de las solicitudes a las funciones de inteligencia artificial; y cualquier otra información que indiques en texto libre.\n\nDatos de la cuenta: si creas o vinculas una cuenta, Firebase Authentication trata los datos correspondientes: el identificador de la cuenta, el correo electrónico y los datos técnicos necesarios para la autenticación.\n\nInformación técnica: el tipo y modelo del dispositivo, el sistema operativo, la versión de la aplicación, los identificadores técnicos, los datos sobre la interacción con la aplicación, la información de diagnóstico y los informes de fallos. Firebase Analytics y Firebase Crashlytics pueden utilizarse para análisis y diagnóstico. No te pedimos que introduzcas datos de tarjetas de pago.';

  @override
  String get legalPrivacySection3Heading => 'Información sensible';

  @override
  String get legalPrivacySection3Body =>
      'Algunas de tus anotaciones —en especial las entradas del diario, las respuestas a las preguntas o el texto libre— pueden contener potencialmente información sobre salud, estado psicológico, creencias, relaciones u otras circunstancias personales.\n\nNo te exigimos que proporciones ese tipo de información para usar la aplicación, pero puedes introducirla voluntariamente en el campo correspondiente. Si aportas voluntariamente información perteneciente a categorías especiales de datos personales, se trata únicamente en la medida necesaria para la función correspondiente y sobre la base jurídica aplicable.\n\nNo introduzcas en la aplicación contraseñas, datos de pago, números de documentos, claves secretas ni ninguna otra información cuya divulgación pueda suponer un riesgo para ti.';

  @override
  String get legalPrivacySection4Heading => 'Finalidad del tratamiento';

  @override
  String get legalPrivacySection4Body =>
      'Utilizamos la información únicamente para fines concretos y lícitos: prestar las funciones de Hatchpot; generar contenido de juego y reflexión personalizado; procesar las solicitudes a las funciones de inteligencia artificial; elaborar el análisis final que solicitas; guardar y sincronizar tu progreso; recuperar tu cuenta; enviar los recordatorios que solicites; garantizar la seguridad del servicio; prevenir abusos y fraudes; diagnosticar errores técnicos; analizar el uso de las funciones; mejorar la estabilidad y la funcionalidad de la aplicación; cumplir obligaciones legales; y proteger los derechos e intereses legítimos del usuario y del operador.\n\nNo vendemos los datos personales de los usuarios ni los utilizamos para vender productos o servicios de terceros a través de redes publicitarias.';

  @override
  String get legalPrivacySection5Heading =>
      'Inteligencia artificial y Anthropic';

  @override
  String get legalPrivacySection5Body =>
      'Para generar contenido de IA personalizado, Hatchpot utiliza tecnologías de inteligencia artificial de terceros, en particular la API de Anthropic. Según la función utilizada, a Anthropic puede transferirse el contexto necesario para atender la solicitud: tu deseo, el área de enfoque elegida, las preguntas, tus respuestas, la información sobre los campos recorridos y otro contexto necesario. Procuramos transferir únicamente el volumen de información necesario para atender cada solicitud concreta.\n\nAnthropic es un proveedor de tecnología independiente y trata los datos que le transferimos conforme a sus propias condiciones y políticas aplicables. Para la API comercial de Anthropic, el plazo estándar de conservación de las entradas y salidas es de hasta 30 días desde su recepción o generación, salvo que se acuerde otra cosa, lo exija la ley o sea necesario para garantizar la seguridad y el cumplimiento de las normas de uso.\n\nLa transferencia de datos a Anthropic constituye una comunicación de información a un tercero y se te revela expresamente en esta Política.';

  @override
  String get legalPrivacySection6Heading => 'Proveedores de servicios';

  @override
  String get legalPrivacySection6Body =>
      'Para el funcionamiento de la aplicación podemos utilizar servicios tecnológicos de terceros: Google Firebase (Authentication, Cloud Firestore, Analytics, Crashlytics, App Check, Cloud Functions), la API de Anthropic, así como Apple y/o Google para sus respectivos servicios de inicio de sesión y procesamiento de compras. Estos proveedores reciben únicamente el volumen de datos necesario para prestar el servicio correspondiente.';

  @override
  String get legalPrivacySection7Heading => 'Transferencias internacionales';

  @override
  String get legalPrivacySection7Body =>
      'Google Firebase y Anthropic pueden tratar información fuera de tu país o del Espacio Económico Europeo, incluidos Estados Unidos y otras regiones donde operan sus proveedores de servicios. Cuando sea aplicable el RGPD u otra legislación con requisitos específicos para las transferencias internacionales de datos, dichas transferencias se realizan sobre la base jurídica prevista por la ley y aplicando las garantías adecuadas.';

  @override
  String get legalPrivacySection8Heading => 'Bases jurídicas del tratamiento';

  @override
  String get legalPrivacySection8Body =>
      'Según la operación concreta, el tratamiento puede basarse en: el consentimiento del usuario; la necesidad de ejecutar un contrato con el usuario; la necesidad de cumplir obligaciones legales; la necesidad de proteger intereses vitales; o el interés legítimo, cuando la legislación aplicable lo permita. Para el tratamiento de información sensible se aplica una base jurídica adicional cuando la ley lo exige.\n\nEn Ucrania, el tratamiento de datos de salud y de otras categorías especiales se rige por requisitos específicos de la Ley de Ucrania «Sobre la protección de los datos personales».';

  @override
  String get legalPrivacySection9Heading => 'Cómo se otorga el consentimiento';

  @override
  String get legalPrivacySection9Body =>
      'Cuando es necesario, otorgas tu consentimiento mediante una acción expresa, como marcar la casilla correspondiente. El consentimiento no se considera otorgado por el mero uso de la aplicación cuando la legislación exige un consentimiento independiente. Las casillas de consentimiento de Hatchpot —en particular la de la pantalla con información importante sobre la IA y la del permiso para tratar información sensible— no vienen marcadas de antemano: eres tú quien elige activamente.\n\nPuedes retirar tu consentimiento en los casos y del modo previstos por la legislación aplicable. La retirada del consentimiento no afecta a la licitud del tratamiento realizado antes de dicha retirada.';

  @override
  String get legalPrivacySection10Heading =>
      'Conservación y eliminación de datos';

  @override
  String get legalPrivacySection10Body =>
      'Conservamos los datos personales solo durante el tiempo necesario para las finalidades correspondientes, salvo que la ley prevea un plazo mayor. La información almacenada localmente se elimina cuando borras la aplicación o borras sus datos.\n\nEliminamos los datos asociados a la cuenta conforme al procedimiento de eliminación (sección 11); no obstante, algunos datos pueden conservarse en copias de seguridad, registros de seguridad, documentación financiera o en los casos previstos por la ley, en particular para prevenir el fraude, resolver disputas, garantizar la seguridad o cumplir los requisitos de Apple, Google u otros proveedores.\n\nLos datos ya enviados a Anthropic quedan sujetos a las normas de conservación de Anthropic aplicables descritas anteriormente.';

  @override
  String get legalPrivacySection11Heading => 'Eliminación de la cuenta';

  @override
  String get legalPrivacySection11Body =>
      'Puedes solicitar la eliminación de tu cuenta y de los datos asociados a través de la función correspondiente en la aplicación o enviando una solicitud a leadlife.app@gmail.com. Tras eliminar la cuenta, algunos datos pueden conservarse en copias de seguridad, registros de seguridad o en los casos en que la ley exija su conservación.';

  @override
  String get legalPrivacySection12Heading => 'Derechos del usuario';

  @override
  String get legalPrivacySection12Body =>
      'Según la legislación aplicable, puedes tener derecho a: obtener información sobre tus datos personales; recibir una copia de tus datos; corregir datos inexactos; eliminar tus datos; limitar el tratamiento; oponerte a determinados tipos de tratamiento; retirar tu consentimiento; recibir tus datos en un formato legible por máquina; y presentar una reclamación ante la autoridad de protección de datos competente.\n\nEnvía tu solicitud a leadlife.app@gmail.com. Antes de atenderla, podemos pedirte una verificación razonable de tu identidad.';

  @override
  String get legalPrivacySection13Heading => 'Edad mínima';

  @override
  String get legalPrivacySection13Body =>
      'Hatchpot está destinado únicamente a personas que hayan cumplido 18 años. Hatchpot no está destinado a niños ni a menores de edad. Si tenemos conocimiento de que hemos recibido datos personales de una persona menor de 18 años sin una base jurídica adecuada, adoptaremos medidas razonables para eliminar dichos datos.';

  @override
  String get legalPrivacySection14Heading => 'Seguridad';

  @override
  String get legalPrivacySection14Body =>
      'Aplicamos medidas técnicas y organizativas razonables para proteger los datos personales frente al acceso no autorizado, la alteración, la divulgación, la pérdida o la destrucción. Ningún método de transmisión o almacenamiento de datos puede garantizar una seguridad absoluta.';

  @override
  String get legalPrivacySection15Heading => 'Cambios y contacto';

  @override
  String get legalPrivacySection15Body =>
      'Podemos actualizar esta Política cuando cambien las funcionalidades de Hatchpot, los proveedores utilizados o la legislación aplicable. La fecha de la última actualización se indica al inicio del documento; de los cambios importantes podemos informarte adicionalmente a través de la aplicación o por otro medio razonable.\n\nPara cualquier consulta sobre el tratamiento de datos personales, escribe a leadlife.app@gmail.com.\n\nOperador: Maimur Yevheniia Feliksivna, empresaria individual, Ucrania.';

  @override
  String get legalTermsSection1Heading => 'Disposiciones generales';

  @override
  String get legalTermsSection1Body =>
      'Última actualización: 9 de septiembre de 2026. Estas Condiciones de uso («Condiciones») regulan la relación entre el usuario de Hatchpot («usuario», «tú») y el operador de la aplicación, Maimur Yevheniia Feliksivna, empresaria individual registrada conforme a la legislación ucraniana (РНОКПП [número de identificación fiscal] 3743203085, Calle Zhukovskoho 2, Dnipró, 49000, Ucrania).\n\nHatchpot es el nombre comercial de una aplicación digital destinada a la reflexión personal, el autoconocimiento y el entretenimiento.\n\nAl utilizar Hatchpot, crear una cuenta o adquirir funciones de pago, confirmas que has leído estas Condiciones. Si no estás de acuerdo con ellas, no utilices Hatchpot.';

  @override
  String get legalTermsSection2Heading => 'Finalidad de Hatchpot';

  @override
  String get legalTermsSection2Body =>
      'Hatchpot ofrece una herramienta digital para la reflexión personal y el autoconocimiento, construida en torno a tu deseo, un viaje por campos de juego, preguntas, respuestas, entradas de diario y contenido generado por IA.\n\nHatchpot no es un servicio médico, psicológico, psicoterapéutico ni psiquiátrico. El contenido que genera Hatchpot, incluido el contenido de IA, no constituye asesoramiento médico, asesoramiento psicológico, psicoterapia, atención psiquiátrica, diagnóstico, tratamiento, recomendación financiera ni asesoramiento jurídico.';

  @override
  String get legalTermsSection3Heading =>
      'Advertencia sobre la inteligencia artificial';

  @override
  String get legalTermsSection3Body =>
      'Parte del contenido de Hatchpot se genera utilizando tecnologías de inteligencia artificial. La IA puede producir respuestas inexactas, incompletas o subjetivas. El contenido generado por IA no debe interpretarse como un hecho establecido, una opinión profesional ni una predicción de acontecimientos futuros. Eres tú quien evalúa el contenido recibido y toma decisiones teniendo en cuenta tus propias circunstancias.';

  @override
  String get legalTermsSection4Heading => 'Edad del usuario';

  @override
  String get legalTermsSection4Body =>
      'Hatchpot está destinado a usuarios mayores de 18 años. Al utilizar Hatchpot, confirmas que has cumplido 18 años. Si no has cumplido 18 años, no crees una cuenta, no utilices las funciones de pago ni facilites tus datos personales para usar Hatchpot.';

  @override
  String get legalTermsSection5Heading => 'Cuentas';

  @override
  String get legalTermsSection5Body =>
      'Hatchpot puede permitir el uso de la aplicación sin necesidad de registrarte. Puedes vincular una cuenta mediante correo electrónico, Google, Apple u otro método admitido. Te comprometes a proporcionar información veraz y a mantener seguros tus datos de acceso.';

  @override
  String get legalTermsSection6Heading => 'Tu contenido';

  @override
  String get legalTermsSection6Body =>
      'Conservas los derechos sobre el texto, las respuestas, las entradas del diario, los deseos y cualquier otro contenido que crees o introduzcas en Hatchpot («Contenido del usuario»). Al aportar Contenido del usuario, autorizas a Hatchpot, en la medida necesaria para el funcionamiento del servicio, a acceder a él, almacenarlo, tratarlo, transferirlo y utilizarlo técnicamente para: prestar las funciones de la aplicación; sincronizar tus datos; generar contenido personalizado; procesar las solicitudes de inteligencia artificial, en particular transfiriendo el contexto correspondiente a proveedores tecnológicos externos, incluido Anthropic (véase la Política de privacidad); elaborar el análisis que solicites; garantizar la seguridad; y realizar el mantenimiento técnico.\n\nHatchpot no adquiere la propiedad del Contenido del usuario, no lo vende ni lo utiliza para segmentación publicitaria. Confirmas que tienes derecho a proporcionar la información que publicas.';

  @override
  String get legalTermsSection7Heading => 'Uso prohibido';

  @override
  String get legalTermsSection7Body =>
      'No debes: utilizar Hatchpot de forma ilegal; interferir en el funcionamiento de la aplicación; intentar obtener acceso no autorizado a los sistemas; difundir código malicioso; realizar ingeniería inversa, descompilación o desensamblado, salvo en los casos expresamente permitidos por la ley aplicable; ni utilizar la aplicación para vulnerar los derechos de terceros o poner en riesgo la seguridad de otros usuarios.';

  @override
  String get legalTermsSection8Heading => 'Situaciones de crisis';

  @override
  String get legalTermsSection8Body =>
      'Hatchpot no está diseñado para su uso en situaciones de emergencia. Si tu mensaje indica una amenaza inminente para la vida, la salud o la seguridad tuya o de otra persona, Hatchpot puede interrumpir su procesamiento habitual de juego o reflexión y mostrar, en su lugar, información previamente preparada sobre la necesidad de buscar ayuda de emergencia o profesional.\n\nNo utilices Hatchpot como sustituto de la ayuda médica, psicológica, psiquiátrica o de emergencia.';

  @override
  String get legalTermsSection9Heading => 'Exclusión de garantías';

  @override
  String get legalTermsSection9Body =>
      'Hatchpot se ofrece «tal cual» y «según disponibilidad». No garantizamos que la aplicación funcione de forma ininterrumpida, que esté libre de errores técnicos, que esté disponible en todo momento, que sea totalmente compatible con todos los dispositivos, ni que genere exclusivamente contenido de IA preciso o pertinente.';

  @override
  String get legalTermsSection10Heading => 'Limitación de responsabilidad';

  @override
  String get legalTermsSection10Body =>
      'En la máxima medida permitida por la legislación aplicable, Hatchpot no será responsable de los daños indirectos, incidentales, especiales o consecuentes derivados del uso o de la imposibilidad de uso de la aplicación. Tú decides por tu cuenta a partir de la información obtenida a través de Hatchpot.\n\nNinguna disposición de estas Condiciones excluye ni limita la responsabilidad del operador en los casos en que dicha exclusión o limitación esté prohibida por la legislación aplicable, ni priva al consumidor de los derechos que le confieren las normas imperativas de la ley —en particular, la legislación ucraniana sobre contratos a distancia y contenido digital— y, si resides en otro país, de los derechos obligatorios que te confiera la legislación de tu país de residencia.';

  @override
  String get legalTermsSection11Heading => 'Funciones de pago y suscripciones';

  @override
  String get legalTermsSection11Body =>
      'Hatchpot puede ofrecer funciones de pago, suscripciones y contenido digital. Las condiciones de pago, renovación automática, cancelación y reembolso se establecen en un documento independiente, «Condiciones de suscripción y reembolsos», que forma parte integrante de estas Condiciones.';

  @override
  String get legalTermsSection12Heading => 'Eliminación de la cuenta';

  @override
  String get legalTermsSection12Body =>
      'Puedes dejar de utilizar Hatchpot y eliminar tu cuenta siguiendo el procedimiento previsto en la aplicación. La eliminación de la cuenta no exime a las partes de las obligaciones que, por su naturaleza, deban subsistir tras el cese del uso del servicio.';

  @override
  String get legalTermsSection13Heading => 'Suspensión del acceso';

  @override
  String get legalTermsSection13Body =>
      'Podemos restringir o suspender temporalmente el acceso del usuario si: el usuario incumple estas Condiciones; el uso de la cuenta supone una amenaza para la seguridad; es necesario para prevenir el fraude; lo exige la ley; o es necesario para proteger los derechos de otros usuarios o del operador.';

  @override
  String get legalTermsSection14Heading => 'Legislación aplicable';

  @override
  String get legalTermsSection14Body =>
      'Estas Condiciones se rigen por la legislación de Ucrania. Si eres consumidor y resides en otro país, la elección del derecho ucraniano no te priva de los derechos que te confieran las normas imperativas de la legislación de tu país de residencia.';

  @override
  String get legalTermsSection15Heading =>
      'Cambios en las Condiciones y contacto';

  @override
  String get legalTermsSection15Body =>
      'Podemos modificar estas Condiciones cuando cambien la aplicación, el modelo de negocio o la legislación. De los cambios importantes podemos informarte a través de la aplicación o por otro medio razonable. Continuar utilizando Hatchpot después de que los cambios entren en vigor implica el uso del servicio conforme a las Condiciones actualizadas, en la medida en que lo permita la ley.\n\nOperador: Maimur Yevheniia Feliksivna, empresaria individual, Ucrania. Correo electrónico: leadlife.app@gmail.com.';

  @override
  String get legalSubscriptionSection1Heading => 'Funciones de pago';

  @override
  String get legalSubscriptionSection1Body =>
      'Algunas funciones de Hatchpot pueden ofrecerse mediante pago. Antes de realizar la compra, recibes información sobre el precio, la moneda, el periodo de suscripción, la existencia de renovación automática, el contenido de la función de pago y las condiciones de cancelación.';

  @override
  String get legalSubscriptionSection2Heading =>
      'Suscripción y renovación automática';

  @override
  String get legalSubscriptionSection2Body =>
      'Si el servicio elegido es una suscripción, se renueva automáticamente por el periodo correspondiente si no la cancelas antes de la fecha de renovación. Cancelar la suscripción detiene las futuras renovaciones automáticas, pero no interrumpe necesariamente el acceso al periodo ya pagado.';

  @override
  String get legalSubscriptionSection3Heading =>
      'Pago a través de las tiendas de aplicaciones';

  @override
  String get legalSubscriptionSection3Body =>
      'Los pagos en iOS se realizan a través de App Store, y en Android, a través de Google Play, salvo que se indique otra cosa directamente en la aplicación. Determinados aspectos del pago pueden estar sujetos a las normas de la tienda correspondiente.';

  @override
  String get legalSubscriptionSection4Heading => 'Cancelación';

  @override
  String get legalSubscriptionSection4Body =>
      'Puedes cancelar la suscripción en los ajustes correspondientes de tu cuenta de App Store o Google Play. Tras la cancelación, por lo general conservas el acceso hasta el final del periodo ya pagado, salvo que las normas o la legislación aplicables dispongan otra cosa.';

  @override
  String get legalSubscriptionSection5Heading => 'Reembolsos';

  @override
  String get legalSubscriptionSection5Body =>
      'El derecho a un reembolso se determina conforme a la legislación aplicable, las condiciones del contrato y las normas de la tienda de aplicaciones correspondiente. Nada en este documento limita los derechos obligatorios del consumidor.\n\nSi la legislación aplicable prevé el derecho a desistir de un contrato a distancia o de contenido digital, esta posibilidad se mantiene siempre que se cumplan las condiciones establecidas por la ley. Para el contenido digital cuyo suministro ya haya comenzado, el derecho de desistimiento puede estar limitado en los casos previstos por la ley, en particular si diste previamente tu consentimiento expreso para iniciar el suministro del contenido digital y fuiste informado de las consecuencias de dicho consentimiento.';

  @override
  String get legalSubscriptionSection6Heading => 'Periodo gratuito';

  @override
  String get legalSubscriptionSection6Body =>
      'Si Hatchpot ofrece un periodo de prueba gratuito, su duración y las condiciones para pasar automáticamente a una suscripción de pago se indican antes de que comience el periodo de prueba.';

  @override
  String get legalSubscriptionSection7Heading => 'Cambio de precio';

  @override
  String get legalSubscriptionSection7Body =>
      'En caso de que cambie el precio de un futuro periodo de suscripción, se te informará del modo previsto por la legislación aplicable y las normas de la tienda correspondiente.';

  @override
  String get legalSubscriptionSection8Heading => 'Cargos erróneos';

  @override
  String get legalSubscriptionSection8Body =>
      'Si consideras que se te ha cobrado un importe por error, escribe a leadlife.app@gmail.com. Si es necesario, también puedes recurrir al procedimiento de reembolso de la tienda de aplicaciones correspondiente.';

  @override
  String get legalSubscriptionSection9Heading =>
      'Cancelación o suspensión por parte del servicio';

  @override
  String get legalSubscriptionSection9Body =>
      'Si cancelamos o suspendemos tu acceso por motivos de nuestro lado —y no porque hayas incumplido estas Condiciones—, no pierdes lo que ya pagaste.\n\nSi compraste un plan de un solo viaje, el acceso al viaje que ya pagaste se mantiene; si eso no es técnicamente posible, reembolsamos la parte no utilizada de forma proporcional.\n\nSi tienes una suscripción activa y la cancelamos o suspendemos por motivos de nuestro lado, conservas el acceso durante el resto del período que ya pagaste, o recibes una cantidad equivalente de viajes o días de acceso adicionales para compensar el tiempo perdido, o un reembolso proporcional si ninguna de estas opciones es posible.\n\nEsto no se aplica cuando el acceso se restringe debido a un incumplimiento de estas Condiciones por tu parte, por requisitos legales, fraude o prevención de abusos.';

  @override
  String get aiDisclaimerHeading => 'INFORMACIÓN IMPORTANTE';

  @override
  String get aiDisclaimerBody =>
      'Hatchpot está diseñado para el entretenimiento, la reflexión personal y el autoconocimiento.\n\nHatchpot no es una ayuda médica, psicológica, psicoterapéutica ni psiquiátrica.\n\nLas respuestas generadas por la inteligencia artificial pueden contener errores, imprecisiones o interpretaciones subjetivas, y no sustituyen la consulta con un profesional cualificado.\n\nNo utilices Hatchpot para establecer un diagnóstico, tratar una enfermedad o tomar decisiones que requieran asesoramiento médico, psicológico, jurídico o financiero profesional.\n\nHatchpot no está diseñado para situaciones de emergencia. Si te encuentras en peligro inminente, o si otra persona lo está, busca ayuda de emergencia o acude a un profesional adecuado.';

  @override
  String get aiDisclaimerCheckboxLabel =>
      'He cumplido 18 años. He leído esta información y entiendo que Hatchpot no es una ayuda médica, psicológica ni psiquiátrica, y que las respuestas de la IA pueden ser inexactas.';

  @override
  String get crisisResourcesHeading => 'Detengámonos aquí un momento';

  @override
  String get crisisResourcesBody =>
      'Parece que lo que escribiste merece más de lo que este juego puede ofrecer. Hatchpot no está diseñado para situaciones de crisis y no sustituye la ayuda profesional.\n\nPor favor, busca a alguien de confianza, a un profesional de la salud mental o a los servicios de emergencia de tu país. No tienes que pasar por esto solo(a).';

  @override
  String get crisisResourcesBackCta => 'Volver';

  @override
  String get accountSectionTitle => 'Cuenta';

  @override
  String get accountAnonymousStatus =>
      'Actualmente tus datos solo se guardan en este dispositivo.';

  @override
  String get accountConnectedStatus =>
      'Tus datos están sincronizados de forma segura con tu cuenta.';

  @override
  String get resetPasswordAction => 'Restablecer contraseña';

  @override
  String get resetPasswordPrompt =>
      'Introduce el correo electrónico asociado a tu cuenta.';

  @override
  String get resetPasswordSent =>
      'Se ha enviado un enlace para restablecer la contraseña.';

  @override
  String get signOutAction => 'Cerrar sesión';

  @override
  String get signOutConfirm =>
      'Tu copia en la nube permanecerá segura. Los datos locales se eliminarán de este dispositivo.';

  @override
  String get deleteAccountAction => 'Eliminar cuenta';

  @override
  String get deleteAccountConfirm =>
      'Esto elimina de forma permanente tu cuenta, los datos de la nube, el viaje, el diario y el historial. No se puede deshacer.';

  @override
  String get cancelAction => 'Cancelar';

  @override
  String get confirmAction => 'Confirmar';

  @override
  String get accountActionError =>
      'Algo salió mal. Comprueba tu conexión e inténtalo de nuevo.';
}
