

# persian-input-method:

Emacs input-methods that support Persian/Farsi editing.
Quail package for inputting Persian/Farsi keyboard


# Table of Contents

1.  [persian-input-method:](#orge76f0a1)
2.  [Overview](#org02af776)
    1.  [Installation](#org475e232)
    2.  [Usage](#org8c6b3c1)
3.  [farsi-transliterate-banan](#org667e44a)
4.  [farsi-isiri-9147](#org5cfbddf)
    1.  [Keyboard Layout](#orgf56fef8)


# Overview

persian.el contains a collection of input methods for
Persian languages (Farsi, Urdu, Pashto/Afghanic, &#x2026;)

At this time, the following input methods are specified:

-   (farsi-isiri-9149) Persian Keyboard based on Islamic Republic of Iran's ISIRI-9147
-   (farsi-transliterate-banan) An intuitive transliteration keyboard for Farsi

Additional documentation for these input methods can be found at:
 <http://www.persoarabic.org/PLPC/120036>


## Installation

Persian input-methods are distributed with emacs. No installation is required.


## Usage

    Options -> Multilingual Environment -> Select Input Method

    (call-interactively 'set-input-method)
    (set-input-method "farsi-isiri-9147" t)
    (set-input-method "farsi-transliterate-banan" t)


# farsi-transliterate-banan

Given a Qwerty keyboard, use Persian-to-Latin transliteration knowledge
to reverse transliterate in persian

See <http://www.persoarabic.org/PLPC/120036> document for more complete
documentation of keyboard bindings and usage instructions.

ISIRI-9147 Persian keyboard is generally not well suited for Iranian-Expatriates
working/living in the West.

The qwerty keyboard is usually second nature to Persian speaking expatriates and they
don't want to learn/adapt to ISIRI-9147.  They expect software to adapt to them.

That is what the \`\`Banan Multi-Character (Reverse) Transliteration Persian Input Method'' does.

The typical profile of the user is assumed to be one who:

-   can write in farsi (not just speak it).
-   is fully comfortable with a qwerty latin keyboard.
-   is not familiar with isir-9147 and does not wish to be trained.
-   communicates and writes in a mixed globish/persian &#x2013; not pure persian.
-   is intuitively familiar with transliteration of farsi/persian into latin based on two letter
    phonetic mapping to persian characters (e.g., gh ق &#x2013;  kh خ &#x2013; sh ش &#x2013; ch چ &#x2013; zh ژ.

This transliteration keyboard is designed to be intuitive such that
mapping are easy and natural to remember for a persian writer.
It is designed to be equivalent in capability to farsi-isiri-9147
and provide for inputting all characters enumerated in ISIRI-6219.

farsi-transliterate-banan is of course phonetic oriented.  But it is very different from
pinglish. Pinglish is word oriented where you sound out the word with latin letters &#x2013;
including the vowels. farsi-transliterate-banan is letter oriented where you enter the
latin letter/letters closest to the persian letter. And usually omit vowels.

For some persian characters there are multiple ways of inputting
the same character. For example both \`\`i'' and \`\`y'' produce ی.
For یک \`\`yk'', \`\`y'' is more natural and for این \`\`ain'', \`\`i'' is more natural.

The more frequently used keys are mapped to lower case. The less frequently used letter moves to
upper case. For example: \`\`s'' is س and \`\`S'' is ص.  \`\`h'' is ه and \`\`H''
is ح.

Multi-character input is based on \\, &, and / prefix
characters. The letter 'h' is used as a postfix for the following two character mappings:
gh ق &#x2013;  kh خ &#x2013; sh ش &#x2013; ch چ &#x2013; zh ژ  &#x2013; Th ة &#x2013; Yh ى.

Prefix letter \\ is used for two character inputs when an alternate form of a letter
is desired for example '\&#x00ad;' is: '÷' when '-' is: '-'.

Prefix letter & is used for multi-character inputs when special characters are
desired based on their abbreviate name. For example you can enter &lrm; to enter the
\`\`LEFT-TO-RIGHT MARK'' character.

Prefix letter / is used to provide two characters. / is: \`\`ZERO WIDTH NON-JOINER''
and // is /.

The letter 'h' is used in a number of two character postfix mappings,
for example \`\`sh'' ش. So if you need the sequence of \`\`s'' and \`\`h'' you
need to repeat the \`\`s''. For example: سهم = 's' 's' 'h' 'm'.


# farsi-isiri-9147

The keyboard mapping defined here is based on:

فنّاوریِ اطلاعات - چیدمان حروف و علائم فارسی بر صفحه کلید رایانه
استاندارد ملی ایران ۹۱۴۷ − چاپ اول

Institute of Standards and Industrial Research of Iran
Information Technology – Layout of Persian Letters and Symbols
on Computer Keyboards
ISIRI 9147 &#x2013; 1st edition
Published at: <http://www.isiri.org/portal/files/std/9147.pdf>
Re-Published at: <http://www.persoarabic.org/Repub/fpf-isiri-9147>

Specification of Iran's Persian Character Set is also relevant:

فنّاوریِ اطلاعات &#x2013; تبادل و شیوه‌ی نمایش اطلاعاتِ فارسی بر اساس یونی کُد
استاندارد ملی ایران ۶۲۱۹ −− نسخهی نهایی

Institute of Standards and Industrial Research of Iran
Information Technology – Persian Information Interchange and Display Mechanism, using Unicode
ISIRI-6219 Final Version
Published at: <http://www.isiri.org/portal/files/std/6219.htm>
Re-Published at: <http://www.persoarabic.org/Repub/fpf-isiri-6219>

Layers 1, 2 and 3 of ISIRI-9147 are fully implemented with the
exception of the Backslash, Alt-Backslash, Shift-Space and
Alt-Space keys.

The Backslash key is used to replace کلید با دگر ساز راست‌ &#x2013; the Alt or
Meta key.

Layer 3 is then entered with the Backslash key and Layer 3 is
implemented as two letter keys as specified in ISIRI-9147.

The character corresponding to Backslash is entered with Backslash-Backslash.
Alt-Backslash has been moved to Backslash-r.
Alt-Space has been moved to Backslash-t.
Shift-Space has been moved to Backslash-y.

With these modifications, farsi-isiri-9147 is a full implementation
of ISIRI-9147.  Additionally, these modifications allow for this
implementation to be ascii input stream based &#x2013; in addition to
being a keyboard layout.

If a key on Layer 1 was reserved to replace دگر ساز راست‌ (the Alt
or Meta key), then farsi-isiri-9147 could have claimed full
compliance &#x2013; without the need for the above description. Perhaps
this can be considered a flaw in the base ISIRI-9147 specification
to be addressed in the next revision.


## Keyboard Layout

Note: the rows of keys below are enclosed in Left-To-Right Override
embedding, to prevent them from being reordered by the Emacs
display engine.

     +----------------------------------------------------------------+
     ‭| ۱! | ۲٬ | ۳٫ | ۴﷼ | ۵٪ | ۶× | ۷، | ۸* | ۹( | ۰) | -ـ | =+ | `÷ |‬
     +----------------------------------------------------------------+
       ‭| ضْ| صٌ| ثٍ| قً| فُ| غِ| عَ| هّ| خ] | ح[ | ج{ | چ} |‬
       +------------------------------------------------------------+
        ‭| ش‌ؤ | س‌ئ | ی‌ي | ب‌إ | لأ | اآ | ت‌ة | ن« | م» | ک: | گ؛ | \| |‬
        +-----------------------------------------------------------+
          ‭| ظ‌ك | طٓ| زژ | رٰ| ذB | دٔ| پء | و< | .> | /؟ |‬
          +-------------------------------------------+

