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

* * *

<small>This (part of) documentation was generated from [src/fst/phonology.twolc](https://github.com/giellalt/lang-mrj/blob/main/src/fst/phonology.twolc)</small>

---

