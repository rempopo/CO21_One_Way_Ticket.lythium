//     tSF Briefing
// Do not modify this part
#define BRIEFING		_briefing = [];
#define TOPIC(NAME) 	_briefing pushBack ["Diary", [ NAME,
#define END			]];
#define ADD_TOPICS	for "_i" from (count _briefing) to 0 step -1 do {player createDiaryRecord (_briefing select _i);};
//
//
// Briefing goes here

BRIEFING

TOPIC("I. Обстановка:")
"Подготовка к операции ""Орёл"" идет полным ходом и к нашему лагерю уже направлены дополнительные силы. Разведка пока не может похвастаться значительными результатами, однако уже сейчас становится ясно, что Талибан обеспокоен нашей активностью в районе.
<br />
<br />Сегодня утром патруль Афганской Национальной Армии подвергся миномётному обстрелу при подходе к н.п. Razbula. Данные с контрбатарейного радара показывают, что обстрел производился из центральной части кишлака Razbula. Также мы получили информацию об активности противника к югу от н.п. Anyakar.
<br />
<br />Командование полагает, что сегодняшний обстрел может сигнализировать о готовности Талибана начать крупное наступление до того как мы завершим подготовку к операции. Мы не можем позволить талибам собрать достаточно сил во время нашей перегруппировки, поэтому мы должны действовать на опережение теми силами, что имеем.
<br />
<br />Таким образом перед взводом Бундесвера на FOB Fabian стоит задача в кратчайшие сроки провести разведку боем с целью найти и уничтожить миномётную позицию, и, по возможности, прочие силы противника."
END

TOPIC("А. Враждебные силы:")
"Боевики Талибана - иррегулярные силы:
<br />   предположительно до роты пехотинцев, усиленной миномётами и пулемётами."
END

TOPIC("Б. Дружественные силы:")
"ISAF - Bundeswehr - Fallschirmjägerbataillon 263
<br />   1'1 - 9 чел.
<br />   1'2 - 9 чел.
<br />   1'6 - 2 чел.
<br />   Scharfschutze Gruppe - 2 чел. (снайперы)"
END

TOPIC("II. Задание:")
"1. Уничтожить миномёты в районе н.п. Razbula (отм. Mortar location)
<br />2. (дополнительная задача) Найти и уничтожить противника в районе (отм. Enemy Activity)"
END

TOPIC("III. Выполнение:")
"Вы можете выполнять задачи в любом порядке. 
<br />
<br />Н.п. Razbula окружён высотами с которых простреливается вся долина высохшей реки Yeray. Возможно наличие сил противника на этих высотах и вокруг них
<br />
<br />Имейте в виду, что дальности миномётов Stahlwerfer может не хватить на уничтожение целей в районе Anyakar.
"
END

TOPIC("IV. Поддержка:")
"5x бронеавтомобиль Dingo (вооруженный, MG3 7.62)
<br />
<br />Поддержка:
<br />3x 82-мм миномёта - позывной Stahlwerfer-1-1
<br />1x вертолёт UH-1D - позывной Vogel-1-1
<br />1x вертолёт CH-53G - позывной Vogel-1-2
<br />
<br />CCP и FARP на FOB Fabian"
END

TOPIC("V. Сигналы:")
"PL NET - LR 50 MHz
<br />SUP NET - LR 51 MHz
<br />1'1 - SR CH 1
<br />1'2 - SR CH 2
<br />Scharfschutze Gruppe - SR CH 4"
END

TOPIC("VI. Замечания:")
"В машинах, вертолётах и рюкзаках гренадёров есть два подрывных заряда и взрыватель, используйте их для уничтожения миномётов. В яшиках и машинах вы можете найти гранатомёт Carl Gustav M3 и осколочные снаряды к нему. 
<br />
<br />Дополнительные боеприпасы вы можете найти в ящиках на FOB FABIAN.
<br />
<br />В tS Notes представлен немецкий фонетический алфавит"
END

if ((serverCommandAvailable '#logout') || !(isMultiplayer) || isServer) then {
TOPIC("VII. Замечания для GSO:")
"Пытайтесь заставить ботов стрелять с дальних дистанций, используйте силы с зон QRF1 и QRF2(западнее Razbula и около Anyakar) для подкрепления основных сил."
END
};

ADD_TOPICS
