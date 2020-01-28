

# persian-input-method:

Emacs input-methods that support Persian/Farsi editing.
Quail package for inputting Persian/Farsi keyboard


# Table of Contents

1.  [persian-input-method:](#org170d0d5)
2.  [Overview](#org8ba7632)
    1.  [Installation](#orgd53cd1e)
    2.  [Usage](#orgb01c149)
3.  [farsi-isiri-9147](#orgb90090a)
    1.  [Keyboard Layout](#org5a16fbb)


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

