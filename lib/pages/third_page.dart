import 'package:flutter/material.dart';
import 'package:prospect/bloc/navigation/navigation_bloc.dart';
import 'package:prospect/pages/layouts/textpage_layout.dart';
import 'layouts/navbar_layout.dart';
import 'layouts/textblock_layout.dart';

class ThirdPage extends TextPage with NavigationStates {
  final List<Widget> children = [
    TextBlock(
      title: "Nebenwirkungen",
      content:
          "Wie bei allen Arzneimitteln kann eine Behandlung mit Roaccutane zu unerwünschten "
          "Wirkungen führen. In der Regel lassen diese Nebenwirkungen im Laufe der Behandlung "
          "nach und verschwinden, wenn die Therapie beendet wird. Ihr Arzt kann Ihnen dabei helfen, "
          "sich im Falle von Nebenwirkungen richtig zu verhalten. ",
      titleSize: 26,
      contentSize: 18,
    ),
    TextBlock(
      title: "Schwerwiegende Nebenwirkungen: \n In seltenen Fällen",
      content:
          "In seltenen Fällen können während der Roaccutane-Behandlung oder kurze Zeit nach dem "
          "Ende der Behandlung bei manchen Patienten depressive Symptome auftreten, oder es "
          "kommt zu einer Verschlimmerung einer bereits bekannten Depression. Es können auch "
          " andere ernste seelische Symptomen auftreten, insbesondere Traurigkeit, Ängste, "
          "Stimmungsschwankungen, Weinkrämpfe, Reizbarkeit, keine Freude und kein Interesse an "
          "sozialen Aktivitäten, zu viel oder zu wenig Schlaf, Veränderung des Körpergewichts oder des "
          "Appetits, nachlassende Leistungen in der Schule oder am Arbeitsplatz oder "
          "Konzentrationsschwierigkeiten. In sehr seltenen Fällen kommt es bei Patienten, die an einer "
          "Depression leiden, zu einer Verschlechterung ihres depressiven Zustandes. In sehr seltenen "
          "Fällen haben Patienten, die mit Roaccutane behandelt werden, Gedanken, die sie "
          "veranlassen können, sich selber zu schädigen und ihrem Leben ein Ende zu setzen "
          "(Selbstmordgedanken). Manche Personen haben den Versuch unternommen, sich "
          "umzubringen (Selbstmordversuch), und manchen Personen ist es tatsächlich gelungen, sich "
          "umzubringen. Es existieren Berichte, aus denen hervorgeht, dass manche dieser Personen vor "
          "ihrem Selbstmord keinerlei depressive Symptome gezeigt haben. "
          "In seltenen Fällen wurde berichtet, dass Patienten unter Roaccutane gewalttätig oder "
          "aggressiv geworden sind. "
          "Sprechen Sie mit Ihrem Arzt, wenn Sie früher einmal seelische Probleme hatten (auch wenn "
          "es sich nur um leichte Probleme handelte) oder wenn Sie während der Roaccutane "
          "bemerken, dass bei Ihnen depressive Beschwerden auftreten. Es kann sein, dass eine "
          "Unterbrechung der Roaccutane-Behandlung nicht ausreicht, um diese Symptome zu lindern; "
          "Sie benötigen dann zusätzlich eine psychologische oder psychiatrische Betreuung. ",
      titleSize: 24,
      contentSize: 18,
    ),
    TextBlock(
      title:
          "Schwerwiegende Nebenwirkungen: \n In seltenen oder sehr seltenen Fällen",
      content:
          "Wenn Sie während der Behandlung mit Roaccutane ein Engegefühl in der Brust oder eine "
          "erschwerte Atmung (vor allem, wenn Sie an Asthma leiden) bemerken, begleitet von "
          "Hautausschlägen und Juckreiz, reagieren Sie möglicherweise allergisch (d. h. "
          "überempfindlich) auf Roaccutane. Im Falle einer allergischen Reaktion müssen Sie die "
          "Behandlung sofort unterbrechen und den Arzt aufsuchen. "
          "In sehr seltenen Fällen können während der Roaccutane-Behandlung starker Durst, häufiger "
          "Harndrang und erhöhte Blutzuckerwerte auftreten. Dies kann bedeuten, dass Sie an "
          "Diabetes mellitus (Zuckerkrankheit) erkranken. Eventuell wird aus diesem Grunde der Arzt "
          "während der Roaccutane-Behandlung Ihren Blutzucker häufiger kontrollieren. "
          "Sehr selten wurden gutartige Druckerhöhungen im Inneren des Schädels (insbesondere in "
          "Fällen, in denen Roaccutane zeitgleich mit bestimmten Antibiotika [Tetrazyklinen] "
          "eingenommen wurde), Krampfzustände sowie Schläfrigkeit beobachtet. Falls bei Ihnen "
          "anhaltende Kopfschmerzen mit Übelkeit, Erbrechen und Sehstörungen (bedingt durch ein "
          "Ödem der Sehnervpapille) auftreten, so kann dies bedeuten, dass es bei Ihnen zu einer "
          "Druckerhöhung im Inneren des Schädels gekommen ist. In diesem Fall müssen Sie Ihre "
          "Roaccutane-Behandlung sofort absetzen und den Arzt aufsuchen. "
          "Wenn bei Ihnen starke Bauchschmerzen mit oder ohne schwere blutige Durchfälle, Übelkeit "
          "und Erbrechen auftreten, müssen Sie Ihre Roaccutane-Behandlung sofort absetzen und den "
          "Arzt aufsuchen. In sehr seltenen Fällen wurden Fälle von schweren Erkrankungen der "
          "Verdauungsorgane wie beispielsweise Pankreatitis, Magen-Darm-Blutungen, Entzündungen "
          "des Dickdarms (Kolitis) oder Dünndarms (Ileitis) und entzündliche Darmerkrankungen "
          "beobachtet. "
          "Wenn Sie feststellen, dass sich Ihre Haut und die Augen gelb verfärben und Sie sich sehr "
          "müde fühlen, kann dies bedeuten, dass bei Ihnen eine Leberentzündung (Hepatitis) "
          "aufgetreten ist. Auch wenn dies bislang nur sehr selten bei Roaccutane-behandelten "
          "Patienten passiert ist, müssen Sie Ihre Roaccutane-Behandlung sofort absetzen und den Arzt "
          "aufsuchen. "
          "In sehr seltenen Fällen wurden bei Roaccutane-behandelten Patienten entzündliche "
          "Erkrankungen der Nieren festgestellt. Die betroffenen Patienten sind oft sehr müde, haben "
          "Schwierigkeiten mit dem Wasserlassen oder können gar kein Wasser mehr lassen, und ihre "
          "Augenlider schwellen an. In diesen Fällen müssen Sie Ihre Roaccutane-Behandlung sofort "
          "absetzen und den Arzt aufsuchen.",
      titleSize: 24,
      contentSize: 18,
    ),
    NavBar(
      back: NavigationEvent.SecondPageClickEvent,
      forward: NavigationEvent.FourthPageClickEvent,
    ),
  ];
}
