
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

* * *
<small>This (part of) documentation was generated from [../src/fst/root.lexc](http://github.com/giellalt/lang-mrj/blob/main/../src/fst/root.lexc)</small>