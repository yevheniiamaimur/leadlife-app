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
  String get aiAssistantLinkCta =>
      '✨ ¿No sabes cómo expresarlo? Pregúntale al asistente';

  @override
  String get aiAssistantTitle => 'Aclara tu deseo';

  @override
  String get aiAssistantGreeting =>
      '¿Qué deseo traes a este viaje? Cuéntame un poco y te ayudaré a expresarlo con palabras.';

  @override
  String get aiAssistantInputHint => 'Escribe tu respuesta…';

  @override
  String get aiAssistantUseThisWish => 'Usar este deseo';

  @override
  String get aiAssistantError =>
      'El asistente no pudo responder. Comprueba tu conexión e inténtalo de nuevo.';

  @override
  String get aiAssistantRetryCta => 'Intentar de nuevo';

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
  String howItWorksStepOfTotal(int step, int total) {
    return 'Paso $step de $total';
  }

  @override
  String get howItWorksBeginJourneyCta => 'Comenzar tu viaje';

  @override
  String get howItWorksContinueCta => 'Continuar';

  @override
  String get howItWorksSlide1Title => '¿Qué es el viaje Hatchpot?';

  @override
  String get howItWorksSlide1Para =>
      'Un viaje guiado para ayudarte a aclarar lo que realmente quieres, cambiar tu estado interior y encontrar tu dirección.';

  @override
  String get howItWorksSlide2Title => 'Comienza con un deseo';

  @override
  String get howItWorksSlide2Line1 =>
      'Escribe lo que quieres como si ya fuera realidad.';

  @override
  String get howItWorksSlide2Line2 => 'Concéntrate en ello.';

  @override
  String get howItWorksSlide2Line3 => 'Después, lanza el dado.';

  @override
  String get howItWorksSlide2Para =>
      'En Hatchpot, tu viaje comienza aclarando la intención con la que estás preparado para trabajar ahora.';

  @override
  String get howItWorksSlide3Title => 'Deja que el dado te guíe';

  @override
  String get howItWorksSlide3Line1 => 'Si sacas un 1, tu deseo está preparado.';

  @override
  String get howItWorksSlide3Line2 => 'Tu viaje comienza.';

  @override
  String get howItWorksSlide3Para1 =>
      'Si sale otro número, recibirás una pista que te ayudará a aclarar, reformular o reconsiderar tu deseo.';

  @override
  String get howItWorksSlide3Para2 =>
      'Puedes precisarlo o elegir uno completamente diferente.';

  @override
  String get howItWorksSlide4Title => 'Entonces comienza tu viaje';

  @override
  String get howItWorksSlide4Para1 =>
      'Elige cómo quieres interactuar con Hatchpot y empieza a avanzar por tu camino único.';

  @override
  String get howItWorksSlide4Line => 'El sistema se compone de 32 campos:';

  @override
  String get howItWorksSlide4Line1 => '10 niveles de realidad.';

  @override
  String get howItWorksSlide4Line2 => '22 estrategias de vida.';

  @override
  String get howItWorksSlide4Para2 =>
      'Tu recorrido por ellos es únicamente tuyo.';

  @override
  String get howItWorksSlide5Title => 'Avanza por tu camino';

  @override
  String get howItWorksSlide5Line1 => 'Lanza el dado.';

  @override
  String get howItWorksSlide5Line2 => 'Entra en un campo.';

  @override
  String get howItWorksSlide5Line3 =>
      'Responde una pregunta o realiza una tarea sencilla.';

  @override
  String get howItWorksSlide5Para1 =>
      'La mayoría de las interacciones duran menos de un minuto.';

  @override
  String get howItWorksSlide5Para2 =>
      'Cada campo cambia tu enfoque y te ayuda a explorar tu deseo desde otra perspectiva.';

  @override
  String get howItWorksSlide6Title =>
      '22 estrategias. Distintas formas de avanzar.';

  @override
  String get howItWorksSlide6Para1 =>
      'Recorres distintas estrategias de vida: formas de pensar, elegir, sentir y actuar.';

  @override
  String get howItWorksSlide6Para2 =>
      'No necesitas estudiar el sistema. Solo sigue tu camino.';

  @override
  String get howItWorksSlide6RichTextBefore =>
      '¿Quieres comprender su estructura? Consulta ';

  @override
  String get howItWorksSlide6RichTextAfter => ' Acerca del sistema en el menú.';

  @override
  String get howItWorksSlide7Title => 'Tu código del éxito';

  @override
  String get howItWorksSlide7Para1 =>
      'Al final de tu viaje, tus respuestas se unen.';

  @override
  String get howItWorksSlide7Line1 => 'Tus decisiones.';

  @override
  String get howItWorksSlide7Line2 => 'Tus descubrimientos.';

  @override
  String get howItWorksSlide7Line3 => 'Tu dirección.';

  @override
  String get howItWorksSlide7Para2 =>
      'Hatchpot las convierte en tu código personal del éxito: un mapa para volver a tu deseo.';

  @override
  String get howItWorksSlide7Para3 => 'No es una respuesta universal.';

  @override
  String get howItWorksSlide7Para4 =>
      'Es tu camino, creado a partir de tus propias respuestas.';

  @override
  String get field01Name => 'Luz';

  @override
  String get field01Subtitle => 'Deseo';

  @override
  String get field01Intro =>
      'Todo viaje comienza con un deseo.\n\nTu deseo importa porque señala algo importante para tu crecimiento.';

  @override
  String get field01Task => '¿Qué deseo traes a este viaje?';

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
      'Cada objetivo genera un impacto.\nPiensa qué valor aporta tu deseo a otras personas.';

  @override
  String get field04Task => '¿Quién se beneficia cuando lo consigues?';

  @override
  String get field05Name => 'Limitación';

  @override
  String get field05Subtitle => 'Resiliencia';

  @override
  String get field05Intro =>
      'Las limitaciones son una parte natural de todo viaje.\n\nTe ayudan a desarrollar la fuerza necesaria para alcanzar tu objetivo.';

  @override
  String get field05Task =>
      '¿Qué limitaciones tienes actualmente —físicas, emocionales, económicas, sociales u otras—? ¿Cómo te ayudan a crecer?';

  @override
  String get field06Name => 'Valores';

  @override
  String get field06Subtitle => 'Autenticidad';

  @override
  String get field06Intro =>
      'Tus valores guían las decisiones que tomas.\n\nLos deseos más fuertes suelen estar relacionados con aquello que siempre te ha importado.';

  @override
  String get field06Task =>
      '¿Qué ha sido siempre importante para ti?\n\n¿Refleja este deseo esos valores?\n\n¿Qué cualidades te surgían de forma natural durante la infancia?\n\n¿Cuáles de ellas siguen vivas en ti?\n\n¿Cómo podrían ayudarte a cumplir tu deseo?';

  @override
  String get field07Name => 'Sentimientos';

  @override
  String get field07Subtitle => 'Conciencia emocional';

  @override
  String get field07Intro =>
      'Los sentimientos son señales, no obstáculos.\n\nPueden mostrarte qué apoya tu deseo y qué necesita tu atención.';

  @override
  String get field07Task =>
      '¿Qué emociones experimentas con más frecuencia? ¿Cómo influyen en tu deseo?';

  @override
  String get field08Name => 'Pensamiento';

  @override
  String get field08Subtitle => 'Claridad';

  @override
  String get field08Intro =>
      'Algunas creencias apoyan cada deseo y otras lo limitan.\n\nCuanto más claramente las veas, más libertad tendrás para elegir tu camino.';

  @override
  String get field08Task => '¿Qué creencias te apoyan y cuáles te frenan?';

  @override
  String get field09Name => 'Subconsciente';

  @override
  String get field09Subtitle => 'Imaginación';

  @override
  String get field09Intro =>
      'Tu subconsciente guarda el plano de la vida que deseas.';

  @override
  String get field09Task =>
      'Si tu deseo ya fuera realidad, ¿cómo sería tu vida? Descríbela.';

  @override
  String get field10Name => 'Realidad';

  @override
  String get field10Subtitle => 'Acción';

  @override
  String get field10Intro =>
      'La realidad se moldea mediante las acciones que realizas.';

  @override
  String get field10Task =>
      'Escribe 10 acciones que puedas realizar hoy para acercarte a tu objetivo.';

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
  String get legalConsentPrefix => 'Acepto las ';

  @override
  String get legalConsentAnd => ' y la ';

  @override
  String get legalConsentSuffix => '.';

  @override
  String get legalPrivacySection1Heading => 'Resumen';

  @override
  String get legalPrivacySection1Body =>
      'Última actualización: 20 de agosto de 2026. Esta política explica qué información trata Hatchpot («nosotros») cuando utilizas la aplicación Hatchpot, por qué la tratamos, dónde puede almacenarse y qué opciones tienes.';

  @override
  String get legalPrivacySection2Heading => 'Información que recopilamos';

  @override
  String get legalPrivacySection2Body =>
      'Tratamos la información que decides introducir: nombre, fecha de nacimiento, correo electrónico, área de enfoque, deseos, respuestas, entradas del diario e historial de viajes. Si creas una cuenta, Firebase Authentication trata el identificador de tu cuenta y los datos de inicio de sesión. También tratamos información técnica y de uso necesaria para la seguridad, los análisis y el diagnóstico de fallos, como las interacciones con la aplicación, los datos del dispositivo y del sistema operativo, la versión de la aplicación y los informes de diagnóstico. No te pedimos que introduzcas datos de tarjetas de pago.';

  @override
  String get legalPrivacySection3Heading => 'Cómo utilizamos tu información';

  @override
  String get legalPrivacySection3Body =>
      'Utilizamos esta información para ofrecer y personalizar tu viaje, generar mediante IA contenido personalizado para los campos y un análisis final, guardar y sincronizar tu progreso cuando creas una cuenta, proporcionar los recordatorios que solicites, proteger el servicio, diagnosticar fallos, comprender el uso de las funciones, mejorar la aplicación y gestionar tu cuenta.';

  @override
  String get legalPrivacySection4Heading => 'Dónde se almacenan tus datos';

  @override
  String get legalPrivacySection4Body =>
      'Tu información se guarda primero en tu dispositivo. Si solo utilizas una cuenta anónima, tu progreso y tu diario no se sincronizan con otro dispositivo. Si vinculas una cuenta, tu perfil, progreso actual, respuestas, diario e historial de viajes se almacenan en Google Firebase Cloud Firestore para poder restaurarlos en otro dispositivo. Firebase Authentication gestiona la información de la cuenta, y Firebase Analytics y Firebase Crashlytics pueden gestionar los datos de uso y fallos. Para personalizar el juego, enviamos tu deseo y el área de enfoque seleccionada a la API de Anthropic. Para el análisis final, enviamos tu deseo y las preguntas y respuestas de los campos que has visitado. Anthropic devuelve el texto generado para el juego y el análisis. Según la política estándar de conservación de la API de Anthropic, las entradas y salidas de la API normalmente se eliminan de sus sistemas en un plazo de 30 días, salvo excepciones limitadas de seguridad, prevención de abusos y obligaciones legales.';

  @override
  String get legalPrivacySection5Heading => 'Comunicación de información';

  @override
  String get legalPrivacySection5Body =>
      'No vendemos tu información personal ni utilizamos redes publicitarias. Solo compartimos información cuando es necesario para operar la aplicación: con Google LLC para almacenamiento en la nube de Firebase, autenticación, análisis, informes de fallos, App Check y Cloud Functions; con Anthropic, PBC y sus filiales para la generación y el análisis mediante IA; y con Apple o Google cuando eliges su servicio de inicio de sesión. Estos proveedores tratan la información conforme a sus propias condiciones y compromisos de privacidad aplicables.';

  @override
  String get legalPrivacySection6Heading => 'Transferencias internacionales';

  @override
  String get legalPrivacySection6Body =>
      'Google Firebase y Anthropic pueden tratar información fuera de tu país o del Espacio Económico Europeo, incluidos Estados Unidos y otras regiones donde operan sus proveedores de servicios. Cuando sea necesario, las transferencias se realizan mediante garantías reconocidas legalmente.';

  @override
  String get legalPrivacySection7Heading =>
      'Conservación y eliminación de datos';

  @override
  String get legalPrivacySection7Body =>
      'La información almacenada localmente se elimina cuando borras la aplicación o sus datos. Si has vinculado una cuenta, puedes eliminar desde la aplicación la cuenta y el perfil de Firebase, el progreso, el diario y el historial de viajes asociados. Los datos ya enviados a Anthropic se gestionan conforme a sus reglas de conservación de la API descritas anteriormente. Algunos registros limitados pueden conservarse cuando sea necesario por motivos de seguridad, prevención del fraude, resolución de disputas u obligaciones legales. También puedes escribirnos a leadlife.app@gmail.com.';

  @override
  String get legalPrivacySection8Heading => 'Tus derechos';

  @override
  String get legalPrivacySection8Body =>
      'Según tu lugar de residencia, puedes tener derecho a acceder, corregir, eliminar o exportar tus datos, oponerte a determinados tratamientos o limitarlos y retirar tu consentimiento cuando el tratamiento se base en él. Escribe a leadlife.app@gmail.com para presentar una solicitud. Es posible que tengamos que verificar tu identidad antes de completarla.';

  @override
  String get legalPrivacySection9Heading => 'Menores';

  @override
  String get legalPrivacySection9Body =>
      'Hatchpot no está dirigido a menores de 16 años y no recopilamos conscientemente información sobre ellos.';

  @override
  String get legalPrivacySection10Heading => 'Cambios y contacto';

  @override
  String get legalPrivacySection10Body =>
      'Podemos actualizar esta política cuando cambien la aplicación o los requisitos legales. La fecha de actualización aparecerá arriba y los cambios importantes se reflejarán en la aplicación. Puedes enviar tus preguntas a leadlife.app@gmail.com.';

  @override
  String get legalTermsSection1Heading => 'Aceptación de las condiciones';

  @override
  String get legalTermsSection1Body =>
      'Última actualización: [completar antes de la publicación]. Al utilizar Hatchpot, aceptas estas Condiciones de uso. Si no estás de acuerdo, no utilices la aplicación.';

  @override
  String get legalTermsSection2Heading => 'El servicio';

  @override
  String get legalTermsSection2Body =>
      'Hatchpot es una herramienta de crecimiento personal y reflexión basada en tu deseo, un viaje por 32 campos y recordatorios suaves. El contenido se ofrece únicamente con fines de entretenimiento y reflexión personal y no constituye asesoramiento médico, psicológico, financiero ni jurídico profesional.';

  @override
  String get legalTermsSection3Heading => 'Requisitos';

  @override
  String get legalTermsSection3Body =>
      'Debes tener al menos 16 años, o la edad de consentimiento digital de tu país, para utilizar Hatchpot, y te comprometes a proporcionar información correcta.';

  @override
  String get legalTermsSection4Heading => 'Cuentas';

  @override
  String get legalTermsSection4Body =>
      'La aplicación funciona de forma anónima de manera predeterminada. Puedes vincular opcionalmente una cuenta mediante Google, Apple o correo electrónico y contraseña para conservar tu viaje y tus compras al cambiar de dispositivo. Eres responsable de mantener seguras tus credenciales.';

  @override
  String get legalTermsSection5Heading => 'Suscripciones y pagos';

  @override
  String get legalTermsSection5Body =>
      'Los planes de pago son suscripciones con renovación automática facturadas a través de App Store o Google Play. El precio y las condiciones de renovación se muestran antes de la compra. Puedes cancelar en cualquier momento desde los ajustes de tu cuenta de App Store o Google Play; la cancelación se hace efectiva al final del periodo de facturación actual. Apple o Google gestionan los reembolsos conforme a sus propias políticas.';

  @override
  String get legalTermsSection6Heading => 'Tu contenido';

  @override
  String get legalTermsSection6Body =>
      'Eres propietario de lo que escribes en la aplicación. Nos concedes una licencia limitada para almacenarlo y tratarlo únicamente con el fin de prestarte el servicio.';

  @override
  String get legalTermsSection7Heading => 'Uso aceptable';

  @override
  String get legalTermsSection7Body =>
      'Aceptas no utilizar la aplicación de forma ilegal, no interferir en su funcionamiento y no aplicar ingeniería inversa, descompilarla ni desensamblarla.';

  @override
  String get legalTermsSection8Heading => 'Exención de responsabilidad';

  @override
  String get legalTermsSection8Body =>
      'Hatchpot se proporciona «tal cual», sin garantías de ningún tipo. En la máxima medida permitida por la ley, no somos responsables de daños indirectos, incidentales o consecuentes derivados del uso de la aplicación.';

  @override
  String get legalTermsSection9Heading => 'Finalización';

  @override
  String get legalTermsSection9Body =>
      'Podemos suspender o cancelar el acceso a la aplicación por incumplimiento de estas condiciones. Puedes dejar de utilizarla y eliminar tu cuenta en cualquier momento.';

  @override
  String get legalTermsSection10Heading => 'Legislación aplicable y cambios';

  @override
  String get legalTermsSection10Body =>
      'Estas condiciones se rigen por las leyes de [completar jurisdicción]. Podemos actualizarlas periódicamente; los cambios importantes se reflejarán en la aplicación. ¿Tienes preguntas? Escríbenos a [correo de soporte].';

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
