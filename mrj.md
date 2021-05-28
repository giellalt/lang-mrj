



This is the Hill Mari disambiguation file. It chooses
the correct morphological analyses in any given sentence context.

It was copied from the Eastern Mari cg3 file 18.11.21. tt.

The file first defines sentence delimiters and tags and sets.
Thereafter come the rules, each rule is listed below.


# Sentence delimiters

The delimiters are: "<.>" "<!>" "<?>" "<...>" "<¶>" sent




The **Tags** section lists all the tags inherited from the fst, and defines them for
use in the syntactic analysis.
The tags are documented in the root.lexc file, and here only listed for reference.

The next section, **Sets**, contains sets defined
on the basis of the tags listed here, those set names are not visible in the output.





## Tags



### Beginning and end of sentence

BOS
EOS

### Clause boundary


### Parts of speech tags

N
V
A
Adv
CC
CC
CS
Interj
Pron
Num
Pcle
Clt
Po

WORD is the set of all POS

### Verbal tense and mood tags
Prs
Prt1
Prt2
Fut
Imprt
Ind
Cond
Des

### Other verbal tags
Act
ConNeg
FutPrc
Ger
Inf
Nec
Neg
NegPrc
Pass
Prc
PrfPrc

Verbal person-number tags
Sg1
Sg2
Sg3
Pl1
Pl2
Pl3

### Numeral tags

Sg
Pl

### Case tags

Nom
Gen
Abl
Dat
Com
Cns
Acc
Ins
Ine
Ill
Cmpr (case)



### Other nominal tags

Pers
Refl
Rel
Interr
Recipr
Dem
ABBR

### Adjective comparison tags

Pos (?)
Superl
Comp

### Possessive suffix tags

PxSg1
PxSg2
PxSg3
PxPl1
PxPl2
PxPl3

### Numeral tags

Card
Coll
Ord
Temp (?)


### Particles
Qst
Foc

### Punctuation marks

CLB
PUCT
LEFT
RIGHT
COMMA

### Derivation tags
Der/MWN
Der/sa
Der/Pur
Der/Caus
Der/Nom

### Tags for internal testing
CmpTest
Err


## Sets

* **CASE** = all cases
* **OBLCASE** = All cases except Nom
* **VFIN** = All moods









Der/Date
Der/Year
Der/Hum
Der/Lang
Der/Domain
Der/Feat-phys
Der/Clth
Der/Body
Der/Act

Sem/Ani
Sem/Fem
Sem/Group
Sem/Mal
Sem/Measr
Sem/Money
Sem/Obj
Sem/Obj-el
Sem/Org
Sem/Perc-emo
Sem/Plc
Sem/Sign
Sem/State-sick
Sem/Sur
Sem/Time
Sem/Txt




# Rule section


## Early, word-internal rules

* **CmpTst** remove CmpTst if not 1 N
* **CmpTst2** Select CmpTst in all other cases
***NoFocPossNoun** remove Foc/Poss if PxSg3

### CC or Pcle
* **teveteve1** gives CC if two теве
* **teveteve1** gives CC if two теве
* **onlyteve** gives Pcle if two теве

* **PcleNotCC** Lauseen alussa on Pcle

* **CCnotInterj**

* **Posna** деч посна

* **ikNum** ик is never A


## Specific words

### да

* **da1** Adv initially

* **da2** CC elsewhere

### и
* **iNotAbbr**

### Interjection

* **NoExclNoInterj**

### Predicative

**AifVövny** selects A if вӧвны somewhere to the left

### Conjunctions

* **NotPcle**


### Particles

***InterrQ** if question mark anywhere to the right

***Interr** removes Rel if question mark to the right somewhere









### Verbs

Existential ulo


Infinitives



* **Ind** selects Ind if no Ind to the right or to the left

* **1SgAgr** selects (Ind Sg1) if Pron1Sg to the right or to the left

* **1SgAgr** selects (Ind Sg1) if (Pron1Sg Nom) to the right or to the left

* **2SgAgr** selects (Ind Sg2) if Pron2Sg to the right or to the left

* **IndAfterInf** selects Ind if Inf to the left

* **NotImpWhenInd**

* **NotImpWhenWords1**

* **NotImpWhenWords2**



### Adjectives





***RemAdjBeforeProp** removes A if Prop to the left

***AdjBeforeMo** selects A if Interr to the right

* **AdjBeforeAN** selects A if N or A to the right

* **RemN** removes N if N to the right

* **AdjAfterNbeforeEOS** selects A if N to the left and EOS to the right (predicative position)

*_AdjBeforeConjAdj_ selects A if conjuction and A to the right ;

* **AdjNotAdv** removes Adv if N to the right

* **AdjNotPron** removes Pron Pers if N to the right

***AdjNotN** removes N if Pron Pers anywhere to the left

* **RemAdj1** removes A if no N or A follows

***RemAdj2** removes A if no N or Pron in a clause



### Nouns

* **lym** nalash "to take a name" = "to be given a title"


***RemNomIfPronLeft** removes Nom if Pron Nom anywhere to the left

***RemNomIfPronRight** removes Nom if Pron Nom anywhere to the right

***NomBeforeConjNom** selects N Nom if conjoined with N Nom

***NafterDem** selects N if Dem to the left (demonstratives tend to be sole modifiers) 

***NotANoun**

***NafterAbeforeEOS**

***RemNafterAdv** removes N if adverb to the left

### Derivations


* **RemDerMWN1** removes Der/MWN if N is an option

* **RemDerMWN2** removes Der/MWN if N to the right

* **Dersa** if noun follows

* **SelDerMWN** select Der/MWN if no noun follows

### Cases

* **RemNomNif12left** removes Nom with N if there is a verb with 1st or 2nd agreement to the lef

* **RemNomNif12right** removes Nom with N if there is a verb with 1st or 2nd agreement to the right


* **AccNeedsVerb** prefers Nom (TODO: does this make sense? SASHA: it does but there was a typo, -1* instead of 1* in the third clause of the condition)




### Proper nouns


### Numerals

* **IkNumN** ik is num before N Sg
* **IkNumAN** ik is num before A N Sg

* **KumNumAN** ik is num before A N Sg

### Pronouns
* **NotImp** in most тиде cases


* **NotInterr** if Rel

* **Dem** if noun follows

* **уке**

### Conjunctions



### Postpositions







* **PoNeedsGen** removes postposition if the word to the left is not Gen or Nom

**ConjNotPcle** supposes we have found the particles earlier on, and now go for Conj.

## Adverbs






* **molan** awaiting rules for dative verbs subcategorising for mo Dat







## Verbs

### Finite verb or Gerundium

***RemGer** removes Ger Gen if there is no verb to the right 

* **FinNotGer** removes Ger if there is a Ind Prt2 Sg3 in the clause

* **GerNotFin**  Ger if there is a Ind next

* **GerNotFin**  Ger if there is a Ger da Ger VFin






### First or third person

* **Sg1NotSg3** removes Prt1 Sg3 when Pers Sg1 Nom in same clause

* **Sg3NotSg1** removes Prt1 Sg1 when there is no Pers Sg1 Nom in same clause
    - This definitely is too strong, it precludes zero Sg1 subjects

### ConNeg or not
* **NoConNeg1** No ConNeg if no Neg to the left
* **NoConNeg2** No ConNeg if another ConNeg to the left

* **NoErrOrth**























* Sets for POS sub-categories





* Sets for Semantic tags





* Sets for Morphosyntactic properties

Nom
Gen
Abl
Dat
Com
Cns
Acc
Ins
Ine
Ill
Cmpr (case)

































































































































































* Sets for verbs


    - V is all readings with a V tag in them, REAL-V should
be the ones without an N tag following the V.  
The REAL-V set thus awaits a fix to the preprocess V ... N bug.



* The set COPULAS is for predicative constructions







* NP sets defined according to their morphosyntactic features







* The PRE-NP-HEAD family of sets

These sets model noun phrases (NPs). The idea is to first define whatever can
occur in front of the head of the NP, and thereafter negate that with the
expression **WORD - premodifiers**.












The set **NOT-NPMOD** is used to find barriers between NPs.
Typical usage: ... (*1 N BARRIER NPT-NPMOD) ...
meaning: Scan to the first noun, ignoring anything that can be
part of the noun phrase of that noun (i.e., "scan to the next NP head")






* Miscellaneous sets





















* Border sets and their complements











* **CASE** = all cases
* **OBLCASE** = All cases except Nom


* Syntactic sets




These were the set types.



* **CCasCNPCVP** Map (@CNP @CVP) to CC






## NP attributives



## Postposition


## HABITIVE MAPPING


* **hab1** 


* **hab2** 

* **hab3** (<hab> @ADVL>) for hab-actor and hab-case; if leat to the right, and Nom to the right of leat. Lots of restrictions.



* **habNomLeft** 


* **hab4** 	



* **hab6** 

* **hab7** 

* **hab8** This is not HAB
* **hab5**  This is not HAB








* **habGen** (<hab> @<ADVL) hab for Gen; if Gen is located in the end of the sentence and Nom is sentence initial



















Mari rules start here






Mari rules stop here	









































































* **subj>Sgnr1** (@SUBJ>) for Nom Sg, including Indef Nom if; VFIN + Sg3 or Pl3 to the right (VFIN not allowed to the left) 

* **subj>Pl** (@SUBJ>) for plural nominatives, including Coll and Sem/Group. VFIN + Pl3 to the right.

* **subj>Pl** (@SUBJ>) for plural nominatives


* **subj>Sgnr2** (@SUBJ>) for Nom Sg; if VFIN + Sg3 to the right.

* **<subjSg** (@<SUBJ) for Nom Sg; if VFIN Sg3 or Du2 to the left (no HAB allowed to the left).

















* **advlPoPr>** (@<ADVL) if mainverb to the right.









## SUBJ MAPPING - leftovers

## OBJ MAPPING - leftovers


## HNOUN MAPPING





















# Hill Mari (Western Mari) verb inflection

## Irregular lexica

Also lexica for +Hom tags

 * **LEXICON VAux** = auxiliaries 

 * **LEXICON V_AM-HOM1** homonyms @hid=Hom1

 * **LEXICON V_EM-HOM2** homonyms @hid=Hom2

 * **LEXICON V_AM_SUB** substandard

 * **LEXICON V_EM_SUB** substandard

## Regular verbs

Both *-am* and *-em* verbs and their subgroups.

### V_AM verbs


LEXICON V_IAEM
Approximately 619 2014-12-21
Front Vowel harmony for V_AM verbs
LEXICON V_IAEM-SG3
Approximately 4 2014-12-21
Front Vowel harmony for V_AM-SG3 verbs
LEXICON V_IAEM-3
Approximately 2 2014-12-21
Front Vowel harmony for V_AM-3 verbs

LEXICON V_MOAM
Approximately 465 2014-12-21
Back Vowel harmony for  V_AM	verbs
LEXICON V_MOAM-SG3
Approximately 2 2014-12-21
Back Vowel harmony for  V_AM-SG3 verbs
Approximately 1 2014-12-21
Back Vowel harmony for  V_AM-3 verbs

### STEM CHANGE
LEXICON V_PYECHKAEM
Approximately 12 2014-12-21
Back Vowel harmony for  V_AM verbs
LEXICON V_PYECHKAEM-SG3
Approximately 0 2014-12-21
Back Vowel harmony for  V_AM-SG3 verbs
LEXICON V_PYECHKAEM-3
Approximately 0 2014-12-21
Back Vowel harmony for  V_AM-3 verbs

LEXICON V_KACHKAM
Approximately 11 2014-12-21
Back Vowel harmony for  V_AM verbs
LEXICON V_KACHKAM-SG3
Approximately 0 2014-12-21
Back Vowel harmony for  V_AM-SG3 verbs
LEXICON V_KACHKAM-3
Approximately 0 2014-12-21
Back Vowel harmony for  V_AM-3 verbs

### V_EM verbs

LEXICON V_KACHKAM-3
Approximately 1052 2014-12-21
Front Vowel harmony for V_EM	verbs
LEXICON V_KACHKAM-3
Approximately 2 2014-12-21
Front Vowel harmony for V_EM-SG3 verbs

LEXICON V_KACHKAM-3
Approximately 1315 2014-12-21
Back	Vowel harmony for  V_EM verbs
LEXICON V_KACHKAM-3
Approximately 4 2014-12-21
Back	Vowel harmony for  V_EM verbs
LEXICON V_KACHKAM-3
Approximately 1 2014-12-21
Back	Vowel harmony for  V_EM verbs

## Lexica pointing to suffix lexica

### Intermediate AM lexica

 LEXICON V_AM  ӹштӓш:ӹшт









пелӓш: онг пелеш
What else is needed 2014-05-08

### Intermediate EM lexcia



хӹдӹртӓш: хӹдӹртӹ
What else is needed 2014-05-08


 * **LEXICON V_EM** колташ:колты









## Suffix lexica

### NONPAST

#### am verbs

INDPRSSG1-am

INDPRSSG2-am

INDPRSSG3-am

INDPRSPL1-am

INDPRSPL2-am

INDPRSPL3-am

INDPRSCONNEG-am

INDPRSPL3CONNEG-am

#### em verbs

INDPRSSG1-em

INDPRSSG2-em

INDPRSSG3-em



INDPRSPL3-em





### PRETERIT 1

#### am

INDPRT1SG1-am

INDPRT1SG2-am

INDPRT1SG3-am

INDPRT1PL1-am

INDPRT1PL2-am

INDPRT1PL3-am

INDPRT1CONNEG-am

INDPRT1PL3CONNEG-am

#### em

INDPRT1SG1-em

INDPRT1SG2-em

INDPRT1SG3-em

INDPRT1PL1-em

INDPRT1PL2-em

INDPRT1PL3-em

INDPRT1CONNEG-em

INDPRT1PL3CONNEG-em

### PRETERIT 2

#### am
INDPRT2SG1-am

INDPRT2SG2-am

INDPRT2SG3-am

INDPRT2PL1-am

INDPRT2PL2-am

INDPRT2PL3-am

INDPRT2NEG-am
INDPRT2NEG-am
INDPRT2NEG-am
INDPRT2NEG-am
INDPRT2NEG-am
INDPRT2NEG-am
INDPRT2NEG-am

#### em








INDPRT2NEG-am
INDPRT2NEG-am
INDPRT2NEG-am
INDPRT2NEG-am
INDPRT2NEG-am
INDPRT2NEG-am

### IMPERATIVE


IMPRTSG2-am

IMPRTSG3-am

IMPRTPL2-am

IMPRTPL3-am

IMPRTIISG2-am

IMPRTIIPL2-am








### DESIDERATIVE
DES-am
DESSG1-am
DESSG2-am
DESSG3-am
DESPL1-am
DESPL2-am
DESPL3-am

DES-em
DESSG1-em
DESSG2-em
DESSG3-em
DESPL1-em
DESPL2-em
DESPL3-em


### INFINITIVE


INF

NEG-PRC

PASS-PRC


INF_BACK

NEG-PRC_BACK

PASS-PRC_BACK

ACT-PRC_BACK

INF_FRONT

NEG-PRC_FRONT

PASS-PRC_FRONT

ACT-PRC_FRONT


# Proper noun inflection

Hill Mari proper nouns inflect in the same cases as regular
nouns

PROP_



PROP-PLC_

PROP_KOL_PLC

PROP_KOL_FEM

PROP_OLMA_FEM

PROP_OLMA_MAL

PROP_OLMA_PLC

PROP_KOL_MAL

 LEXICON PROP_KOL  кол:кол
PROP_KOL

PROP-PLC_MOER

PROP_MOER




PROP-PLC_TYERVYE

 * **LEXICON PROP_TYERVYE** тӹрвӹ:тӹрвӹ
PROP_TYERVYE
The stem vowel "е" is found with possessor indices and the lative

PROP-PLC_OLMA



 LEXICON PROP_OLMA  кол:кол

 * **LEXICON PROP_KARTA** карта:карта
а is specific to the +Sg+Nom, elsewhere ы or ӹ




## Male given name for deriving patronyms







Вили:Вил


## Female Given names

Prop-kal_fem

Prop-lak_fem

Prop-kit_fem

... etc.







Russian type Surnames
Абдеев:Абдеев

Багрий:Багр

Аморский:Аморск

































PLACE NAMES FROM TEMPLATES !!









# Pronouns
----

Hill Mari (Western Mari) pronouns...

PRON_

PERS-SG1

PERS-SG2

PERS-SG3

PERS-PL1

PERS-PL2

PERS-PL3 нӹнӹ:нӹнӹ

REFL ӹшке:ӹшк







 LEXICON DEM-SG  тидӹ:ти


 LEXICON DEM-PL  нинӹ:ни
Plural pronoun with additional plural marking


DemTag
What are these тӹдӹмӓт, тӹдӹлӓнӓт

Dem-Cx







# Hill Mari adjective inflection


This file contains a handful of lexica, each with 3 subentries. The two first ones give +Pos+Attr dn +Comp:рак, respectively, whereeas the third entry gives a *+Der/N* tag and redirects to the relevant noun lexica for case inflection


## Temporary lexicon
 * **LEXICON A-ADN_**  = This adjective only occurs with a head word in an adnominal phrase



## Ordinary lexica

 * **LEXICON A_** has *aä* trigger, gets +Pos, +Comp, or goes via Der/N to NMN\_OLMA. 
This should be neutral 2013-05-11

 * **LEXICON A_OLMA** has  *back* trigger, gets +Pos, +Comp, or goes via Der/N to NMN\_OLMA.

 * **LEXICON A_AEZAE** has *front* trigger, gets +Pos, +Comp, or goes via Der/N to NMN_AAEZAE.

 * **LEXICON A_MARY** has *back* trigger, gets +Pos, +Comp, or goes via Der/N to NMN\_MARY.

 * **LEXICON A_TYERVYE** har *front* trigger, gets +Pos, +Comp, or goes via Der/N to NMN\_TYERVYE.

 * **LEXICON A_KOL** has *back* trigger, gets +Pos, +Comp, or goes via Der/N to NMN\_KOL.
 +Der+Der/N+N:%{back%} NMN_KOL ; The +N tag is given here to curtail over generation from derived nouns

 * **LEXICON A_MOER** has *front* trigger, gets +Pos, +Comp, or goes via Der/N to NMN\_MOER.
  +Der+Der/N+N:%{front%} NMN_MOER ; The +N tag is given here to curtail over generation from derived nouns





# Clitics
----

Hill Mari (Western Mari) adverbial clitics are not bound by POS.

K

WORDEND




# Compounding

Does Hill Mari have anything like LEXICON R and %- N ;


## Interj lexica

 * LEXICON INTERJ_  


## Postp lexica



 * LEXICON POSTP_  

 * LEXICON Ad-A_ 

ADV_ 







Temporal tags with cases

 * LEXICON ADV-TEMP_  




















# Noun inflection
----

## Ad hoc lexica




 * **LEXICON N_**

## Substandard lexica

 * **LEXICON N_KOL_SUB**

 * **LEXICON N_TYERVYE_SUB**



## Standard lexica 

 LEXICON N_KOL  кол:кол
Back harmony

 LEXICON N_MOER  мӧр:мӧр
Front harmony

 * **LEXICON N_MARY** мары:мары
The stem vowel "е" is found with possessor indices and the lative
Back harmony

 * **LEXICON N_TYERVYE** тӹрвӹ:тӹрвӹ
The stem vowel "е" is found with possessor indices and the lative
Front harmony

N_KARTA_SUB

 * **LEXICON N_KARTA** карта:карта
а is specific to the +Sg+Nom, elsewhere ы or ӹ
Back harmony

 * **LEXICON N_BIRZHA** биржа:биржа
а is specific to the +Sg+Nom, elsewhere  ӹ
Front harmony

 * **LEXICON N_VAREN1E** варенье:варенье
е is specific to the +Sg+Nom, elsewhere  ӹ
Front harmony

 LEXICON N_POCHTA   почта:почта

 LEXICON N_OLMA   олма:олма
Back harmony

 LEXICON N_AEZAE   ӓзӓ:ӓзӓ
Front harmony

 LEXICON N_PECHEN1E   печенье:печенье
Front harmony

 LEXICON NMN_KOL  кол:кол
Back harmony


 LEXICON NMN_MOER  мӧр:мӧр
Front harmony


 * **LEXICON NMN_MARY** мары:мары
The stem vowel "е" is found with possessor indices and the lative
Back harmony


 * **LEXICON NMN_TYERVYE** тӹрвӹ:тӹрвӹ
The stem vowel "е" is found with possessor indices and the lative
Front harmony


 * **LEXICON NMN_KARTA** карта:карта
Back а/ы
а is specific to the +Sg+Nom, elsewhere ы


 * **LEXICON NMN_BIRZHA** биржа:биржа
Front а/ӹ
а is specific to the +Sg+Nom, elsewhere ӹ

 * ** :%>ӹ NMN_OBLIQUE-INDEFINITE-PL_MUTUAL ; ** %>влӓ

 * **LEXICON NMN_VAREN1E** варенье:варенье
Front е/ӹ
е is specific to the +Sg+Nom, elsewhere ӹ

 * ** :%>ӹ NMN_OBLIQUE-INDEFINITE-PL_MUTUAL ; ** %>влӓ

 LEXICON NMN_OLMA   олма:олма
Back harmony



 LEXICON NMN_AEZAE   ӓзӓ:ӓзӓ
Front harmony



 LEXICON NMN_PECHEN1E   печенье:печенье
Front harmony


 LEXICON N_AEVAE   ӓвӓ:ӓвӓ











PxSg1+NB+CASE
singular possessa



PxSg1+NB+CASE
singular possessa



























































PXSG3

















































$ Quantifiers
----

Hill Mari (Western Mari) numerals...

NUM_





# Symbol affixes

Noun_symbols_possibly_inflected

Noun_symbols_never_inflected

SYMBOL_connector

SYMBOL_NO_suff

SYMBOL_suff
# Morphophonological rules for Hill Mari 

This file documents the [phonology.twolc file](http://github.com/giellalt/lang-mrj/blob/main/src/fst/phonology.twolc) 

## Alphabet, Sets and Definitions 

### Alphabet 
#### Letters of the alphabet 

 * **а б в г д е ё ж з и й к л м н ҥ о ӧ п р с т у ӱ ф х ц ч ш щ ъ ы ь э ю я ӓ ӹ ** 
 * **А Б В Г Д Е Ё Ж З И Й К Л М Н Ҥ О Ӧ П Р С Т У Ӱ Ф Х Ц Ч Ш Щ Ъ Ы Ь Э Ю Я Ӓ Ӹ ** 

#### Archiphonemes for vowels 
 * ** %{аӓ%}:ӓ  ** a/ä alternation in vowel harmony 
 * ** Е3:е ** ӓвӓмвлӓ 
 * ** Е2:0 ** 
 * ** %{ыӹØ%}:0 ** 
* ** %{ыӹØ%}:0 ** used in verb affix onset 
* ** %{ыӹØ%}:0 ** used in noun affix onset ine, ill 
* ** %{ыӹØ%}:0 ** used in verb affix onset 
 * ** %{ыӹ%}:0  ** 
 * ** А2:а ** 
 * ** Ь2:0 **  except with V АМ +Prt1+Sg1-3 

#### Triggers 
 * ** %{front%}:0 %{back%}:0 ** front-back vowel harmony 
 * **%^ConsTransf:0 ** 
 * **%^KIN:0        **  with ӓвӓ in +PxSg1+Sg+Gen etc. 
 * **%^А2ЫӸ:0       **  with карта and картын витринӹн 

#### Boundary symbols 

 * ** %> ** 
 * hash # 
 * ** %- ** 



### Sets 

 * **BackLabVow =   о у ё ю О У Ё Ю ; 				     ** 
 * **FrontLabVow =   ӧ ӱ Ӧ Ӱ; 						     ** 
 * **NonLabVow =   ӓ а е и э я Ӓ А Е И Э Я ; 		     ** 
 * **Vow =  BackLabVow FrontLabVow NonLabVow ы Ы  ӹ Ӹ ;   ** 
 * **BackVow = BackLabVow а А ы Ы ; 					     ** 
 * **FrontVow = FrontLabVow е и э ӓ ӹ Е И Э Ӓ Ӹ ; 	     ** 
 * **ArchiVow = %{ыӹØ%} %{ыӹ%} %{аӓ%} ; 				     ** 
 * **FullVow = BackLabVow FrontLabVow NonLabVow ;  	     ** 
 * **CnsNoLN =  б в г д ж з к м ҥ п р с т ф х ц ч ш 	     ** 
 * **           Б В Г Д Ж З К М Ҥ П Р С Т Ф Х Ц Ч Ш ;     ** 
 * **Cns =  б в г д ж з к л м н ҥ п р с т ф х ц ч ш 	     ** 
 * **       Б В Г Д Ж З К Л М Н Ҥ П Р С Т Ф Х Ц Ч Ш ;     ** 
 * **Cst =  к п т ф х ц ч ш с 						     ** 
 * **       К П Т Ф Х Ц Ч Ш Ц ;  					     ** 
 * **Ltrs = Vow Cns Й й  ъ ь Ъ Ь ; 					     ** 
 * **all =  Ltrs  %- ; 								     ** 
 * **HarmDummies = %{back%} %{front%} ; 				     ** 


### Definitions 


Back Harmony BHARM

Front Harmony FHARM


LFH

LBH


## Rules 


### Palatalisation rules

**Palatal mark loss before vowel rule**  

**й Deletion in front of я Suffix and others rule**  

##### Tests:

*кай%>%{аӓ%}ш  examples:*

*ка00яш  examples:*


**Ь2:ь Palatal mark for V АМ +Prt1+Sg1 rule**  

толаш+V+Ind+Prt1+Sg1 

##### Tests:
* *тол%{back%}Ь2%>%{ыӹØ%}м*
* *тол0ь%>ым*

**Ь2:0 Palatal mark for V АМ +Prt1+Sg1 rule**  

**Ь2:ш Palatal mark for V ЕМ +Prt1+Sg1 rule**  



### Vowel rules 
**Onset vowel in а rule** 


**Onset vowel in ӓ rule** 

**Onset vowel in я rule** 

**Onset vowel in е rule** 



**Onset vowel loss in suffix ыӹ0 rule**  



**Onset vowel loss in suffix Е3 rule**  


**Onset vowel loss in suffix Е3 rule**  


**Onset vowel Е2 realized in suffix :е rule** 

**Onset vowel Е2:э after retained vowel rule**  

**Onset vowel Е3:э after retained vowel rule**  

**Onset vowel е:э after retained vowel rule** 

**Stem final ы loss before Е2 rule**  

##### Tests:
* *карта%>ы%>ын*
* *карт0%>ы%>0н*
* *янжы%{back%}>аш*
* *янж00>аш*


**Stem final ӹ loss before Е2 rule**  

##### Tests:
* *бирка%{front%}%>ӹ%>ӹн*
* *бирк00%>ӹ%>0н*


### Vowel harmony rules

**Onset vowel ыӹ0 realized in suffix  %{ыӹØ%}:ы rule**  


**Onset vowel %{ыӹØ%} realized in suffix  %{ыӹØ%}:ӹ rule** 

**Onset vowel %{ыӹе%} realized in suffix  %{ыӹе%}:ӹ rule** 

**Onset vowel %{ыӹе%} realized in suffix  %{ыӹе%}:ы rule** 

**Onset vowel %{ыӹе%} realized in suffix  %{ыӹе%}:е rule** 

**Onset vowel %{ыӹе%} realized in suffix  %{ыӹе%}:э rule** 

**Onset vowel %{ыӹэ%} realized in Ine and Ill suffixes %{ыӹэ%}:0 rule** 

*комбы%>%{ыӹэ%}штем  examples:*

*комбы00штем  examples:*

**Onset vowel %{ыӹэ%} realized in Ine and Ill suffixes %{ыӹэ%}:0 rule** 

##### Tests:

*олма%>%{ыӹэ%}штем  examples:*

*олма0эштем  examples:*


**Affix mid or final front %{аӓ%}:ӓ rule** 


##### Tests:

*комбы%>еш%>н%{аӓ%}  examples:*

*комб00еш0нӓ  examples:*

ӹштӓш+Hom2+V+Ind+Prs+Sg3: **do/tehdä** 
* *ӹштӹ%{front%}%>%{аӓ%}*

##### Tests:

*библиотека%{front%}%^А2ЫӸ%>л%{аӓ%}н  examples:*

*библиотекӹ00%>лӓн  examples:*

**Affix mid or final back %{аӓ%}:а rule**  

толаш+V+Ind+Prs+Pl1: **come/tulla** 

##### Tests:
* *тол%{back%}%>%{ыӹе%}н%{аӓ%}*
* *тол0%>ына*


##### Tests:

*колт%>%{ыӹØ%}д%{аӓ%}  examples:*

*колт0ыда  examples:*

*яд%{back%}%>%{аӓ%}ш  examples:*

*яд0%>аш  examples:*

**Affix mid or final back %{аӓ%}:я rule**  

##### Tests:

*кай%>%{аӓ%}ш  examples:*

*ка0%>яш  examples:*

**Affix initial back а:я rule**  

**Not SgNom а:ы rule** 

**Not SgNom а:ӹ rule** 


**suffix-final vowel backed %{ыӹ%}ы rule**  



**suffix-final vowel fronted %{ыӹ%}:ӹ rule**  

### Consonant loss or transformation rules

**т:0 in am type verbs rule** лӓктӓш:лӓкнӓ 

**к:0 in am type verbs rule** качкаш:качна 

**з:ц in am type verbs rule** вазаш:вацна 

**н:0 before з:ц in am type verbs rule** негӹнзӓш:негӹц 

### Vowel addition rules 

#### Vowel gain 
**0:ы between ш _ ж rule** йиш:йишӹжӹ 

**0:ӹ between ш _ ж rule** йиш:йишӹжӹ 


### Vowel loss rules

**suffix-final vowel loss before subsequent suffix-initial vowel %{ыӹ%}:0 rule**  

**Not SgNom for lat а:0 rule** 

**Not SgNom for lat е:0 rule** 

##### Tests:
* *варенье%>ӹ%>влӓ*
* *варень0%>ӹ%>влӓ*

## Devoicing 
**Onset consonant devoicing rule**  




This is where new words are added as lexc entries before they are 
added to the xml source files.
йолтишкӓ:йолтишкӓ A_OLMA "(eng) /(fin) /(rus) " ;


ADD ADJECTIVES BELOW




This is where new words are added as lexc entries before they are 
added to the xml source files.
йолтишкӓ+N:йолтишкӓ A_OLMA "(eng) /(fin) /(rus) " ;


ADD NOUNS BELOW





# Meadow & Eastern Mari numerals 





## The initial lexica

 * **LEXICON Numeral**  initial lexica





 * **LEXICON ARABIC** arabic numerals








 * **LEXICON ARABICLOOP**


 * **LEXICON ARABICLOOPORD_Back** ordinals

 * **LEXICON ARABICLOOPORD_Front** ordinals

 * **LEXICON ARABICLOOPORD_FrontRound** ordinals


 * **LEXICON ARABICDELIMITERORD_Back** ordinals

 * **LEXICON ARABICDELIMITERORD_Front** ordinals

 * **LEXICON ARABICDELIMITERORD_FrontRound** ordinals



The Roman numerals !
------------------ !

 * **LEXICON ROMAN**  roman numerals

 * **LEXICON ROM-THOUSAND**

 * **LEXICON ROM-THOUSAND-TAG**

 * **LEXICON ROM-HUNDRED**

 * **LEXICON ROM-HUNDRED-TAG**

 * **LEXICON ROM-TEN**

 * **LEXICON ROM-TEN-TAG**

 * **LEXICON ROM-ONE**

 * **LEXICON ROM-ONE-TAG**


 * **LEXICON ROM-SPLIT**



 * **LEXICON 2ROMAN**

 * **LEXICON 2ROM-THOUSAND**

 * **LEXICON 2ROM-THOUSAND-TAG**

 * **LEXICON 2ROM-HUNDRED**

 * **LEXICON 2ROM-HUNDRED-TAG**

 * **LEXICON 2ROM-TEN**

 * **LEXICON 2ROM-TEN-TAG**

 * **LEXICON 2ROM-ONE**

 * **LEXICON 2ROM-ONE-TAG**

 * **LEXICON ROMNUMTAG**


 * **LEXICON ARABICCASEORD_Back** ordinals Is this then becoming +Ex/A?
 * **LEXICON ARABICCASEORD_Front** ordinals
 * **LEXICON ARABICCASEORD_FrontRound** ordinals

Prefixes
Prefixes in the Western Mari language are bound to beginning of other words.



This is where new words are added as lexc entries before they are 
added to the xml source files.
йолтишкӓ+N+Prop:йолтишкӓ PROP_OLMA "(eng) /(fin) /(rus) " ;


ADD NOUNS BELOW










MARI-LIKE NAMES

PLACE NAMES

















PROPER GIVEN NAMES

PROPER PATRONYMS

PROPER PLACE NAMES

# Western Mari morphological analyser                      

The file declares the numticharacter symbols of Western Mari, and gives the **Root** lexicon.



Analysis symbols
The morphological analyses of wordforms for the Western Mari
language are presented in this system in terms of the following symbols.
(It is highly suggested to follow existing standards when adding new tags).

 * **+Ex/N** - This tag is not added in lexc. The POS tag before derivation is converted into this tag when compiling FST for disambiguation.
 * **+Ex/A** - This tag is not added in lexc. The POS tag before derivation is converted into this tag when compiling FST for disambiguation.
 * **+Ex/V** - This tag is not added in lexc. The POS tag before derivation is converted into this tag when compiling FST for disambiguation.


#### The parts-of-speech tags:
 * **+N +A +Adv +V** 
 * **+Pron +CS +CC +Adp +Po +Pr +Interj +Pcle +Num +Descr** 
 * **+Prop** is a noun subtag  

#### Subtags for pronouns
 * **+Dem**:  demonstrative
 * **+Indef**:  indefinite
 * **+Dep**:  dependent word requiring the presence of noun, e.g. ӹшке
 * **+Interr**:  interrogative
 * **+Pers**:  personal
 * **+Recipr**:  reciprocal
 * **+Refl**:  reflexive
 * **+Rel**:  relative

#### Tags for nominals  nominals 
 * **+Sg +Du +Pl** 
 * **+Ess +Nom +Gen +Acc +Ill +Loc +Com +Com/Sh +Cmpr** 
 * **+PxSg1 +PxSg2 +PxSg3 +PxDu1 +PxDu2 +PxDu3 +PxPl1 +PxPl2 +PxPl3** = Possessive suffixes
 * **+Pos +Comp +Superl** =  The comparative
 * **+Attr +Ord** = 

#### Tags for numerals 
 * **+Card** = 

#### Tags for verbs
 * **+Aux** auxiliary
 * **+Ind +Prs +Prt1 +Prt2 +Pot +Cond +Imprt** =  Verb moods
 * **+Sg1 +Sg2 +Sg3 +Du1 +Du2 +Du3 +Pl1 +Pl2 +Pl3** = Verb personal forms
 * **+Inf** = infinitive
 * **+Ger** = gerund
 * **+ConNeg +ConNegII +Neg** = 
 * **+ImprtII** =  ыма
 * **+Act** =  Prc active participle ЫшЫ
 * **+Pass +Prc** =  passive participle ЫмЫ
 * **+NegPrc** =  negative passive participle ЫдЫмЫ
 * **+Sup +VGen +VAbess** = 
 * **+FutPrc** = 
 * **+TV +IV** =  to transitivity:


#### Usage tags:
 * **+Err/Orth** 
 * **+Use/-Spell** 

#### Tag from older orthographic norms
 * **+Orth/1933** 



#### Other tags words
 * **+ABBR +ACR** = 
 * **+Symbol** = independent symbols in the text stream, like £, €, ©
 * **+CLB +PUNCT +LEFT +RIGHT** = 
 * **+Multi** = !! multiword units
 * **+Guess** = Non-dictionary words (probably not in  use

#### Question and Focus particles:
 * **+Qst +Foc** = 


#### Tags to be checked and harmonised.
 * **+AdA** = 
 * **+Adn** = 
 * **+Arab** = 
 * **+Ela** = 
 * **+Epist** = 
 * **+Intensive** = 
 * **+Orth/Colloq** = 
 * **+Rom** = 
 * **+Spat** = 
 * **+Use/Circ** = 
 * **+Voc** = 


### Semantic tags

 * **+Sem/Act** Activity
 * **+Sem/Amount** Amount
 * **+Sem/Ani** Animate
 * **+Sem/Aniprod** Animal Product
 * **+Sem/Body** Bodypart
 * **+Sem/Body-abstr** siellu, vuoig?a, jierbmi
 * **+Sem/Build** Building
 * **+Sem/Build-part** Part of Bulding, like the closet
 * **+Sem/Cat** Category
 * **+Sem/Clth** Clothes
 * **+Sem/Clth-jewl** Jewelery
 * **+Sem/Clth-part** part of clothes, boallu, sávdnji...
 * **+Sem/Ctain** Container
 * **+Sem/Ctain-abstr** Abstract container like bank account
 * **+Sem/Ctain-clth**
 * **+Sem/Curr** Currency like dollár, Not Money
 * **+Sem/Dance** Dance
 * **+Sem/Dir** Direction like GPS-kursa
 * **+Sem/Domain** Domain like politics, reindeerherding (a system of actions)
 * **+Sem/Drink** Drink
 * **+Sem/Dummytag** Dummytag
 * **+Sem/Edu** Educational event
 * **+Sem/Event** Event
 * **+Sem/Feat** Feature, like Árvu
 * **+Sem/Feat-phys** Physiological feature, ivdni, fárda
 * **+Sem/Feat-psych** Psychological feauture
 * **+Sem/Feat-measr** Psychological feauture
 * **+Sem/Fem** Female name
 * **+Sem/Food** Food
 * **+Sem/Food-med** Medicine
 * **+Sem/Furn** Furniture
 * **+Sem/Game** Game
 * **+Sem/Geom** Geometrical object
 * **+Sem/Group** Animal or Human Group
 * **+Sem/Hum** Human
 * **+Sem/Hum-abstr** Human abstract
 * **+Sem/Ideol** Ideology
 * **+Sem/Lang** Language
 * **+Sem/Mal** Male name
 * **+Sem/Mat** Material for producing things
 * **+Sem/Measr** Measure
 * **+Sem/Money** Has to do with money, like wages, not Curr(ency)
 * **+Sem/Obj** Object
 * **+Sem/Obj-clo** Cloth
 * **+Sem/Obj-cogn** Cloth
 * **+Sem/Obj-el** (Electrical) machine or apparatus
 * **+Sem/Obj-ling** Object with something written on it
 * **+Sem/Obj-rope** flexible ropelike object
 * **+Sem/Obj-surfc** Surface object
 * **+Sem/Org** Organisation
 * **+Sem/Part** Feature, oassi, bealli
 * **+Sem/Perc-cogn** Cognative perception
 * **+Sem/Perc-emo** Emotional perception
 * **+Sem/Perc-phys** Physical perception
 * **+Sem/Perc-psych** Physical perception
 * **+Sem/Plant** Plant
 * **+Sem/Plant-part** Plant part
 * **+Sem/Plc** Place
 * **+Sem/Plc-abstr** Abstract place
 * **+Sem/Plc-elevate** Place
 * **+Sem/Plc-line** Place
 * **+Sem/Plc-water** Place
 * **+Sem/Pos** Position (as in social position job)
 * **+Sem/Process** Process
 * **+Sem/Prod** Product
 * **+Sem/Prod-audio** Audio product
 * **+Sem/Prod-cogn** Cognition product
 * **+Sem/Prod-ling** Linguistic product
 * **+Sem/Prod-vis** Visual product
 * **+Sem/Rel** Relation
 * **+Sem/Route** Name of a Route
 * **+Sem/Rule** Rule or convention
 * **+Sem/Semcon** Semantic concept
 * **+Sem/Sign** Sign (e.g. numbers, punctuation) 
 * **+Sem/Sport** Sport
 * **+Sem/State** 
 * **+Sem/State-sick** Illness
 * **+Sem/Substnc** Substance, like Air and Water
 * **+Sem/Sur** Surname
 * **+Sem/Symbol** Symbol
 * **+Sem/Time** Time
 * **+Sem/Tool** Prototypical tool for repairing things
 * **+Sem/Tool-catch** Tool used for catching (e.g. fish)
 * **+Sem/Tool-clean** Tool used for cleaning
 * **+Sem/Tool-it** Tool used in IT
 * **+Sem/Tool-measr** Tool used for measuring
 * **+Sem/Tool-music** Music instrument
 * **+Sem/Tool-write** Writing tool
 * **+Sem/Txt** Text (girji, lávlla...)
 * **+Sem/Veh** Vehicle
 * **+Sem/Wpn** Weapon
 * **+Sem/Wthr** The Weather or the state of ground



### Multiple Semantic tags:
 * **+Sem/Act_Group** = 
 * **+Sem/Act_Plc** = 
 * **+Sem/Act_Route** = 
 * **+Sem/Amount_Build** = 
 * **+Sem/Amount_Semcon** = 
 * **+Sem/Ani_Body-abstr_Hum** = 
 * **+Sem/Ani_Build** = 
 * **+Sem/Ani_Build-part** = 
 * **+Sem/Ani_Build_Hum_Txt** = 
 * **+Sem/Ani_Group** = 
 * **+Sem/Ani_Group_Hum** = 
 * **+Sem/Ani_Hum** = 
 * **+Sem/Ani_Hum_Plc** = 
 * **+Sem/Ani_Hum_Time** = 
 * **+Sem/Ani_Plc** = 
 * **+Sem/Ani_Plc_Txt** = 
 * **+Sem/Ani_Time** = 
 * **+Sem/Ani_Veh** = 
 * **+Sem/Aniprod_Hum** = 
 * **+Sem/Aniprod_Obj-clo** = 
 * **+Sem/Aniprod_Perc-phys** = 
 * **+Sem/Aniprod_Plc** = 
 * **+Sem/Body-abstr_Prod-audio_Semcon** = 
 * **+Sem/Body_Body-abstr** = 
 * **+Sem/Body_Clth** = 
 * **+Sem/Body_Food** = 
 * **+Sem/Body_Group_Hum** = 
 * **+Sem/Body_Hum** = 
 * **+Sem/Body_Mat** = 
 * **+Sem/Body_Measr** = 
 * **+Sem/Body_Obj_Tool-catch** = 
 * **+Sem/Body_Plc** = 
 * **+Sem/Body_Time** = 
 * **+Sem/Build-part_Plc** = 
 * **+Sem/Build_Build-part** = 
 * **+Sem/Build_Clth-part** = 
 * **+Sem/Build_Edu_Org** = 
 * **+Sem/Build_Event_Org** = 
 * **+Sem/Build_Org** = 
 * **+Sem/Build_Route** = 
 * **+Sem/Clth-jewl_Curr** = 
 * **+Sem/Clth-jewl_Money** = 
 * **+Sem/Clth-jewl_Plant** = 
 * **+Sem/Clth_Hum** = 
 * **+Sem/Ctain-abstr_Org** = 
 * **+Sem/Ctain-clth_Plant** = 
 * **+Sem/Ctain-clth_Veh** = 
 * **+Sem/Ctain_Feat-phys** = 
 * **+Sem/Ctain_Furn** = 
 * **+Sem/Ctain_Tool** = 
 * **+Sem/Ctain_Tool-measr** = 
 * **+Sem/Curr_Org** = 
 * **+Sem/Dance_Org** = 
 * **+Sem/Dance_Prod-audio** = 
 * **+Sem/Domain_Food-med** = 
 * **+Sem/Domain_Prod-audio** = 
 * **+Sem/Edu_Event** = 
 * **+Sem/Edu_Group_Hum** = 
 * **+Sem/Edu_Mat** = 
 * **+Sem/Edu_Org** = 
 * **+Sem/Event_Food** = 
 * **+Sem/Event_Hum** = 
 * **+Sem/Event_Plc** = 
 * **+Sem/Event_Time** = 
 * **+Sem/Feat-phys_Tool-write** = 
 * **+Sem/Feat-phys_Veh** = 
 * **+Sem/Feat-phys_Wthr** = 
 * **+Sem/Feat-psych_Hum** = 
 * **+Sem/Feat_Plant** = 
 * **+Sem/Food_Perc-phys** = 
 * **+Sem/Food_Plant** = 
 * **+Sem/Game_Obj-play** = 
 * **+Sem/Geom_Obj** = 
 * **+Sem/Group_Hum** = 
 * **+Sem/Group_Hum_Org** = 
 * **+Sem/Group_Hum_Plc** = 
 * **+Sem/Group_Hum_Prod-vis** = 
 * **+Sem/Group_Org** = 
 * **+Sem/Group_Sign** = 
 * **+Sem/Group_Txt** = 
 * **+Sem/Hum_Lang** = 
 * **+Sem/Hum_Lang_Plc** = 
 * **+Sem/Hum_Lang_Time** = 
 * **+Sem/Hum_Obj** = 
 * **+Sem/Hum_Org** = 
 * **+Sem/Hum_Plant** = 
 * **+Sem/Hum_Plc** = 
 * **+Sem/Hum_Tool** = 
 * **+Sem/Hum_Veh** = 
 * **+Sem/Hum_Wthr** = 
 * **+Sem/Lang_Tool** = 
 * **+Sem/Mat_Plant** = 
 * **+Sem/Mat_Txt** = 
 * **+Sem/Measr_Time** = 
 * **+Sem/Money_Obj** = 
 * **+Sem/Money_Txt** = 
 * **+Sem/Obj-play** = 
 * **+Sem/Obj-play_Sport** = 
 * **+Sem/Obj_Semcon** = 
 * **+Sem/Clth-jewl_Org** = 
 * **+Sem/Org_Rule** = 
 * **+Sem/Org_Txt** = 
 * **+Sem/Org_Veh** = 
 * **+Sem/Part_Prod-cogn** = 
 * **+Sem/Perc-emo_Wthr** = 
 * **+Sem/Plant_Plant-part** = 
 * **+Sem/Plant_Tool** = 
 * **+Sem/Plant_Tool-measr** = 
 * **+Sem/Plc-abstr_Rel_State** = 
 * **+Sem/Plc-abstr_Route** = 
 * **+Sem/Plc_Pos** = 
 * **+Sem/Plc_Route** = 
 * **+Sem/Plc_Substnc** = 
 * **+Sem/Plc_Substnc_Wthr** = 
 * **+Sem/Plc_Time** = 
 * **+Sem/Plc_Tool-catch** = 
 * **+Sem/Plc_Wthr** = 
 * **+Sem/Prod-audio_Txt** = 
 * **+Sem/Prod-cogn_Txt** = 
 * **+Sem/Semcon_Txt** = 
 * **+Sem/Obj_State** = 
 * **+Sem/Substnc_Wthr** = 
 * **+Sem/Time_Wthr** = 


Semantics are classified with

### Derivation

Derivations are classified under the morphophonetic form of the suffix, the
source and target part-of-speech.
 * **+V→N +V→V +V→A** =          
 * **+Der** =          
 * **+Der/шЫ** =          
 * **+Der/мЫ** =          
 * **+Der/дЫмЫ** =          
 * **+Der/N** =        !! Noun derivation
 * **+Foc/Ат** =          
 * **+Foc/ок** = too, also


 * **+Ine** = 
 * **+Conj** = 
 * **+WORK** = Error?
 * **+Abe** = 
 * **+Hom3** = 
 * **+Temp** = 
 * **+Des** = 
 * **+Lat** = 
 * **+Dat** = 
 * **+Sem/Patr** = 
 * **** = 
 * **+Use/NG** = 
 * **+Err/Sub** = 


 ### Morphophonology

To represent phonologic variations in word forms we use the following
symbols in the lexicon files:

* **+Err/Sub** 
* **+Err/Sub** used in verb affix onset
* **+Err/Sub** used in verb affix onset
* **+Err/Sub** used in noun affix onset ine, ill

 * **%{ыӹ%} %{аӓ%} А2 Е2 Е3** = 
 * **Ь2** =  V_АМ +Prt1+Sg1
 * **%{front%} %{back%}** = for front/back suffixes 

## Lexeme disambiguation tags
 * **+Hom1** : Homonymy толам used in l element and lexc
 * **+Hom2** : Homonymy колем used in l element and lexc
 * **%^ConsTransf**  k loss in am-verbs, also z to ts
 * **%^KIN**  with kin terms for ӓвӓмӹн not мӱэмӹн
 * **%^А2ЫӸ**  with карта and картын витринӹн
 * **+Cmp** = 

## Flag diacritics
We have manually optimised the structure of our lexicon using following
flag diacritics to restrict morhpological combinatorics - only allow compounds
with verbs if the verb is further derived into a noun again:

|   Flag | Comment
| --- | --- 
 |  **@P.NeedNoun.ON@** | (Dis)allow compounds with verbs unless nominalised
 |  **@D.NeedNoun.ON@** | (Dis)allow compounds with verbs unless nominalised
 |  **@C.NeedNoun@** | (Dis)allow compounds with verbs unless nominalised

For languages that allow compounding, the following flag diacritics are needed
to control position-based compounding restrictions for nominals. Their use is
handled automatically if combined with +CmpN/xxx tags. If not used, they will
do no harm.

|   Flag | Comment
| --- | --- 
 |  **@P.CmpFrst.FALSE@** | Require that words tagged as such only appear first
 |  **@D.CmpPref.TRUE@** | Block such words from entering ENDLEX
 |  **@P.CmpPref.FALSE@** | Block these words from making further compounds
 |  **@D.CmpLast.TRUE@** | Block such words from entering R
 |  **@D.CmpNone.TRUE@** | Combines with the next tag to prohibit compounding
 |  **@U.CmpNone.FALSE@** | Combines with the prev tag to prohibit compounding
 |  **@P.CmpOnly.TRUE@** | Sets a flag to indicate that the word has passed R
 |  **@D.CmpOnly.FALSE@** | Disallow words coming directly from root.

Use the following flag diacritics to control downcasing of derived proper
nouns (e.g. Finnish Pariisi -> pariisilainen). See e.g. North Sámi for how to use
these flags. There exists a ready-made regex that will do the actual down-casing
given the proper use of these flags.

|   Flag | Comment
| --- | --- 
 |  **@U.Cap.Obl@** | Allowing downcasing of derived names: deatnulasj.
 |  **@U.Cap.Opt@** | Allowing downcasing of derived names: deatnulasj.


## Root lexicon

The word forms in Hill Mari start from the lexeme roots of basic
word classes, or optionally from prefixes:
The assumption is that xml files with names pos.xml will provide the source material for
the initial pos.lexc _LEXICON Pos_ entries
 * **adjectives ;** 
 * **adpositions ;** 
 * **adverbs ;** 
 * **conjunctors ;** 
 * **descriptives ;** 
 * **interjections ;** 
 * **nouns ;** 
 * **particles ;** 
 * **pronouns ;** 
 * **propernouns ;** 
 * **propernouns-toponyms ;** 
 * **quantifiers ;** 
 * **verbs ;** 
 * **numberwords ;** 
 * **Numeral ;** 
 * **Punctuation ;** 
 * **Symbols ;** 
 * **A_NEWWORDS ;** 
 * **N_NEWWORDS ;** 
 * **PROP_NEWWORDS ;** 
 * **Exceptions ;** 
 * **urj-Cyrl-ProperNouns ;** This is the template
 * **LEXICON GER-en** 
 * **+V+Ger: K ;** 





ENDLEX goes to # for now.




We describe here how abbreviations are in Western Mari are read out, e.g.
for text-to-speech systems.

For example:

 * s.:syntynyt # ;  
 * os.:omaa% sukua # ;  
 * v.:vuosi # ;  
 * v.:vuonna # ;  
 * esim.:esimerkki # ; 
 * esim.:esimerkiksi # ; 



      [ L A N G U A G E ]  G R A M M A R   C H E C K E R









# DELIMITERS


# TAGS AND SETS



## Tags


This section lists all the tags inherited from the fst, and used as tags
in the syntactic analysis. The next section, **Sets**, contains sets defined
on the basis of the tags listed here, those set names are not visible in the output.




### Beginning and end of sentence
BOS
EOS



### Parts of speech tags

N
A
Adv
V
Pron
CS
CC
CC-CS
Po
Pr
Pcle
Num
Interj
ABBR
ACR
CLB
LEFT
RIGHT
WEB
QMARK
PPUNCT
PUNCT

COMMA
¶



### Tags for POS sub-categories

Pers
Dem
Interr
Indef
Recipr
Refl
Rel
Coll
NomAg
Prop
Allegro
Arab
Romertall


### Tags for morphosyntactic properties

Nom
Acc
Gen
Ill
Loc
Com
Ess
Ess
Sg
Du
Pl
Cmp/SplitR
Cmp/SgNom Cmp/SgGen
Cmp/SgGen
PxSg1
PxSg2
PxSg3
PxDu1
PxDu2
PxDu3
PxPl1
PxPl2
PxPl3
Px

Comp
Superl
Attr
Ord
Qst
IV
TV
Prt
Prs
Ind
Pot
Cond
Imprt
ImprtII
Sg1
Sg2
Sg3
Du1
Du2
Du3
Pl1
Pl2
Pl3
Inf
ConNeg
Neg
PrfPrc
VGen
PrsPrc
Ger
Sup
Actio
VAbess



Err/Orth



### Semantic tags

Sem/Act
Sem/Ani
Sem/Atr
Sem/Body
Sem/Clth
Sem/Domain
Sem/Feat-phys
Sem/Fem
Sem/Group
Sem/Lang
Sem/Mal
Sem/Measr
Sem/Money
Sem/Obj
Sem/Obj-el
Sem/Org
Sem/Perc-emo
Sem/Plc
Sem/Sign
Sem/State-sick
Sem/Sur
Sem/Time
Sem/Txt

HUMAN

HAB-ACTOR
HAB-ACTOR-NOT-HUMAN


PROP-ATTR
PROP-SUR



TIME-N-SET


###  Syntactic tags

@+FAUXV
@+FMAINV
@-FAUXV
@-FMAINV
@-FSUBJ>
@-F<OBJ
@-FOBJ>
@-FSPRED<OBJ
@-F<ADVL
@-FADVL>
@-F<SPRED
@-F<OPRED
@-FSPRED>
@-FOPRED>
@>ADVL
@ADVL<
@<ADVL
@ADVL>
@ADVL
@HAB>
@<HAB
@>N
@Interj
@N<
@>A
@P<
@>P
@HNOUN
@INTERJ
@>Num
@Pron<
@>Pron
@Num<
@OBJ
@<OBJ
@OBJ>
@OPRED
@<OPRED
@OPRED>
@PCLE
@COMP-CS<
@SPRED
@<SPRED
@SPRED>
@SUBJ
@<SUBJ
@SUBJ>
SUBJ
SPRED
OPRED
@PPRED
@APP
@APP-N<
@APP-Pron<
@APP>Pron
@APP-Num<
@APP-ADVL<
@VOC
@CVP
@CNP
OBJ
<OBJ
OBJ>
<OBJ-OTHERS
OBJ>-OTHERS
SYN-V
@X





## Sets containing sets of lists and tags

This part of the file lists a large number of sets based partly upon the tags defined above, and
partly upon lexemes drawn from the lexicon.
See the sourcefile itself to inspect the sets, what follows here is an overview of the set types.



### Sets for Single-word sets

INITIAL


### Sets for word or not

WORD
REAL-WORD
REAL-WORD-NOT-ABBR
NOT-COMMA


### Case sets

ADLVCASE

CASE-AGREEMENT
CASE

NOT-NOM
NOT-GEN
NOT-ACC

### Verb sets


NOT-V

### Sets for finiteness and mood

REAL-NEG

MOOD-V

NOT-PRFPRC


### Sets for person

SG1-V
SG2-V
SG3-V
DU1-V
DU2-V
DU3-V
PL1-V
PL2-V
PL3-V





### Pronoun sets

















### Adjectival sets and their complements




### Adverbial sets and their complements




### Sets of elements with common syntactic behaviour


### NP sets defined according to their morphosyntactic features








### The PRE-NP-HEAD family of sets

These sets model noun phrases (NPs). The idea is to first define whatever can
occur in front of the head of the NP, and thereafter negate that with the
expression **WORD - premodifiers**.





















### Border sets and their complements











### Grammarchecker sets








