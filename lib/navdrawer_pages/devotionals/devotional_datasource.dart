import 'package:flutter/cupertino.dart';
import 'package:rccg_cod/dashboard/event/event.dart';
import 'package:rccg_cod/dashboard/event/event_card.dart';

class DevotionalModel {
  final String topic;
  final String memoryVerse;
  final String biblePassage;
  final String content;

  DevotionalModel(
      { required this.topic, required this.memoryVerse,
        required this.biblePassage,required this.content});
}

String devotionalContent = """
Woe is me! for I am as when they have gathered the summer fruits, as the grapegleanings of the vintage: there is no cluster to eat: my soul desired the firstripe fruit.
2 The good man is perished out of the earth: and there is none upright among men: they all lie in wait for blood; they hunt every man his brother with a net.
3 That they may do evil with both hands earnestly, the prince asketh, and the judge asketh for a reward; and the great man, he uttereth his mischievous desire: so they wrap it up.
4 The best of them is as a brier: the most upright is sharper than a thorn hedge: the day of thy watchmen and thy visitation cometh; now shall be their perplexity.
5 Trust ye not in a friend, put ye not confidence in a guide: keep the doors of thy mouth from her that lieth in thy bosom.
6 For the son dishonoureth the father, the daughter riseth up against her mother, the daughter in law against her mother in law; a man’s enemies are the men of his own house.
""";

List<DevotionalModel> devotionals = <DevotionalModel>[
  DevotionalModel(
    topic: "Watch That Intimacy II",
    memoryVerse: "MEMORISE: “Yea, mine own familiar friend, in whom I trusted, which did eat of my bread, hath lifted up his heel against me.” – Psalm 41:9 (KJV)",
    biblePassage: "Micah 7:1-7 (KJV",
    content: devotionalContent,
  ),

  DevotionalModel(
    topic: "Watch That Intimacy II",
    memoryVerse: "MEMORISE: “Yea, mine own familiar friend, in whom I trusted, which did eat of my bread, hath lifted up his heel against me.” – Psalm 41:9 (KJV)",
    biblePassage: "Micah 7:1-7 (KJV",
    content: devotionalContent,
  ),

  DevotionalModel(
    topic: "Watch That Intimacy II",
    memoryVerse: "MEMORISE: “Yea, mine own familiar friend, in whom I trusted, which did eat of my bread, hath lifted up his heel against me.” – Psalm 41:9 (KJV)",
    biblePassage: "Micah 7:1-7 (KJV",
    content: devotionalContent,
  ),

  DevotionalModel(
    topic: "Watch That Intimacy II",
    memoryVerse: "MEMORISE: “Yea, mine own familiar friend, in whom I trusted, which did eat of my bread, hath lifted up his heel against me.” – Psalm 41:9 (KJV)",
    biblePassage: "Micah 7:1-7 (KJV",
    content: devotionalContent,
  ),
];
