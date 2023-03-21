Requires a recent version of HFST (3.10.0 / git revision>=3aecdbc)
Then just:
$ make
$ echo "ja, ja" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst

Issues:
- [X] Ambiguous input
- Seems to work fine
- [X] Ambiguous multiword expessions with ambiguous tokenisation
- Seems to work – represented within lexc now; hfst-tokenise also
supports forms on the analyses now
- [X] Ambiguous multiword expessions need reorganising after CG
- The module cg-mwesplit takes wordforms from readings and turns them into
new cohorts
- [X] Unknown words
- The set-difference method only works for words without
flag diacritics (even though we should be working only on the form-side?)
and leads to binary blow-up: With only lower unknowns, we get 45M;
lower+upper gives 67M, while no unknowns gives 27M
- Fixed instead by treating empty analyses as unknown-tokens in
hfst-tokenise, and outputting unmatched strings with a prefix
- [ ] Treat input that's within superblanks as unmatched
- probably requires a change in hfst-tokenise itself
- [X] Try >1 space for ambiguous MWE's? – represented within lexc now
- [ ] Try set-difference-unknowns method with regular hfst commands?

More usage examples:
$ echo "Juos gorreválggain lea (dárbbašlaš) deavdit gáibádusa boasttu olmmoš, man mielde lahtuid." | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "(gáfe) 'ja' ja 3. ja? ц jaja ukjend \"ukjend\"" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "márffibiillagáffe" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst

Pmatch documentation:
https://kitwiki.csc.fi/twiki/bin/view/KitWiki/HfstPmatch

Apart from what's in our morphology, there are
1) unknown word-like forms, and
2) unmatched strings
We want to give 1) a match, but let 2) be treated specially by hfst-tokenise -a
TODO: Could use something like this, but built-in's don't include šžđčŋ:

Simply give an empty reading when something is unknown:
hfst-tokenise --giella-cg will treat such empty analyses as unknowns, and
remove empty analyses from other readings. Empty readings are also
legal in CG, they get a default baseform equal to the wordform, but
no tag to check, so it's safer to let hfst-tokenise handle them.

Needs hfst-tokenise to output things differently depending on the tag they get

* * *

<small>This (part of) documentation was generated from [tools/tokenisers/tokeniser-disamb-gt-desc.thirties.pmscript](https://github.com/giellalt/lang-mrj/blob/main/tools/tokenisers/tokeniser-disamb-gt-desc.thirties.pmscript)</small>

---
