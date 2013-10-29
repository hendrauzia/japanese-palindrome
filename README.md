At a Glance
=========

Detect if a romanized japanese string is a palindrome.

Requirements
=========

This project is built on top of and requires:

* mac and unix-like systems are welcome (sorry, hasn't been tested on windows)
* ruby 2.0.0-p247

Installation
=========

    $ git clone git@github.com:hendrauzia/japanese-palindrome.git
    $ bundle install

How to Use
=========

The following examples will return `<text> is a palindrome!`, otherwise it will return `<text> is not a palindrome!`.

    $ cd japanese-palindrome

    $ bin/japanese-palindrome "Shikishi"
    Shikishi is a palindrome!

    $ bin/japanese-palindrome "Dansu ga sunda"
    Dansu ga sunda is a palindrome!

    $ bin/japanese-palindrome "Karui kibin na koneko nanbiki iruka"
    Karui kibin na koneko nanbiki iruka is a palindrome!

    $ bin/japanese-palindrome "Watashi no ongaku"
    Watashi no ongaku is not a palindrome!

References
=========

Japanese Hiragana syllables taken from:

* http://en.wikipedia.org/wiki/Hiragana#Table_of_hiragana
* http://www.japanese-lesson.com/resources/pdf/hiragana_chart.pdf

List of japanese palindrome can be seen at:

* http://www.sljfaq.org/afaq/palindromes.html

Limitations
=========

It still has some limitations to detect palindrome on sentences like these:

    Ika ni mo nigai
    Nagasaki ya no yaki sakana
    Hei no aru ano ie

The above sentences, even if it's a palindrome, it will return `<text> is not a palindrome!`.
