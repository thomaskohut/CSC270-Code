/* knowledge base 1 */
female(mia).
female(jody).
female(yolanda).
playsAirGuitar(mia).

/*knowledge base 2 */
happy(yolanda).
listens2music(mia).
listens2music(yolanda) :- happy(yolanda).
playsAirGuitar(mia) :- listens2music(mia).
playsAirGuitar(yolanda) :- listens2music(yolanda).

