% facts
male(george).
male(william).
male(harry).
male(charles).
male(philip).
male(edward).
male(andrew).
male(mark).
male(peter).
male(james).

female(charlotte).
female(kate).
female(diana).
female(elizabeth).
female(anne).
female(zara).
female(sarah).
female(eugenie).
female(beatrice).
female(sophie).
female(louise).

/*Parents (includes mothers/fathers)*/
parent(elizabeth,charles).
parent(elizabeth,anne).
parent(elizabeth,andrew).
parent(elizabeth,edward).
parent(philip,charles).
parent(philip,anne).
parent(philip,andrew).
parent(philip,edward).

parent(diana,william).
parent(diana,harry).
parent(charles,william).
parent(charles,harry).

parent(anne,peter).
parent(anne, zara).
parent(mark,peter).
parent(mark,zara).

parent(andrew,beatrice).
parent(andrew,eugenie).
parent(sarah,beatrice).
parent(sarah,eugenie).

parent(edward,louise).
parent(edward,james).
parent(sophie,louise).
parent(sophie,james).

parent(kate,george).
parent(kate,charlotte).
parent(william,george).
parent(william,charlotte).

father(philip,charles):-parent(philip,charles).
father(philip,anne):-parent(philip,anne).
father(philip,andrew):-parent(philip,andrew).
father(philip,edward):-parent(philip,edward).

father(charles,william):-parent(charles,william).
father(charles,harry):-parent(charles,harry).

father(mark,peter).
father(mark,zara).

father(andrew,beatrice).
father(andrew,eugenie).

father(edward,louise).
father(edward,james).

mother(elizabeth,charles):-parent(elizabeth,charles).
mother(elizabeth,anne):-parent(elizabeth,anne).
mother(elizabeth,andrew):-parent(elizabeth,andrew).
mother(elizabeth,edward):-parent(elizabeth,edward).

mother(diana,william):-parent(diana,william).
mother(diana,harry):-parent(diana,harry).

mother(anne,peter).
mother(anne,zara).

mother(sarah,beatrice).
mother(sarah,eugenie).

mother(sophie,louise).
mother(sophie,james).

mother(kate,george).
mother(kate,charlotte).

/*sons and daughters*/
son(charles,elizabeth):-mother(elizabeth,charles).
son(charles,philip):-father(philip,charles).
son(andrew,elizabeth):-mother(elizabeth,andrew).
son(andrew,philip):-father(philip,andrew).
son(edward,elizabeth):-mother(elizabeth,edward).
son(edward,philip):-father(philip,edward).

son(william, charles):-parent(charles,william).
son(william, diana):-parent(diana,william).
son(harry, charles):-parent(charles,harry).
son(harry, diana):-parent(diana,harry).

son(william,charles).
son(william,diana).
son(harry,charles).
son(harry,diana).

son(peter,mark).
son(peter,anne).

son(james,edward).
son(james,sophie).

son(george,william).
son(george,kate).

daughter(anne,elizabeth):-mother(elizabeth,anne).
daughter(anne,philip):-father(philip,anne).

daughter(zara,mark).
daughter(zara,anne).

daughter(beatrice,andrew).
daughter(beatrice,sarah).
daughter(eugenie,andrew).
daughter(eugenie,sarah).

daughter(louise,edward).
daughter(louise,sophie).

daughter(charlotte,william).
daughter(charlotte,kate).

/*Siblings*/
siblings(charles,anne):-mother(elizabeth,charles),mother(elizabeth,anne).
siblings(charles,andrew):-mother(elizabeth,charles),mother(elizabeth,andrew).
siblings(charles,edward):-mother(elizabeth,charles),mother(elizabeth,edward).
siblings(anne,charles):-mother(elizabeth,charles),mother(elizabeth,anne).
siblings(andrew,charles):-mother(elizabeth,charles),mother(elizabeth,andrew).
siblings(edward,charles):-mother(elizabeth,charles),mother(elizabeth,edward).
siblings(anne,andrew):-mother(elizabeth,anne),mother(elizabeth,andrew).
siblings(anne,edward):-mother(elizabeth,anne),mother(elizabeth,edward).
siblings(andrew,anne):-mother(elizabeth,anne),mother(elizabeth,andrew).
siblings(edward,anne):-mother(elizabeth,anne),mother(elizabeth,edward).
siblings(edward,andrew):-mother(elizabeth,andrew),mother(elizabeth,edward).
siblings(andrew,edward):-mother(elizabeth,andrew),mother(elizabeth,edward).

siblings(william,harry):-parent(charles, william),parent(charles, harry).
siblings(harry,william):-parent(charles, william),parent(charles, harry).

siblings(peter,zara).
siblings(zara,peter).

siblings(beatrice,eugenie).
siblings(eugenie,beatrice).

siblings(louise,james).
siblings(james,louise).

siblings(george,charlotte):-parent(william,charlotte),parent(william,george).
siblings(charlotte,george):-parent(william,charlotte),parent(william,george).

/*Cousins*/
cousin(william,peter).
cousin(william,zara).
cousin(william,beatrice).
cousin(william,eugenie).
cousin(william,louise).
cousin(william,james).

cousin(harry,peter).
cousin(harry,zara).
cousin(harry,beatrice).
cousin(harry,eugenie).
cousin(harry,louise).
cousin(harry,james).

cousin(peter,william).
cousin(peter,harry).
cousin(peter,beatrice).
cousin(peter,eugenie).
cousin(peter,louise).
cousin(peter,james).

cousin(zara,william).
cousin(zara,harry).
cousin(zara,beatrice).
cousin(zara,eugenie).
cousin(zara,louise).
cousin(zara,james).

cousin(beatrice,william).
cousin(beatrice,harry).
cousin(beatrice,peter).
cousin(beatrice,zara).
cousin(beatrice,louise).
cousin(beatrice,james).

cousin(eugenie,william).
cousin(eugenie,harry).
cousin(eugenie,peter).
cousin(eugenie,zara).
cousin(eugenie,louise).
cousin(eugenie,james).

cousin(louise,william).
cousin(louise,harry).
cousin(louise,peter).
cousin(louise,zara).
cousin(louise,beatrice).
cousin(louise,eugenie).

cousin(james,william).
cousin(james,harry).
cousin(james,peter).
cousin(james,zara).
cousin(james,beatrice).
cousin(james,eugenie).

/*Aunts and Uncles*/
uncle(charles,peter).
uncle(charles,zara).
uncle(charles,beatrice).
uncle(charles,eugenie).
uncle(charles,louise).
uncle(charles,james).

uncle(mark,william).
uncle(mark,harry).
uncle(mark,beatrice).
uncle(mark,eugenie).
uncle(mark,louise).
uncle(mark,james).

uncle(andrew,william).
uncle(andrew,harry).
uncle(andrew,peter).
uncle(andrew,zara).
uncle(andrew,james).
uncle(andrew,louise).

uncle(edward,william).
uncle(edward,harry).
uncle(edward,peter).
uncle(edward,zara).
uncle(edward,beatrice).
uncle(edward,eugenie).

uncle(harry,george):-siblings(william,harry),siblings(harry,william),parent(william,george).
uncle(harry,charlotte):-siblings(william,harry),siblings(harry,william),parent(william,george).

aunt(meghan,george):-siblings(william,harry),siblings(harry,william),parent(william,george).
aunt(meghan,charlotte):-siblings(william,harry),siblings(harry,william),parent(william,george).

aunt(diana,peter).
aunt(diana,zara).
aunt(diana,beatrice).
aunt(diana,eugenie).
aunt(diana,louise).
aunt(diana,james).

aunt(anne,william).
aunt(anne,harry).
aunt(anne,beatrice).
aunt(anne,eugenie).
aunt(anne,louise).
aunt(anne,james).

aunt(sarah,william).
aunt(sarah,harry).
aunt(sarah,peter).
aunt(sarah,zara).
aunt(sarah,louise).
aunt(sarah,james).

aunt(sophie,william).
aunt(sophie,harry).
aunt(sophie,peter).
aunt(sophie,zara).
aunt(sophie,beatrice).
aunt(sophie,eugenie).

/*Niece/Nephew*/
nephew(william,mark).
nephew(william,anne).
nephew(william,andrew).
nephew(william,sarah).
nephew(william,edward).
nephew(william,sophie).

nephew(harry,mark).
nephew(harry,anne).
nephew(harry,andrew).
nephew(harry,sarah).
nephew(harry,edward).
nephew(harry,sophie).

nephew(peter,charlotte).
nephew(peter,diana).
nephew(peter,andrew).
nephew(peter,sarah).
nephew(peter,edward).
nephew(peter,sophie).

nephew(james,diana).
nephew(james,charles).
nephew(james,mark).
nephew(james,anne).
nephew(james,andrew).
nephew(james,sarah).

nephew(george,meghan):-aunt(meghan,george).
nephew(george,harry):-uncle(harry,george).

niece(zara,diana).
niece(zara,charles).
niece(zara,andrew).
niece(zara,sarah).
niece(zara,edward).
niece(zara,sophie).

niece(beatrice,charles).
niece(beatrice,diana).
niece(beatrice,mark).
niece(beatrice,anne).
niece(beatrice,edward).
niece(beatrice,sophie).

niece(eugenie,diana).
niece(eugenie,charles).
niece(eugenie,mark).
niece(eugenie,anne).
niece(eugenie,edward).
niece(eugenie,sophie).

niece(louise,diana).
niece(louise,charles).
niece(louise,mark).
niece(louise,anne).
niece(louise,andrew).
niece(louise,sarah).

niece(charlotte,meghan):-aunt(meghan,charlotte).
niece(charlotte,harry):-uncle(harry,charlotte).

/*Grandparents*/
grandparent(elizabeth,william):-parent(charles,william).
grandparent(elizabeth,harry):-parent(charles,harry).
grandparent(elizabeth,peter).
grandparent(elizabeth,zara).
grandparent(elizabeth,beatrice).
grandparent(elizabeth,eugenie).
grandparent(elizabeth,louise).
grandparent(elizabeth,james).
grandparent(philip,william):-parent(charles,william).
grandparent(philip,harry):-parent(charles,harry).
grandparent(philip,peter).
grandparent(philip,zara).
grandparent(philip,beatrice).
grandparent(philip,eugenie).
grandparent(philip,louise).
grandparent(philip,james).

grandparent(diana,george):-parent(william,george).
grandparent(diana,charlotte):-parent(william,charlotte).
grandparent(charles,george):-parent(william,george).
grandparent(charles,charlotte):-parent(william,charlotte).

grandmother(elizabeth,harry):-grandparent(elizabeth,harry).
grandmother(elizabeth,william):-grandparent(elizabeth,william).
grandmother(elizabeth,peter).
grandmother(elizabeth,zara).
grandmother(elizabeth,beatrice).
grandmother(elizabeth,eugenie).
grandmother(elizabeth,louise).
grandmother(elizabeth,james).

grandmother(diana,george).
grandmother(diana,charlotte).

grandfather(philip,harry):-grandparent(philip,harry).
grandfather(philip,william):-grandparent(philip,william).
grandfather(philip,peter).
grandfather(philip,zara).
grandfather(philip,beatrice).
grandfather(philip,eugenie).
grandfather(philip,louise).
grandfather(philip,james).

grandfather(charles,george).
grandfather(charles,charlotte).

/*Descendents and Ancestors*/
descendent(charles,elizabeth).
descendent(charles,philip).

descendent(anne,elizabeth).
descendent(anne,philip).

descendent(andrew,elizabeth).
descendent(andrew,philip).

descendent(edward,elizabeth).
descendent(edward,philip).

descendent(william,diana).
descendent(william,charles).
descendent(william,elizabeth).
descendent(william,philip).

descendent(harry,diana).
descendent(harry,charles).
descendent(harry,elizabeth).
descendent(harry,philip).

descendent(peter,anne).
descendent(peter,mark).
descendent(peter,elizabeth).
descendent(peter,philip).

descendent(zara,anne).
descendent(zara,mark).
descendent(zara,elizabeth).
descendent(zara,philip).

descendent(beatrice,andrew).
descendent(beatrice,sarah).
descendent(beatrice,elizabeth).
descendent(beatrice,philip).

descendent(eugenie,andrew).
descendent(eugenie,sarah).
descendent(eugenie,elizabeth).
descendent(eugenie,philip).

descendent(louise,edward).
descendent(louise,sophie).
descendent(louise,elizabeth).
descendent(louise,philip).

descendent(james,edward).
descendent(james,sophie).
descendent(james,elizabeth).
descendent(james,philip).

descendent(george,william).
descendent(george,kate).
descendent(george,charles).
descendent(george,diana).
descendent(george,elizabeth).
descendent(george,philip).

descendent(charlotte,william).
descendent(charlotte,kate).
descendent(charlotte,charles).
descendent(charlotte,diana).
descendent(charlotte,elizabeth).
descendent(charlotte,philip).

ancestor(elizabeth,george).
ancestor(philip,charlotte).

ancestor(elizabeth,george).
ancestor(philip,charlotte).

/*Questions
1. Who are the grandchildren of Elizabeth, Queen of England
William, Harry, Peter, Zara, Beatrice, Eugenie, Louise, and James.

2. Is Harry the uncle of Charlotte?
Yes.

3. Does Anne have any siblings?
Yes.

4. Who are the nephews of Harry, Prince of Wales?
George.

5. Who is Eugenie's grandfather?
Philip.

6. Who are William's cousins?
Peter, Zara, Beatrice, Eugenie, Louise, and James.
*/

