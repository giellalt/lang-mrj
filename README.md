The Hill Mari (Western Mari) morphology and tools
==========================================

[![Maturity](https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2Fgiellalt%2Flang-mrj%2Fgh-pages%2Fmaturity.json)](https://giellalt.github.io/MaturityClassification.html)
![Lemma count](https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2Fgiellalt%2Flang-mrj%2Fgh-pages%2Flemmacount.json)
[![GitHub issues](https://img.shields.io/github/issues-raw/giellalt/lang-mrj)](https://github.com/giellalt/lang-mrj/issues)
[![License](https://img.shields.io/github/license/giellalt/lang-mrj)](https://github.com/giellalt/lang-mrj/blob/main/LICENSE)
[![Doc Build Status](https://github.com/giellalt/lang-mrj/workflows/Docs/badge.svg)](https://github.com/giellalt/lang-mrj/actions)
[![CI/CD Build Status](https://divvun-tc.giellalt.org/api/github/v1/repository/giellalt/lang-mrj/main/badge.svg)](https://divvun-tc.giellalt.org/api/github/v1/repository/giellalt/lang-mrj/main/latest)

Download nightly / CI/CD zhfst files for testing:
[![Windows](https://img.shields.io/badge/download%40latest-Windows--bhfst-brightgreen)](https://pahkat.uit.no/main/download/speller-mrj?platform=windows&channel=nightly)
[![MacOS](https://img.shields.io/badge/download%40latest-macOS--bhfst-brightgreen)](https://pahkat.uit.no/main/download/speller-mrj?platform=macos&channel=nightly)
[![Mobile](https://img.shields.io/badge/download%40latest-mobile--bhfst-brightgreen)](https://pahkat.uit.no/main/download/speller-mrj?platform=mobile&channel=nightly)

This repository contains finite state source files for the Western Mari language,
for building morphological analysers, proofing tools
and dictionaries. The data and implementation are licenced under GNU GPL
licence, also detailed in the
[LICENSE](https://github.com/giellalt/lang-mrj/blob/main/LICENSE). The
authors named in the AUTHORS file are available to grant other licencing
choices.

Install proofing tools and [keyboards](https://github.com/giellalt/keyboard-mrj)
for the Western Mari language by using the [Divvun Installer](http://divvun.no)
(some languages are only available via the nightly channel).

Download and test speller files
-------------------------------

The speller files downloadable at the top of this page (the `*.bhfst` files) can
be used with [divvunspell](https://github.com/divvun/divvunspell), to test their
performance. These files are the exact same ones as installed on users' computers
and mobile phones. Desktop and mobile speller files differ from each other in the
error model and should be tested separately — thus also two different downloads.

Documentation
-------------

Documentation can be found at:

- [Language specific documentation](https://giellalt.github.io/lang-mrj/)
- [General documentation](https://giellalt.github.io/)

Core dependencies
-----------------

In order to compile and use Western Mari language morphology and
dictionaries, you need:

- an FST compiler: [HFST](https://github.com/hfst/hfst), [Foma](https://github.com/mhulden/foma) or [Xerox Xfst](https://web.stanford.edu/~laurik/fsmbook/home.html)
- [VislCG3](https://visl.sdu.dk/svn/visl/tools/vislcg3/trunk) Constraint Grammar tools

To install VislCG3 and HFST, just copy/paste this into your Terminal on **macOS**:

```
curl https://apertium.projectjj.com/osx/install-nightly.sh | sudo bash
```

or terminal on **Ubuntu, Debian or Windows Subsystem for Linux**:

```
wget https://apertium.projectjj.com/apt/install-nightly.sh -O - | sudo bash
sudo apt-get install cg3 hfst
```

or terminal on **RedHat, Fedora, CentOS or Windows Subsystem for Linux**:

```
wget https://apertium.projectjj.com/rpm/install-nightly.sh -O - | sudo bash
sudo dnf install cg3 hfst
```

Alternatively, the Apertium wiki has good instructions on how to [install the dependencies for Mac
OS X](https://wiki.apertium.org/wiki/Apertium_on_Mac_OS_X) and how to [install
the dependencies on
linux](https://wiki.apertium.org/wiki/Installation_of_grammar_libraries)

Further details and dependencies are described on the GiellaLT [Getting Started](https://giellalt.uit.no/infra/GettingStarted.html) pages.

Downloading
-----------

Using Git:
```
git clone https://github.com/giellalt/lang-mrj
```

Using Subversion:
```
svn checkout https://github.com/giellalt/lang-mrj.git/trunk lang-mrj
```

Building and installation
-------------------------

[INSTALL](https://github.com/giellalt/lang-mrj/blob/main/INSTALL)
describes the GNU build system in detail, but for most users it is the usual:

```sh
./autogen.sh # This will automatically clone or check out other GiellaLT dependencies
./configure
make
(as root) make install
```

Citing
------

<!-- Add language specific citation stuff here and to the CITATION.cff -->


Rueter, J. (2014).
[The Livonian-Estonian-Latvian Dictionary as a threshold to the era of language technological applications](https://ojs.utlib.ee/index.php/jeful/article/view/jeful.2014.5.1.14). In: Journal of Estonian and Finno-Ugric Linguistics. 5, 1, p. 251–259 9 p.

```bibtex
   @article{2a8a012a1cc640db9ec0e4466f9d3e65,
   title = "The Livonian-Estonian-Latvian Dictionary as a threshold to the era of language technological applications",
   abstract = "This article outlines the multiple use of electronic source materials from the Livonian-Estonian-Latvian Dictionary of 2012 in a “Kone Foundation” funded project for developing finite-state morphological parsers. It provides an introduction to the project, the language-independent Giellatekno infrastructure at Troms{\o}, Norway, and the materials utilized in the electronic manuscript of the dictionary. The introduction is followed by an extensive description of what has been developed on the Giellatekno infrastructure with explicit indications of where parallel projects might be initiated.",
   keywords = "6121 Languages, Livonian, Uralic Languages, Kone Language Programme, open-source, language-independent infrastructure, HFST, Giellatekno, morphological parser, spellcheckers, morphology-savvy web dictionary, intelligent computer-assisted language learning",
   author = "Jack Rueter",
   note = "ESUKA – JEFUL 2013, 5–1: 253–261 ",
   year = "2014",
   doi = "10.12697/jeful.2014.5.1.14",
   language = "English",
   volume = "5",
   pages = "251–259",
   journal = "Journal of Estonian and Finno-Ugric Linguistics",
   issn = "1736-8987",
   publisher = "University of Tartu",
   number = "1",

   }
```


If you use language data from more than one GiellaLT language, consider citing
[our LREC 2022 article on whole
infra](https://aclanthology.org/2022.lrec-1.125/):

> Linda Wiechetek, Katri Hiovain-Asikainen, Inga Lill Sigga Mikkelsen,
  Sjur Moshagen, Flammie Pirinen, Trond Trosterud, and Børre Gaup. 2022.
  *Unmasking the Myth of Effortless Big Data - Making an Open Source
  Multi-lingual Infrastructure and Building Language Resources from Scratch*.
  In Proceedings of the Thirteenth Language Resources and Evaluation Conference,
  pages 1167–1177, Marseille, France. European Language Resources Association.

If you use bibtex, following is as it is on ACL anthology:

```bibtex
@inproceedings{wiechetek-etal-2022-unmasking,
    title = "Unmasking the Myth of Effortless Big Data - Making an Open Source
    Multi-lingual Infrastructure and Building Language Resources from Scratch",
    author = "Wiechetek, Linda  and
      Hiovain-Asikainen, Katri  and
      Mikkelsen, Inga Lill Sigga  and
      Moshagen, Sjur  and
      Pirinen, Flammie  and
      Trosterud, Trond  and
      Gaup, B{\o}rre",
    booktitle = "Proceedings of the Thirteenth Language Resources and Evaluation
    Conference",
    month = jun,
    year = "2022",
    address = "Marseille, France",
    publisher = "European Language Resources Association",
    url = "https://aclanthology.org/2022.lrec-1.125",
    pages = "1167--1177"
}
```
