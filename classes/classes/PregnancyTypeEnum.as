package classes {
	
	import classes.Enum;
	
	public class PregnancyTypeEnum extends Enum {
		
		{initEnum(PregnancyTypeEnum);}
		
		private static var assoc:Object = {};
		
		public static const NONE:PregnancyTypeEnum	 			= new PregnancyTypeEnum(0,  "None");
		public static const IMP:PregnancyTypeEnum 				= new PregnancyTypeEnum(1,  "Imp");
		public static const MINOTAUR:PregnancyTypeEnum 			= new PregnancyTypeEnum(2,  "Minotaur");
		public static const TENTACLE:PregnancyTypeEnum 			= new PregnancyTypeEnum(3,  "Tentacle");
		public static const MOUSE:PregnancyTypeEnum 			= new PregnancyTypeEnum(4,  "Mouse-morph (Jojo/Corrupt Amily)");
		public static const EGGZ:PregnancyTypeEnum 				= new PregnancyTypeEnum(5,  "EGGZ");
		public static const HELLHOUND:PregnancyTypeEnum 		= new PregnancyTypeEnum(6,  "Hellhound");
		public static const CENTAUR:PregnancyTypeEnum 			= new PregnancyTypeEnum(7,  "Centaur (Kelt)");
		public static const MARBLE:PregnancyTypeEnum 			= new PregnancyTypeEnum(8,  "Cowgirls (Marble)");
		public static const BUNNY:PregnancyTypeEnum 			= new PregnancyTypeEnum(9,  "Bunny");
		public static const ANEMONE:PregnancyTypeEnum			= new PregnancyTypeEnum(10, "Anemone");
		public static const AMILY:PregnancyTypeEnum				= new PregnancyTypeEnum(11, "Mouse-morph (Amily)");
		public static const IZMA:PregnancyTypeEnum				= new PregnancyTypeEnum(12, "Shark-morph (Izma)");
		public static const SPIDER:PregnancyTypeEnum			= new PregnancyTypeEnum(13, "Spider-morph");
		public static const BASILISK:PregnancyTypeEnum			= new PregnancyTypeEnum(14, "Basilisk");		
		public static const DRIDER:PregnancyTypeEnum			= new PregnancyTypeEnum(15, "Drider");
		public static const GOO:PregnancyTypeEnum 				= new PregnancyTypeEnum(16, "Goo-girl");
		public static const EMBER:PregnancyTypeEnum 			= new PregnancyTypeEnum(17, "Dragon (Ember)");
		public static const PROPER_BASILISK:PregnancyTypeEnum 	= new PregnancyTypeEnum(18, "Basilisk (Benoit)"); // BENOIT ONLY
		public static const SATYR:PregnancyTypeEnum 			= new PregnancyTypeEnum(19, "Satyr");
		public static const COTTON:PregnancyTypeEnum 			= new PregnancyTypeEnum(20, "Equine-morph (Cotton)");
		public static const URTA:PregnancyTypeEnum 				= new PregnancyTypeEnum(21, "Fox-morph (Urta)");
		public static const SAND_WITCH:PregnancyTypeEnum 		= new PregnancyTypeEnum(22, "Sand Witch");
		public static const FROG_BUTT_EGG:PregnancyTypeEnum 	= new PregnancyTypeEnum(23, "Frog Girl");		
		
		public function PregnancyTypeEnum(val:int = -1, name:String = "") {
			this.val = val;
			this.name = name;
			assoc[val] = this;
		}
		public var name:String;
		public var val:int;
		
		public static function getType(val:int):PregnancyTypeEnum {
			return assoc[val];
		}
		
		public override function toString():String {
			return this.name;
		}
		
		public static function ParseConstant(i_constantName:String, i_caseSensitive:Boolean = false):PregnancyTypeEnum
		{
			return PregnancyTypeEnum(Enum.ParseConstant(PregnancyTypeEnum, i_constantName, i_caseSensitive));
		}
		
		public static function ParseConstantByIndex(i_constantIndex:int = 0):PregnancyTypeEnum
		{
			return PregnancyTypeEnum(Enum.ParseConstantByIndex(PregnancyTypeEnum, i_constantIndex));
		}
	}

/*
	class EggPregnancyType {
		private static var assoc:Object = { };
		public var color:String;
		public var large:boolean;
		public var val:int;
	
		public function EggPregnancyType(val:int, color:String, large:boolean) {
			this.val = val;
			this.color = color;
			this.large = large;
			assoc[val] = this;
		}
		public static const SMALL_BROWN:EggPregnancyType 			= new EggPregnancyType(10000, "brown", false);
		public static const LARGE_BROWN:EggPregnancyType 			= new EggPregnancyType(10001, "brown", true);
		public static const SMALL_PURPLE:EggPregnancyType			= new EggPregnancyType(10100, "purple", false);
		public static const LARGE_PURPLE:EggPregnancyType			= new EggPregnancyType(10101, "purple", true);
		public static const SMALL_BLUE:EggPregnancyType 			= new EggPregnancyType(10200, "blue", false);
		public static const LARGE_BLUE:EggPregnancyType 			= new EggPregnancyType(10201, "blue", true);
		public static const SMALL_PINK:EggPregnancyType 			= new EggPregnancyType(10300, "pink", false);
		public static const LARGE_PINK:EggPregnancyType 			= new EggPregnancyType(10301, "pink", true);
		public static const SMALL_WHITE:EggPregnancyType 			= new EggPregnancyType(10400, "white", false);
		public static const LARGE_WHITE	:EggPregnancyType 			= new EggPregnancyType(10401, "white", true);
		public static const SMALL_RUBBERY_BLACK:EggPregnancyType	= new EggPregnancyType(10500, "rubbery black", false);
		public static const LARGE_RUBBERY_BLACK:EggPregnancyType	= new EggPregnancyType(10501, "rubbery black", true);
	}
*/
}