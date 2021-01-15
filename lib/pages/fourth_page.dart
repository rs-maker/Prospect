import 'package:flutter/material.dart';
import 'package:prospect/bloc/navigation/navigation_bloc.dart';
import 'package:prospect/pages/layouts/textpage_layout.dart';
import 'layouts/navbar_layout.dart';
import 'layouts/textblock_layout.dart';

class FourthPage extends TextPage with NavigationStates {
  final List<Widget> children = [
    TextBlock(
      title: "Nicht schwerwiegende Nebenwirkungen: \n"
          "Häufig oder sehr häufig",
      content:
          "Sie müssen damit rechnen, dass Ihre Haut trocken werden kann, vor allem im Bereich der"
          "Lippen und des Gesichts. Außerdem können eine Hals- oder Hautentzündung, spröde und"
          "rissige Haut oder Lippen sowie ein mäßiger Juckreiz auftreten; ferner kann es zu einer"
          "leichten Abschuppung der Haut kommen. Einer solche Austrocknung können Sie"
          "entgegenwirken, wenn Sie von Anfang der Behandlung an regelmäßig eine geeignete"
          "feuchtigkeitsspendende Creme auftragen. Des weiteren müssen Sie damit rechnen, dass Ihre"
          "Nasenschleimhaut trocken und „krustig“ wird, so dass es zu leichtem Nasenblutungen"
          "kommen kann; es empfiehlt sich, eine feuchtigkeitsspendende Creme oder Salbe dünn"
          "aufzutragen, die eine lindernde Wirkung auf die Nasenschleimhaut ausübt. Es kann"
          "vorkommen, dass Ihre Augen trocken und leicht gereizt sind. Fragen Sie in der Apotheke"
          "nach geeigneten Augentropfen, die Ihnen Erleichterung verschaffen werden. In sehr"
          "seltenen Fällen müssen Kontaktlinsenträger wegen trockener Augen während der"
          "Roaccutane-Behandlung eine Brille tragen. All diese unerwünschten Wirkungen,"
          "einschließlich der trockenen Haut und Schleimhäute sowie der Reizungen im Bereich von"
          "Augenlidern und Bindehäuten, ähneln den Nebenwirkungen, die auch bei zu hohen Zufuhr"
          "von Vitamin A auftreten können. Wenn die Roaccutane-Behandlung abgesetzt wird, gehen"
          "diese unerwünschte Wirkungen in der Regel wieder zurück. "
          "Möglicherweise wird Ihre Haut empfindlicher und röter als sonst, insbesondere im Gesicht."
          "Aus diesem Grunde müssen aggressive Hautbehandlungen wie Dermabrasionen oder"
          "Haarentfernungen mit Wachs während der Behandlung sowie mindestens sechs Monate"
          "nach Ende der Behandlung vermieden werden, da sonst Narben oder Hautreizungen"
          "entstehen können."
          "Sehr häufig berichten Patienten, die mit Roaccutane behandelt werden, über"
          "Rückenschmerzen. Diese gehen nach dem Ende der Behandlung wieder zurück. Während"
          "einer Roaccutane-Therapie treten sehr häufig Muskel- und Gelenksschmerzen auf; es"
          "empfiehlt sich daher, während der Behandlung anstrengende körperliche Aktivitäten"
          "möglichst zu vermeiden."
          "Sehr häufig kommt es bei Roaccutane-behandelten Patienten zu Anämien und zu einer"
          "Erhöhung der Blutsenkungsgeschwindigkeit. Ferner kann auch die Zahl der Blutplättchen"
          "(Thrombozyten) absinken: Dies kann zu kleinflächigen Hautblutungen (Ekchymosen) oder"
          "anderen Blutungen führen, die auf einer Störung der Blutstillung beruhen. Gelegentlich"
          "führt Isotretinoin zu anomalen Blut- oder Urinwerten (z. B. Nachweis von Eiweiß oder roten"
          "Blutkörperchen im Urin). Falls Sie den Eindruck haben, dass sich Ihr Urin verändert hat,"
          "sprechen Sie darüber mit Ihrem Arzt."
          "Manche Patienten haben auch anomale Blutwerte wie beispielsweise erhöhte"
          "Blutzuckerwerte oder erhöhte Leberenzyme. Eventuell wird Ihr Arzt bei Ihnen einige"
          "Blutentnahmen veranlassen, um vor, während und nach der Roacctuan-Behandlung Ihr Blut"
          "und Ihre Leber zu kontrollieren."
          "Isotretinoin führt bei Patienten sehr häufig zu erhöhten Blutfettwerten (Triglyzeride,"
          "Lipoproteine hoher Dichte [HDL], manchmal auch Cholesterol). Aus diesem Grunde empfiehlt"
          "es sich, während der Behandlung auf alkoholische Getränke zu verzichten oder den"
          "Alkoholkonsum zumindest zu reduzieren. Wenn der Arzt während der RoaccutaneBehandlung bei Ihnen zu hohe Triglyzeridwerte feststellt, wird er Sie wahrscheinlich"
          "auffordern, die Roaccutane-Dosierung zu reduzieren und Ihre Ernährung auf eine fettarme"
          "Diät umzustellen.",
      first: true,
    ),
    TextBlock(
      title: "Nicht schwerwiegende Nebenwirkungen: \n"
          "Selten oder sehr selten",
      content:
          "Es kann vorkommen, dass Ihre Akne in den ersten Wochen der Roaccutane-Behandlung"
          "schlimmer wird. In sehr seltenen Fällen kann Ihre Haut entzündet und geschwollen aussehen."
          "Bei fortgesetzter Behandlung mit Roaccutane werden sich Ihre Akne und die anderen"
          "Symptome jedoch bessern."
          "In sehr seltenen Fällen kann es vorkommen, dass Sie vermehrt schwitzen und an starkem"
          "Juckreiz leiden. Außerdem kann es sehr selten passieren, dass Sie besonders lichtempfindlich"
          "reagieren, wenn Sie sich dem Sonnenlicht aussetzen. Bevor Sie in die Sonne gehen, müssen"
          "Sie daher auf alle Hautstellen, die der Sonne ausgesetzt sind, ein Sonnenschutzmittel mit"
          "einem hohen Lichtschutzfaktor (mindestens 15) auftragen. Künstliches UV-Licht müssen Sie"
          "in jedem Fall meiden. "
          "In sehr seltenen Fällen können folgende Nebenwirkungen auftreten: lokale bakterielle"
          "Infektionen (z. B. im Bereich der Nagelbasis), eitrige Schwellungen, Entzündungen von"
          "Blutgefäßen, Veränderungen der Textur von Haaren oder Finger-/Fußnägeln, Verdickungen"
          "von Operationsnarben, eine Zunahme der Pigmentation der Gesichtshaut oder eine"
          "Zunahme der Behaarung. Die meisten der unter Roaccutane auftretenden unerwünschten"
          "Wirkungen gehen nach dem Ende der Behandlung wieder zurück. Darüber hinaus werden"
          "Sie möglicherweise Veränderungen an den Haaren feststellen (Haarverlust oder – seltener –"
          "dichter werdendes Haar). Dieser Effekt tritt in der Regel nur vorübergehend auf, eine"
          "dauerhafte Ausdünnung der Haare ist selten. Nach dem Ende der Behandlung werden Ihre"
          "Haare wahrscheinlich ihren Normalzustand wiedererlangen."
          "In sehr seltenen Fällen haben Roaccutane-behandelte Patienten ein Trockenheitsgefühl im"
          "Hals, das zu Heiserkeit führen kann. Sehr selten kommt es zu einer Verschlechterung des"
          "Hörvermögens."
          "Ferner wurden in sehr seltenen Fällen eine Abnahme der Zahl der weißen Blutkörperchen"
          "und eine Schwellung der Lymphknoten beobachtet. Diese Nebenwirkungen können die"
          "Empfindlichkeit gegenüber bakteriellen Infektionen erhöhen."
          "In sehr seltenen Fällen kann sich Roaccutane negativ auf Ihr Nachtsehvermögen auswirken"
          "oder andere Sehstörungen verursachen. Nach dem Ende der Behandlung bleiben diese"
          "Sehstörungen jedoch nur selten bestehen. Bei manchen Patienten treten Probleme beim"
          "Unterscheiden von Farben auf, und es kann vorkommen, dass Sie eine Sonnenbrille tragen"
          "müssen, um bei intensivem Sonnenschein Ihre Augen zu schützen. Falls derartige"
          "Nebenwirkungen auftreten, müssen Sie umgehend Ihren Arzt informieren, damit dieser Ihre"
          "Augen kontrollieren kann. Da diese Störungen relativ plötzlich auftreten können, ist größte"
          "Vorsicht geboten, wenn man nachts ein Fahrzeug steuert oder Maschinen bedient."
          "In sehr seltenen Fällen sind bei Roaccutane-behandelten Patienten weitere Augenprobleme"
          "aufgetreten, beispielsweise eine Verschlechterung des Sehvermögens, Trübungen der"
          "Hornhaut, Entzündungen der Hornhaut (Keratitis) sowie Trübungen der Augenlinse (grauer"
          "Star, Katarakt). Wenn während der Behandlung mit Roaccutane auch nur die geringste"
          "Störung Ihres Sehvermögens eintritt, müssen Sie sofort Ihren Arzt aufsuchen."
          "Bekannt sind weiterhin sehr seltene Fälle von Gelenkentzündungen (Arthritis),"
          "Knochenstörungen (Verzögerung des Wachstums, Exostosen und Veränderungen der"
          "Knochendichte), Kalkeinlagerungen in den Weichteilen sowie Sehnenschmerzen; auch der"
          "Blutspiegel eines Enzyms, das durch Abbau von Muskelfasern freigesetzt wird, kann bei"
          "Isotretinoin-behandelten Personen bei intensiver körperlicher Aktivität ansteigen. All diese"
          "Nebenwirkungen gehen nach dem Ende der Roaccutane-Therapie wieder zurück. Unter"
          "Umständen kann jedoch das Wachstum von Knochen, die noch nicht voll entwickelt sind,"
          "vorzeitig zum Stillstand kommen."
          "Bitte informieren Sie den Arzt, falls Sie bei sich eine Nebenwirkung feststellen, die in dieser"
          "Informationsbroschüre nicht erwähnt ist."
          "Sprechen Sie mit Ihrem Arzt, falls Sie auch nur die geringsten Bedenken hinsichtlich der"
          "unerwünschten Wirkungen von Roaccutane haben – gleichgültig, ob diese Nebenwirkungen"
          "in dieser Broschüre erwähnt sind oder nicht.",
      first: false,
    ),
    NavBar(back: NavigationEvent.ThirdPageClickEvent, forward: NavigationEvent.FifthPageClickEvent,),
  ];
}
