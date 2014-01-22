﻿//CoC Creature.as
package classes {
	import classes.GlobalFlags.kGAMECLASS;

	public class Creature {

		include "../../includes/appearanceDefs.as";

		public function get game():CoC {
			return kGAMECLASS;
		}
		public function get flags():DefaultDict {
			return game.flags;
		}

		//Variables
		
		//Short refers to player name and monster name. BEST VARIABLE NAME EVA!
		//"a" refers to how the article "a" should appear in text. 
		public var short:String = "You";
		public var a:String = "a ";
		public function get capitalA():String {
			if (a.length == 0) return "";
			return a.charAt(0).toUpperCase() + a.substr(1);
		}
		
		//Clothing/Armor
		public var armorName:String = "";
		public var weaponName:String = "";
		public var weaponVerb:String = "";
		public var armorDef:Number = 0;
		public var armorPerk:String = "";
		public var weaponAttack:Number = 0;
		public var weaponPerk:String = "";
		public var weaponValue:Number = 0;
		public var armorValue:Number = 0;
		
		//Primary stats
		public var str:Number = 0;
		public var tou:Number = 0;
		public var spe:Number = 0;
		public var inte:Number = 0;
		public var lib:Number = 0;
		public var sens:Number = 0;
		public var cor:Number = 0;
		public var fatigue:Number = 0;
		
		//Combat Stats
		public var HP:Number = 0;
		public var lust:Number = 0;		
		
		//Level Stats
		public var XP:Number = 0;
		public var level:Number = 0;
		public var gems:Number = 0;
				
		//Appearance Variables
		//Gender 1M, 2F, 3H
		public var gender:int = GENDER_NONE;
		public var tallness:Number = 0;
		
		/*Hairtype
		0- normal
		1- feather
		2- ghost
		3- goo!
		4- anemononeoenoeneo!*/
		public var hairType:Number = HAIR_NORMAL;
		public var hairColor:String = "no";
		public var hairLength:Number = 0;
		
		/*Skintype
		0 - skin
		1 - furry
		2 - scaley
		3 - goopey*/
		public var skinType:Number = SKIN_TYPE_PLAIN;
		public var skinTone:String = "albino";
		public var skinDesc:String = "skin";
		public var skinAdj:String = "";
		
/*		Facetype:
		0 - human
		1 - horse
		2 - dogface
		3 - cowface
		4 - sharkface-teeth
		5 - Human w/Naga fangz
		6 - kittah face
		7 - lizard face (durned argonians!)
		8 - bunnah faceahhh bunbun
		9 - kangaface
		10 - spidah-face (humanish)
		11 - foxface!
		12 - dragon face
		13 - Halfcoon
		14 - fullcoon
		15 - halfmouse
		16 - fullmouse*/
		public var faceType:Number = FACE_HUMAN;

		/*EarType
		-1 - none!
		0 - human
		1 - horse
		2 - dog
		3 - cow
		4 - elf
		5 - catzilla
		6 - Snakezilla
		7 - Bunbunz
		8 - Roo Ears
		9 - fox ears
		10 - dragon
		11 - coon
		12 - mouse*/
		public var earType:Number = EARS_HUMAN;
		public var earValue:Number = 0;
		
		/*Horntype
		1 - demonic
		2 - minotaur (cowlike)
		3 - Draconic/Lizard
		4 - Double draconic
		5 - Antlers*/
		public var hornType:Number = HORNS_NONE;
		public var horns:Number = 0;

		/*Wingtype
		0 - none
		1 - bee
		2 - large bee
		3 - faerie?
		4 - avian
		5 - dragoooon?
		6 - demon/bat
		7 - large demon/bat
		8 - shark wing lolololol
		9 - harpy
		10 - small dagron
		11 - trogdor wings
		12 - sandtrap wings*/
		public var wingType:Number = WING_TYPE_NONE;
		public var wingDesc:String = "non-existant";
		
		/* lowerBody:
		0 - normal
		1 - hooves
		2 - paws
		3 - snakelike body
		4 - centaur!
		5 - demonic heels
		6 - demon foot-claws
		7 - bee legs
		8 - goo mound
		9 - catfeet
		10 - lizardfeet
		11 - MLP.
		12 - DAH BUNNY!
		13 - Harpah Legz
		14 - Roo feet!
		15 - Spider Legz
		16 - Drider Legs
		17 - foxpaws
		18 - dragonfeet
		19 - raccoonfeet*/
		public var lowerBody:Number = LOWER_BODY_TYPE_HUMAN;

		/*tailType:
		0 - none
		1 - horse
		2 - dog
		3 - demon
		4 - cow!
		5 - spider!
		6 - bee!
		7 - shark tail!
		8 - catTAIIIIIL
		9 - lizard tail
		10 - bunbuntail
		11 - harpybutt
		12 - rootail
		13 - foxtail
		14 - dagron tail
		15 - raccoon tail
		16 - mousetail*/
		public var tailType:Number = TAIL_TYPE_NONE;
		
		//Tail venom is a 0-100 slider used for tail attacks. Recharges per hour.
		public var tailVenom:Number = 0;
		//Tail recharge determines how fast venom/webs comes back per hour.
		public var tailRecharge:Number = 5;
		
		/*hipRating
		0 - boyish
		2 - slender
		4 - average
		6 - noticable/ample
		10 - curvy//flaring
		15 - child-bearing/fertile
		20 - inhumanly wide*/
		public var hipRating:Number = HIP_RATING_BOYISH;
		
		/*buttRating
		0 - buttless
		2 - tight
		4 - average
		6 - noticable
		8 - large
		10 - jiggly
		13 - expansive
		16 - huge
		20 - inconceivably large/big/huge etc*/
		public var buttRating:Number = BUTT_RATING_BUTTLESS;
		
		//Piercings
		//TODO: Pull this out into it's own class and enum.
		public var nipplesPierced:Number = 0;
		public var nipplesPShort:String = "";
		public var nipplesPLong:String = "";
		public var lipPierced:Number = 0;
		public var lipPShort:String = "";
		public var lipPLong:String = "";
		public var tonguePierced:Number = 0;
		public var tonguePShort:String = "";
		public var tonguePLong:String = "";
		public var eyebrowPierced:Number = 0;
		public var eyebrowPShort:String = "";
		public var eyebrowPLong:String = "";
		public var earsPierced:Number = 0;
		public var earsPShort:String = "";
		public var earsPLong:String = "";
		public var nosePierced:Number = 0;
		public var nosePShort:String = "";
		public var nosePLong:String = "";

		//Head ornaments. Definitely need to convert away from hard coded types.
		public var antennae:Number = ANTENNAE_NONE;

		//Eyetype
		public var eyeType:Number = EYES_HUMAN;

		//TongueType
		public var tongueType:Number = TONUGE_HUMAN;

		//ArmType
		public var armType:Number = ARM_TYPE_HUMAN;

		//Gills
		public var gills:Boolean = false;

		//Sexual Stuff		
		//MALE STUFF
		//public var cocks:Array;
		//TODO: Tuck away into Male genital class?
		public var cocks:Array;
		//balls
		public var balls:Number = 0;
		public var cumMultiplier:Number = 1;
		public var ballSize:Number = 0;
		public var hoursSinceCum:Number = 0;
		
		//FEMALE STUFF
		//TODO: Box into Female genital class?
		public var vaginas:Array;
		//Fertility is a % out of 100. 
		public var fertility:Number = 10;
		public var clitLength:Number = .5;
		public var nippleLength:Number = .25;
		public var breastRows:Array;
		public var ass:AssClass = new AssClass();		
		
		//Monsters have few perks, which I think should be a status effect for clarity's sake.
		//TODO: Move perks into monster status effects.
		public var perks:Array;
		//Current status effects. This has got very muddy between perks and status effects. Will have to look into it.
		//Someone call the grammar police!
		//TODO: Move monster status effects into perks. Needs investigation though.
		public var statusAffects:Array;
		
		//Constructor
		public function Creature() {
			//cocks = new Array();
			//The world isn't ready for typed Arrays just yet.
			cocks = [];
			vaginas = [];
			//vaginas: Vector.<Vagina> = new Vector.<Vagina>();
			breastRows = [];
			perks = [];
			statusAffects = [];
			//keyItems = new Array();
		}

		public function resetDickEjaculateTimer():void
		{
			// Reset hoursSinceCum 
			// trace("YOU IS JIZZING OMGLOLWTFBBQ!", this.hoursSinceCum)
			this.hoursSinceCum = 0;
		}
		
		//Functions			
		//Create a perk
		public function createPerk(keyName:String, value1:Number, value2:Number, value3:Number, value4:Number, desc:String = ""):void
		{
			var newKeyItem:PerkClass = new PerkClass();
			//used to denote that the array has already had its new spot pushed on.
			var arrayed:Boolean = false;
			//used to store where the array goes
			var keySlot:Number = 0;
			var counter:Number = 0;
			//Start the array if its the first bit
			if (perks.length == 0)
			{
				//trace("New Perk Started Array! " + keyName);
				perks.push(newKeyItem);
				arrayed = true;
				keySlot = 0;
			}
			//If it belongs at the end, push it on
			if (perks[perks.length - 1].perkName < keyName && !arrayed)
			{
				//trace("New Perk Belongs at the end!! " + keyName);
				perks.push(newKeyItem);
				arrayed = true;
				keySlot = perks.length - 1;
			}
			//If it belongs in the beginning, splice it in
			if (perks[0].perkName > keyName && !arrayed)
			{
				//trace("New Perk Belongs at the beginning! " + keyName);
				perks.splice(0, 0, newKeyItem);
				arrayed = true;
				keySlot = 0;
			}
			//Find the spot it needs to go in and splice it in.
			if (!arrayed)
			{
				//trace("New Perk using alphabetizer! " + keyName);
				counter = perks.length;
				while (counter > 0 && !arrayed)
				{
					counter--;
					//If the current slot is later than new key
					if (perks[counter].perkName > keyName)
					{
						//If the earlier slot is earlier than new key && a real spot
						if (counter - 1 >= 0)
						{
							//If the earlier slot is earlier slot in!
							if (perks[counter - 1].perkName <= keyName)
							{
								arrayed = true;
								perks.splice(counter, 0, newKeyItem);
								keySlot = counter;
							}
						}
						//If the item after 0 slot is later put here!
						else
						{
							//If the next slot is later we are go
							if(perks[counter].perkName <= keyName) {
								arrayed = true;
								perks.splice(counter, 0, newKeyItem);
								keySlot = counter;
							}
						}
					}
				}
			}
			//Fallback
			if (!arrayed)
			{
				//trace("New Perk Belongs at the end!! " + keyName);
				perks.push(newKeyItem);
				arrayed = true;
				keySlot = perks.length - 1;
			}
			
			perks[keySlot].perkName = keyName;
			perks[keySlot].value1 = value1;
			perks[keySlot].value2 = value2;
			perks[keySlot].value3 = value3;
			perks[keySlot].value4 = value4;
			perks[keySlot].perkDesc = desc;
			//trace("NEW PERK FOR PLAYER in slot " + keySlot + ": " + perks[keySlot].perkName);
		}
		
		//Remove perk
		public function removePerk(perkName:String):void
		{
			var counter:Number = perks.length;
			//Various Errors preventing action
			if (perks.length <= 0)
			{
				//trace("ERROR: Perk could not be removed because player has no perks.");
				return;
			}
			while (counter > 0)
			{
				counter--;
				if (perks[counter].perkName == perkName)
				{
					perks.splice(counter, 1);
					//trace("Attempted to remove \"" + perkName + "\" perk.");
					counter = 0;
				}
			}
		}
		
		//has perk?
		public function hasPerk(perkName:String):Number
		{
			var counter:Number = perks.length;
			if (perks.length <= 0)
				return -2;
			while (counter > 0)
			{
				counter--;
				if (perks[counter].perkName == perkName)
					return counter;
			}
			return -1;
		}
		
		//Duplicate perk
		//Deprecated?
		public function perkDuplicated(perkName:String):Boolean
		{
			var counter:Number = perks.length;
			var timesFound:int = 0;
			if (perks.length <= 0)
				return false;
			while (counter > 0)
			{
				counter--;
				if (perks[counter].perkName == perkName)
					timesFound++;
			}
			return (timesFound > 1);
		}
		
		//remove all perks
		public function removePerks():void
		{
			var counter:Number = perks.length;
			while (counter > 0)
			{
				counter--;
				perks.splice(counter, 1);
			}
		}
		
		public function addPerkValue(statusName:String, statusValueNum:Number = 1, newNum:Number = 0): void
		{
			var counter:Number = perks.length;
			//Various Errors preventing action
			if (perks.length <= 0)
			{
				return;
					//trace("ERROR: Looking for perk '" + statusName + "' to change value " + statusValueNum + ", and player has no perks.");
			}
			while (counter > 0)
			{
				counter--;
				//Find it, change it, quit out
				if (perks[counter].perkName == statusName)
				{
					if (statusValueNum < 1 || statusValueNum > 4)
					{
						//trace("ERROR: ChangePerkValue called with invalid perk value number.");
						return;
					}
					if (statusValueNum == 1)
						perks[counter].value1 += newNum;
					if (statusValueNum == 2)
						perks[counter].value2 += newNum;
					if (statusValueNum == 3)
						perks[counter].value3 += newNum;
					if (statusValueNum == 4)
						perks[counter].value4 += newNum;
					return;
				}
			}
			//trace("ERROR: Looking for perk '" + statusName + "' to change value " + statusValueNum + ", and player does not have the perk.");
			return;
		}
		
		public function changePerkValue(statusName:String, statusValueNum:Number = 1, newNum:Number = 0): void
		{
			var counter:Number = perks.length;
			//Various Errors preventing action
			if (perks.length <= 0)
			{
				return;
					//trace("ERROR: Looking for perk '" + statusName + "' to change value " + statusValueNum + ", and player has no perks.");
			}
			while (counter > 0)
			{
				counter--;
				//Find it, change it, quit out
				if (perks[counter].perkName == statusName)
				{
					if (statusValueNum < 1 || statusValueNum > 4)
					{
						//trace("ERROR: ChangePerkValue called with invalid perk value number.");
						return;
					}
					if (statusValueNum == 1)
						perks[counter].value1 = newNum;
					if (statusValueNum == 2)
						perks[counter].value2 = newNum;
					if (statusValueNum == 3)
						perks[counter].value3 = newNum;
					if (statusValueNum == 4)
						perks[counter].value4 = newNum;
					return;
				}
			}
			//trace("ERROR: Looking for perk '" + statusName + "' to change value " + statusValueNum + ", and player does not have the perk.");
			return;
		}
		
		public function perkv1(statusName:String):Number
		{
			var counter:Number = perks.length;
			//Various Errors preventing action
			if (perks.length <= 0)
			{
				return 0;
					//trace("ERROR: Looking for perk '" + statusName + "', and player has no perks.");
			}
			while (counter > 0)
			{
				counter--;
				if (perks[counter].perkName == statusName)
					return perks[counter].value1;
			}
			//trace("ERROR: Looking for perk '" + statusName + "', but player does not have it.");
			return 0;
		}
		
		public function perkv2(statusName:String):Number
		{
			var counter:Number = perks.length;
			//Various Errors preventing action
			if (perks.length <= 0)
			{
				return 0;
					//trace("ERROR: Looking for perk '" + statusName + "', and player has no perks.");
			}
			while (counter > 0)
			{
				counter--;
				if (perks[counter].perkName == statusName)
					return perks[counter].value2;
			}
			//trace("ERROR: Looking for perk '" + statusName + "', but player does not have it.");
			return 0;
		}
		
		public function perkv3(statusName:String):Number
		{
			var counter:Number = perks.length;
			//Various Errors preventing action
			if (perks.length <= 0)
			{
				return 0;
					//trace("ERROR: Looking for perk '" + statusName + "', and player has no perks.");
			}
			while (counter > 0)
			{
				counter--;
				if (perks[counter].perkName == statusName)
					return perks[counter].value3;
			}
			//trace("ERROR: Looking for perk '" + statusName + "', but player does not have it.");
			return 0;
		}
		
		public function perkv4(statusName:String):Number
		{
			var counter:Number = perks.length;
			//Various Errors preventing action
			if (perks.length <= 0)
			{
				return 0;
					//trace("ERROR: Looking for perk '" + statusName + "', and player has no perks.");
			}
			while (counter > 0)
			{
				counter--;
				if (perks[counter].perkName == statusName)
					return perks[counter].value4;
			}
			//trace("ERROR: Looking for perk '" + statusName + "', but player does not have it.");
			return 0;
		}
		
		//{region StatusEffects
		//Create a status
		public function createStatusAffect(statusName:String, value1:Number, value2:Number, value3:Number, value4:Number):void
		{
			var newStatusAffect:* = new StatusAffectClass();
			statusAffects.push(newStatusAffect);
			statusAffects[statusAffects.length - 1].statusAffectName = statusName;
			statusAffects[statusAffects.length - 1].value1 = value1;
			statusAffects[statusAffects.length - 1].value2 = value2;
			statusAffects[statusAffects.length - 1].value3 = value3;
			statusAffects[statusAffects.length - 1].value4 = value4;
			//trace("NEW STATUS APPLIED TO PLAYER!: " + statusName);
		}
		
		//Remove a status
		public function removeStatusAffect(statusName:String):void
		{
			var counter:Number = statusAffects.length;
			//Various Errors preventing action
			if (statusAffects.length <= 0)
			{
				//trace("ERROR: Status Affect could not be removed because player has no statuses.");
				return;
			}
			while (counter > 0)
			{
				counter--;
				if (statusAffects[counter].statusAffectName == statusName)
				{
					statusAffects.splice(counter, 1);
					//trace("Attempted to remove \"" + statusName + "\" status.");
					counter = 0;
				}
			}
		}
		
		//TODO Change this to Boolean
		public function hasStatusAffect(statusName:String):Number {
			var counter:Number = statusAffects.length;
			//Various Errors preventing action
			if (statusAffects.length <= 0)
				return -2;
			while (counter > 0)
			{
				counter--;
				if (statusAffects[counter].statusAffectName == statusName)
					return counter;
			}
			return -1;
		}
		//}endregion
		
		
		public function changeStatusValue(statusName:String, statusValueNum:Number = 1, newNum:Number = 0):void
		{
			var counter:Number = statusAffects.length;
			//Various Errors preventing action
			if (statusAffects.length <= 0)
			{
				return;
					//trace("ERROR: Looking for status '" + statusName + "' to change value " + statusValueNum + ", and player has no status affects.");
			}
			while (counter > 0)
			{
				counter--;
				//Find it, change it, quit out
				if (statusAffects[counter].statusAffectName == statusName)
				{
					if (statusValueNum < 1 || statusValueNum > 4)
					{
						//trace("ERROR: ChangeStatusValue called with invalid status value number.");
						return;
					}
					if (statusValueNum == 1)
						statusAffects[counter].value1 = newNum;
					if (statusValueNum == 2)
						statusAffects[counter].value2 = newNum;
					if (statusValueNum == 3)
						statusAffects[counter].value3 = newNum;
					if (statusValueNum == 4)
						statusAffects[counter].value4 = newNum;
					return;
				}
			}
			//trace("ERROR: Looking for status '" + statusName + "' to change value " + statusValueNum + ", and player does not have the status affect.");
			return;
		}
		
		public function addStatusValue(statusName:String, statusValueNum:Number = 1, newNum:Number = 0):void
		{
			var counter:Number = statusAffects.length;
			//Various Errors preventing action
			if (statusAffects.length <= 0)
			{
				return;
					//trace("ERROR: Looking for status '" + statusName + "' to change value " + statusValueNum + ", and player has no status affects.");
			}
			while (counter > 0)
			{
				counter--;
				//Find it, change it, quit out
				if (statusAffects[counter].statusAffectName == statusName)
				{
					if (statusValueNum < 1 || statusValueNum > 4)
					{
						//trace("ERROR: ChangeStatusValue called with invalid status value number.");
						return;
					}
					if (statusValueNum == 1)
						statusAffects[counter].value1 += newNum;
					if (statusValueNum == 2)
						statusAffects[counter].value2 += newNum;
					if (statusValueNum == 3)
						statusAffects[counter].value3 += newNum;
					if (statusValueNum == 4)
						statusAffects[counter].value4 += newNum;
					return;
				}
			}
			//trace("ERROR: Looking for status '" + statusName + "' to change value " + statusValueNum + ", and player does not have the status affect.");
			return;
		}
		
		public function statusAffectv1(statusName:String):Number
		{
			var counter:Number = statusAffects.length;
			//Various Errors preventing action
			if (statusAffects.length <= 0)
			{
				return 0;
					//trace("ERROR: Looking for status '" + statusName + "', and player has no status affects.");
			}
			while (counter > 0)
			{
				counter--;
				if (statusAffects[counter].statusAffectName == statusName)
					return statusAffects[counter].value1;
			}
			//trace("ERROR: Looking for status '" + statusName + "', but player does not have it.");
			return 0;
		}
		
		public function statusAffectv2(statusName:String):Number
		{
			var counter:Number = statusAffects.length;
			//Various Errors preventing action
			if (statusAffects.length <= 0)
			{
				return 0;
					//trace("ERROR: Looking for status '" + statusName + "', and player has no status affects.");
			}
			while (counter > 0)
			{
				counter--;
				if (statusAffects[counter].statusAffectName == statusName)
					return statusAffects[counter].value2;
			}
			//trace("ERROR: Looking for status '" + statusName + "', but player does not have it.");
			return 0;
		}
		
		public function statusAffectv3(statusName:String):Number
		{
			var counter:Number = statusAffects.length;
			//Various Errors preventing action
			if (statusAffects.length <= 0)
			{
				return 0;
					//trace("ERROR: Looking for status '" + statusName + "', and player has no status affects.");
			}
			while (counter > 0)
			{
				counter--;
				if (statusAffects[counter].statusAffectName == statusName)
					return statusAffects[counter].value3;
			}
			//trace("ERROR: Looking for status '" + statusName + "', but player does not have it.");
			return 0;
		}
		
		public function statusAffectv4(statusName:String):Number
		{
			var counter:Number = statusAffects.length;
			//Various Errors preventing action
			if (statusAffects.length <= 0)
			{
				return 0;
					//trace("ERROR: Looking for status '" + statusName + "', and player has no status affects.");
			}
			while (counter > 0)
			{
				counter--;
				if (statusAffects[counter].statusAffectName == statusName)
					return statusAffects[counter].value4;
			}
			//trace("ERROR: Looking for status '" + statusName + "', but player does not have it.");
			return 0;
		}
		
		public function removeStatuses():void
		{
			var counter:Number = statusAffects.length;
			while (counter > 0)
			{
				counter--;
				statusAffects.splice(counter, 1);
			}
		}		
		
		public function biggestTitSize():Number
		{
			if (breastRows.length == 0)
				return -1;
			var counter:Number = breastRows.length;
			var index:Number = 0;
			while (counter > 0)
			{
				counter--;
				if (breastRows[index].breastRating < breastRows[counter].breastRating)
					index = counter;
			}
			return breastRows[index].breastRating;
		}
		
		public function cockArea(i_cockIndex:Number):Number
		{
			if (i_cockIndex >= cocks.length || i_cockIndex < 0)
				return 0;
			return (cocks[i_cockIndex].cockThickness * cocks[i_cockIndex].cockLength);
		}
		
		public function biggestCockLength():Number
		{
			if (cocks.length == 0)
				return 0;
			return cocks[biggestCockIndex()].cockLength;
		}
		
		public function biggestCockArea():Number
		{
			if (cocks.length == 0)
				return 0;
			var counter:Number = cocks.length;
			var index:Number = 0;
			while (counter > 0)
			{
				counter--;
				if (cockArea(index) < cockArea(counter))
					index = counter;
			}
			return cockArea(index);
		}
		
		//Find the second biggest dick and it's area.
		public function biggestCockArea2():Number
		{
			if (cocks.length <= 1)
				return 0;
			var counter:Number = cocks.length;
			var index:Number = 0;
			var index2:Number = -1;
			//Find the biggest
			while (counter > 0)
			{
				counter--;
				if (cockArea(index) < cockArea(counter))
					index = counter;
			}
			//Reset counter and find the next biggest
			counter = cocks.length;
			while (counter > 0)
			{
				counter--;
				//Is this spot claimed by the biggest?
				if (counter != index)
				{
					//Not set yet?
					if (index2 == -1)
						index2 = counter;
					//Is the stored value less than the current one?
					if (cockArea(index2) < cockArea(counter))
					{
						index2 = counter;
					}
				}
			}
			//If it couldn't find a second biggest...
			if (index == index2)
				return 0;
			return cockArea(index2);
		}
		
		public function longestCock():Number
		{
			if (cocks.length == 0)
				return 0;
			var counter:Number = cocks.length;
			var index:Number = 0;
			while (counter > 0)
			{
				counter--;
				if (cocks[index].cockLength < cocks[counter].cockLength)
					index = counter;
			}
			return index;
		}
		
		public function longestCockLength():Number
		{
			if (cocks.length == 0)
				return 0;
			var counter:Number = cocks.length;
			var index:Number = 0;
			while (counter > 0)
			{
				counter--;
				if (cocks[index].cockLength < cocks[counter].cockLength)
					index = counter;
			}
			return cocks[index].cockLength;
		}
		
		public function longestHorseCockLength():Number
		{
			if (cocks.length == 0)
				return 0;
			var counter:Number = cocks.length;
			var index:Number = 0;
			while (counter > 0)
			{
				counter--;
				if ((cocks[index].cockType != CockTypesEnum.HORSE && cocks[counter].cockType == CockTypesEnum.HORSE) || (cocks[index].cockLength < cocks[counter].cockLength && cocks[counter].cockType == CockTypesEnum.HORSE))
					index = counter;
			}
			return cocks[index].cockLength;
		}
		
		public function twoDickRadarSpecial(width:int):Boolean
		{
			//No two dicks?  FUCK OFF
			if (cockTotal() < 2)
				return false;
			
			//Set up vars
			//Get thinnest, work done already
			var thinnest:int = thinnestCockIndex();
			var thinnest2:int = 0;
			//For ze loop
			var temp:int = 0;
			//Make sure they arent the same at initialization
			if (thinnest2 == thinnest)
				thinnest2 = 1;
			//Loop through to find 2nd thinnest
			while (temp < cocks.length)
			{
				if (cocks[thinnest2].cockThickness > cocks[temp].cockThickness && temp != thinnest)
					thinnest2 = temp;
				temp++;
			}
			//If the two thicknesses added together are less than the arg, true, else false
			if (cocks[thinnest].cockThickness + cocks[thinnest2].cockThickness < width)
				return true;
			else
				return false;
		}
		
		public function totalCockThickness():Number
		{
			var thick:Number = 0;
			var counter:Number = cocks.length;
			while (counter > 0)
			{
				counter--;
				thick += cocks[counter].cockThickness;
			}
			return thick;
		}
		
		public function thickestCock():Number
		{
			if (cocks.length == 0)
				return 0;
			var counter:Number = cocks.length;
			var index:Number = 0;
			while (counter > 0)
			{
				counter--;
				if (cocks[index].cockThickness < cocks[counter].cockThickness)
					index = counter;
			}
			return index;
		}
		
		public function thickestCockThickness():Number
		{
			if (cocks.length == 0)
				return 0;
			var counter:Number = cocks.length;
			var index:Number = 0;
			while (counter > 0)
			{
				counter--;
				if (cocks[index].cockThickness < cocks[counter].cockThickness)
					index = counter;
			}
			return cocks[index].cockThickness;
		}
		
		public function thinnestCockIndex():Number
		{
			if (cocks.length == 0)
				return 0;
			var counter:Number = cocks.length;
			var index:Number = 0;
			while (counter > 0)
			{
				counter--;
				if (cocks[index].cockThickness > cocks[counter].cockThickness)
					index = counter;
			}
			return index;
		}
		
		public function smallestCockIndex():Number
		{
			if (cocks.length == 0)
				return 0;
			var counter:Number = cocks.length;
			var index:Number = 0;
			while (counter > 0)
			{
				counter--;
				if (cockArea(index) > cockArea(counter))
				{
					index = counter;
				}
			}
			return index;
		}
		
		public function smallestCockLength():Number
		{
			if (cocks.length == 0)
				return 0;
			return cocks[smallestCockIndex()].cockLength;
		}
		
		public function shortestCockIndex():Number
		{
			if (cocks.length == 0)
				return 0;
			var counter:Number = cocks.length;
			var index:Number = 0;
			while (counter > 0)
			{
				counter--;
				if (cocks[index].cockLength > cocks[counter].cockLength)
					index = counter;
			}
			return index;
		}
		
		public function shortestCockLength():Number
		{
			if (cocks.length == 0)
				return 0;
			var counter:Number = cocks.length;
			var index:Number = 0;
			while (counter > 0)
			{
				counter--;
				if (cocks[index].cockLength > cocks[counter].cockLength)
					index = counter;
			}
			return cocks[index].cockLength;
		}
		
		//Find the biggest cock that fits inside a given value
		public function cockThatFits(i_fits:Number = 0, type:String = "area"):Number
		{
			if (cocks.length <= 0)
				return -1;
			var cockIdxPtr:int = cocks.length;
			//Current largest fitter
			var cockIndex:int = -1;
			while (cockIdxPtr > 0)
			{
				cockIdxPtr--;
				if (type == "area")
				{
					if (cockArea(cockIdxPtr) <= i_fits)
					{
						//If one already fits
						if (cockIndex >= 0)
						{
							//See if the newcomer beats the saved small guy
							if (cockArea(cockIdxPtr) > cockArea(cockIndex))
								cockIndex = cockIdxPtr;
						}
						//Store the index of fitting dick
						else
							cockIndex = cockIdxPtr;
					}
				}
				else if (type == "length")
				{
					if (cocks[cockIdxPtr].cockLength <= i_fits)
					{
						//If one already fits
						if (cockIndex >= 0)
						{
							//See if the newcomer beats the saved small guy
							if (cocks[cockIdxPtr].cockLength > cocks[cockIndex].cockLength)
								cockIndex = cockIdxPtr;
						}
						//Store the index of fitting dick
						else
							cockIndex = cockIdxPtr;
					}
				}
			}
			return cockIndex;
		}
		
		//Find the 2nd biggest cock that fits inside a given value
		public function cockThatFits2(fits:Number = 0):Number
		{
			if (cockTotal() == 1)
				return -1;
			var counter:Number = cocks.length;
			//Current largest fitter
			var index:Number = -1;
			var index2:Number = -1;
			while (counter > 0)
			{
				counter--;
				//Does this one fit?
				if (cockArea(counter) <= fits)
				{
					//If one already fits
					if (index >= 0)
					{
						//See if the newcomer beats the saved small guy
						if (cockArea(counter) > cockArea(index))
						{
							//Save old wang
							if (index != -1)
								index2 = index;
							index = counter;
						}
						//If this one fits and is smaller than the other great
						else
						{
							if ((cockArea(index2) < cockArea(counter)) && counter != index)
							{
								index2 = counter;
							}
						}
						if (index >= 0 && index == index2)
							trace("FUCK ERROR COCKTHATFITS2 SHIT IS BROKED!");
					}
					//Store the index of fitting dick
					else
						index = counter;
				}
			}
			return index2;
		}
		
		public function smallestCockArea():Number
		{
			if (cockTotal() == 0)
				return -1;
			return cockArea(smallestCockIndex());
		}
		
		public function smallestCock():Number
		{
			return cockArea(smallestCockIndex());
		}
		
		public function biggestCockIndex():Number
		{
			if (cocks.length == 0)
				return 0;
			var counter:Number = cocks.length;
			var index:Number = 0;
			while (counter > 0)
			{
				counter--;
				if (cockArea(index) < cockArea(counter))
					index = counter;
			}
			return index;
		}
		
		//Find the second biggest dick's index.
		public function biggestCockIndex2():Number
		{
			if (cocks.length <= 1)
				return 0;
			var counter:Number = cocks.length;
			var index:Number = 0;
			var index2:Number = 0;
			//Find the biggest
			while (counter > 0)
			{
				counter--;
				if (cockArea(index) < cockArea(counter))
					index = counter;
			}
			//Reset counter and find the next biggest
			counter = cocks.length;
			while (counter > 0)
			{
				counter--;
				//Make sure index2 doesn't get stuck
				//at the same value as index1 if the
				//initial location is biggest.
				if (index == index2 && counter != index)
					index2 = counter;
				//Is the stored value less than the current one?
				if (cockArea(index2) < cockArea(counter))
				{
					//Make sure we don't set index2 to be the same
					//as the biggest dick.
					if (counter != index)
						index2 = counter;
				}
			}
			//If it couldn't find a second biggest...
			if (index == index2)
				return 0;
			return index2;
		}
		
		public function smallestCockIndex2():Number
		{
			if (cocks.length <= 1)
				return 0;
			var counter:Number = cocks.length;
			var index:Number = 0;
			var index2:Number = 0;
			//Find the smallest
			while (counter > 0)
			{
				counter--;
				if (cockArea(index) > cockArea(counter))
					index = counter;
			}
			//Reset counter and find the next biggest
			counter = cocks.length;
			while (counter > 0)
			{
				counter--;
				//Make sure index2 doesn't get stuck
				//at the same value as index1 if the
				//initial location is biggest.
				if (index == index2 && counter != index)
					index2 = counter;
				//Is the stored value less than the current one?
				if (cockArea(index2) > cockArea(counter))
				{
					//Make sure we don't set index2 to be the same
					//as the biggest dick.
					if (counter != index)
						index2 = counter;
				}
			}
			//If it couldn't find a second biggest...
			if (index == index2)
				return 0;
			return index2;
		}
		
		//Find the third biggest dick index.
		public function biggestCockIndex3():Number {
			if (cocks.length <= 2) {
				return 0;
			}
			var counter:Number = cocks.length;
			var index:Number = 0;
			var index2:Number = -1;
			var index3:Number = -1;
			//Find the biggest
			while (counter > 0)
			{
				counter--;
				if (cockArea(index) < cockArea(counter))
					index = counter;
			}
			//Reset counter and find the next biggest
			counter = cocks.length;
			while (counter > 0)
			{
				counter--;
				//If this index isn't used already
				if (counter != index)
				{
					//Has index been set to anything yet?
					if (index2 == -1)
						index2 = counter;
					//Is the stored value less than the current one?
					else if (cockArea(index2) < cockArea(counter))
					{
						index2 = counter;
					}
				}
			}
			//If it couldn't find a second biggest...
			if (index == index2 || index2 == -1) {
				index2 = 0;
			}
			//Reset counter and find the next biggest
			counter = cocks.length;
			while (counter > 0) {
				counter--;
				//If this index isn't used already
				if (counter != index && counter != index2)
				{
					//Has index been set to anything yet?
					if (index3 == -1) {
						index3 = counter;
					} else if (cockArea(index3) < cockArea(counter)) { //Is the stored value less than the current one?
						index3 = counter;
					}
				}
			}
			//If it fails for some reason.
			if (index3 == -1) {
				index3 = 0;
			}
			return index3;
		}
		
		protected static function rand(max:Number):Number {
			return Math.floor(Math.random() * max);
		}
		
		public static function randomChoice(... args:*):* {
			var array:Array = ((args.length == 1) && (args[0] is Array))
				? args[0]
				: args;
			return array[rand(array.length)];
		}
		
		public function cockDescript(cockIndex:Number = 0):String {
			if (totalCocks() == 0) {
				return failMaybe("<b>ERROR: CockDescript Called But No Cock Present</b>");
			}
			if (cockTotal() <= cockIndex && cockIndex != 99)
				return failMaybe("<b>ERROR: CockDescript called with index of " + cockIndex + " - out of BOUNDS</b>");
			//Cocknum 99 to default to boring descriptions!
			if (cockIndex != 99) {
				if (rand(2) == 0) {
					descript += cockAdjective(cockIndex) + ", ";
				}
				descript += Appearance.cockNoun(cocks[cockIndex].cockType);
			} else {
				cockIndex = 0;
			}
			var descript:String = "";
			//50% of the time add a descriptor
			if (rand(2) == 0)
				descript += cockAdjective(cockIndex) + " ";
			var rando:Number = 0;
			rando = rand(10)
			if (rando >= 0 && rando <= 4)
				descript += "cock";
			if (rando == 5 || rando == 6)
				descript += "prick";
			if (rando == 7)
				descript += "pecker";
			if (rando > 7)
				descript += "shaft";
			
			return descript;
		}
		
		
		//New cock adjectives.  The old one sucked dicks
		public function cockAdjective(cockIndex:Number = -1):String
		{
			var descript:String = "";
			var rando:Number = 0;
			var multi:Boolean = false;
			//If used for multiple cocks, set multi flag
			if (cockIndex < 0)
			{
				//Since we have multi dicks lets talk about the biggest!
				cockIndex = biggestCockIndex();
				multi = true;
			}
			//Pierced - 1/5 chance
			if (!multi && rand(5) == 0 && cocks[cockIndex].isPierced == true)
			{
				descript += "pierced";
			}
			//Goo - 1/4 chance
			else if (skinType == 3 && rand(4) == 0)
			{
				rando = rand(3);
				if (rando == 0)
					descript += "goopey";
				else if (rando == 1)
					descript += "gooey";
				else
					descript += "slimy";
			}
			//Length 1/3 chance
			else if (rand(3) == 0)
			{
				if (cocks[cockIndex].cockLength < 3)
				{
					rando = rand(4);
					if (rando == 0)
						descript = "little";
					else if (rando == 1)
						descript = "toy-sized";
					else if (rando == 2)
						descript = "mini";
					else if (rando == 3)
						descript = "budding";
					else
						descript = "tiny";
				}
				else if (cocks[cockIndex].cockLength < 5)
				{
					rando = rand(2);
					if (rando == 0)
						descript = "short";
					else
						descript = "small";
				}
				else if (cocks[cockIndex].cockLength < 7)
				{
					rando = rand(2);
					if (rando == 0)
						descript = "fair-sized";
					else
						descript = "nice";
				}
				else if (cocks[cockIndex].cockLength < 9)
				{
					rando = rand(3);
					if (rando == 0)
					{
						if (cocks[cockIndex].cockType == CockTypesEnum.HORSE)
							descript = "pony-sized";
						else
							descript = "long";
					}
					else if (rando == 1)
					{
						if (cocks[cockIndex].cockType == CockTypesEnum.HORSE)
							descript = "colt-like";
						else
							descript = "lengthy";
					}
					else
						descript = "sizable";
				}
				else if (cocks[cockIndex].cockLength < 13)
				{
					rando = rand(3);
					if (rando == 0)
						descript = "huge";
					else if (rando == 1)
					{
						if (cocks[cockIndex].cockType == CockTypesEnum.DOG)
							descript = "mastiff-like";
						else
							descript = "cucumber-length";
					}
					else
						descript = "foot-long";
				}
				else if (cocks[cockIndex].cockLength < 18)
				{
					rando = rand(3);
					if (rando == 0)
						descript = "massive";
					else if (rando == 1)
						descript = "knee-length";
					else
						descript = "forearm-length";
				}
				else if (cocks[cockIndex].cockLength < 30)
				{
					rando = rand(3);
					if (rando == 0)
						descript = "enormous";
					else if (rando == 1)
						descript = "giant";
					else
						descript = "arm-like";
				}
				else
				{
					rando = rand(4);
					if (cocks[cockIndex].cockType == CockTypesEnum.TENTACLE && rand(4) == 0)
						descript = "coiled ";
					else
					{
						if (rando == 0)
							descript = "towering";
						else if (rando == 1)
							descript = "freakish";
						else if (rando == 2)
							descript = "monstrous";
						else
							descript = "massive";
					}
				}
			}
			//Hornyness 1/2
			else if (lust > 75 && rand(2) == 0)
			{
				//Uber horny like a baws!
				if (lust > 90)
				{
					//Weak as shit cum
					if (cumQ() < 50)
					{
						if (rand(2) == 0)
							descript += "throbbing";
						else
							descript += "pulsating";
					}
					//lots of cum? drippy.
					else if (cumQ() < 200)
					{
						rando = rand(3);
						if (rando == 0)
							descript += "dribbling";
						else if (rando == 1)
							descript += "drooling";
						else
							descript += "leaking";
					}
					//Tons of cum
					else
					{
						rando = rand(5);
						if (rando == 0)
							descript += "very drippy";
						else if (rando == 1)
							descript += "pre-gushing";
						else if (rando == 2)
							descript += "cum-bubbling";
						else if (rando == 3)
							descript += "pre-slicked";
						else
							descript += "pre-drooling";
					}
				}
				//A little less lusty, but still lusty.
				else if (lust > 75)
				{
					if (cumQ() < 50)
					{
						rando = rand(5);
						if (rando == 0)
							descript += "turgid";
						else if (rando == 1)
							descript += "blood-engorged";
						else if (rando == 2)
							descript += "rock-hard";
						else if (rando == 3)
							descript += "stiff";
						else
							descript += "eager";
					}
					//A little drippy
					else if (cumQ() < 200)
					{
						rando = rand(10);
						if (rando == 0)
							descript += "turgid";
						else if (rando == 1)
							descript += "blood-engorged";
						else if (rando == 2)
							descript += "rock-hard";
						else if (rando == 3)
							descript += "stiff";
						
						else if (rando == 4)
							descript += "eager";
						else if (rando < 7)
							descript += "fluid-beading";
						else
							descript += "slowly-oozing";
					}
					//uber drippy
					else
					{
						rando = rand(4);
						if (rando == 0)
							descript += "dribbling";
						else if (rando == 1)
							descript += "drooling";
						else if (rando == 2)
							descript += "fluid-leaking";
						else
							descript += "leaking";
					}
				}
			}
			//Girth - fallback
			else
			{
				if (cocks[cockIndex].cockThickness <= .75)
				{
					rando = rand(3);
					if (rando == 0)
						descript += "thin";
					else if (rando == 1)
						descript += "slender";
					else
						descript += "narrow";
				}
				else if (cocks[cockIndex].cockThickness <= 1.2)
				{
					descript += "ample";
				}
				else if (cocks[cockIndex].cockThickness <= 1.4)
				{
					rando = rand(2);
					if (rando == 0)
						descript += "ample";
					else
						descript += "big";
				}
				else if (cocks[cockIndex].cockThickness <= 2)
				{
					rando = rand(3);
					if (rando == 0)
						descript += "broad";
					else if (rando == 1)
						descript += "girthy";
					else
						descript += "meaty";
				}
				else if (cocks[cockIndex].cockThickness <= 3.5)
				{
					rando = rand(3);
					if (rando == 0)
						descript += "fat";
					else if (rando == 1)
						descript += "wide";
					else
						descript += "distended";
				}
				else if (cocks[cockIndex].cockThickness > 3.5)
				{
					rando = rand(3);
					if (rando == 0)
						descript += "inhumanly distended";
					else if (rando == 1)
						descript += "bloated";
					else
						descript += "monstrously thick";
				}
			}
			return descript;
		}
		
		public function wetness():Number
		{
			if (vaginas.length == 0)
				return 0;
			else
				return vaginas[0].vaginalWetness;
		}
		
		public function vaginaType(newType:int = -1):int
		{
			if (!hasVagina())
				return -1;
			if (newType != -1)
			{
				vaginas[0].type = newType;
			}
			return vaginas[0].type;
		}
		
		public function looseness(vag:Boolean = true):Number
		{
			if (vag)
			{
				if (vaginas.length == 0)
					return 0;
				else
					return vaginas[0].vaginalLooseness;
			}
			else
			{
				return ass.analLooseness;
			}
		}
		
		public function vaginalCapacity():Number
		{
			//If the player has no vaginas
			if (vaginas.length == 0)
				return 0;
			var total:Number = 0;
			var bonus:Number = 0;
			//Centaurs = +50 capacity
			if (lowerBody == 4)
				bonus = 50;
			//Naga = +20 capacity
			else if (lowerBody == 3)
				bonus = 20;
			//Wet pussy provides 20 point boost
			if (hasPerk("Wet Pussy") >= 0)
				bonus += 20;
			if (hasPerk("History: Slut") >= 0)
				bonus += 20;
			if (hasPerk("One Track Mind") >= 0)
				bonus += 10;
			if (hasPerk("Cornucopia") >= 0)
				bonus += 30;
			if(hasPerk("Fera's Boon - Wide Open") >= 0) 
				bonus += 25;
			if(hasPerk("Fera's Boon - Milking Twat") >= 0) 
				bonus += 40;
			total = (bonus + statusAffectv1("Bonus vCapacity") + 8 * vaginas[0].vaginalLooseness * vaginas[0].vaginalLooseness) * (1 + vaginas[0].vaginalWetness / 10);
			return total;
		}
		
		public function analCapacity():Number
		{
			var total:Number = 0;
			var bonus:Number = 0;
			//Centaurs = +30 capacity
			if (lowerBody == 4)
				bonus = 30;
			if (hasPerk("History: Slut") >= 0)
				bonus += 20;
			if (hasPerk("Cornucopia") >= 0)
				bonus += 30;
			if (hasPerk("One Track Mind") >= 0)
				bonus += 10;
			if (ass.analWetness > 0)
				bonus += 15;
			return ((bonus + statusAffectv1("Bonus aCapacity") + 6 * ass.analLooseness * ass.analLooseness) * (1 + ass.analWetness / 10));
		}
		
		public function hasFuckableNipples():Boolean
		{
			var counter:Number = breastRows.length;
			var index:Number = 0;
			while (counter > 0)
			{
				counter--;
				if (breastRows[counter].fuckable)
					return true;
			}
			return false;
		}
		
		public function hasBreasts():Boolean
		{
			if (breastRows.length > 0)
			{
				if (biggestTitSize() >= 1)
					return true;
			}
			return false;
		}
		
		public function hasNipples():Boolean
		{
			var counter:Number = breastRows.length;
			var index:Number = 0;
			while (counter > 0)
			{
				counter--;
				if (breastRows[counter].nipplesPerBreast > 0)
					return true;
			}
			return false;
		}
		
		public function lactationSpeed():Number
		{
			//Lactation * breastSize x 10 (milkPerBreast) determines scene
			return biggestLactation() * biggestTitSize() * 10;
		}
		
		//Hacky code till I can figure out how to move appearance code out.
		//TODO: Get rid of this 
		public virtual function dogScore():Number {
			throw new Error("Not implemented. BAD");
		}
		
		//Hacky code till I can figure out how to move appearance code out.
		//TODO: Get rid of this
		public virtual function foxScore():Number {
			throw new Error("Not implemented. BAD");
		}
		
		public function biggestLactation():Number
		{
			if (breastRows.length == 0)
				return 0;
			var counter:Number = breastRows.length;
			var index:Number = 0;
			while (counter > 0)
			{
				counter--;
				if (breastRows[index].lactationMultiplier < breastRows[counter].lactationMultiplier)
					index = counter;
			}
			return breastRows[index].lactationMultiplier;
		}
		
		public function boostLactation(todo:Number):Number
		{
			if (breastRows.length == 0)
				return 0;
			var counter:Number = breastRows.length;
			var index:Number = 0;
			var changes:Number = 0;
			var temp2:Number = 0;
			//Prevent lactation decrease if lactating.
			if (todo >= 0)
			{
				if (hasStatusAffect("Lactation Reduction") >= 0)
					changeStatusValue("Lactation Reduction", 1, 0);
				if (hasStatusAffect("Lactation Reduc0") >= 0)
					removeStatusAffect("Lactation Reduc0");
				if (hasStatusAffect("Lactation Reduc1") >= 0)
					removeStatusAffect("Lactation Reduc1");
				if (hasStatusAffect("Lactation Reduc2") >= 0)
					removeStatusAffect("Lactation Reduc2");
				if (hasStatusAffect("Lactation Reduc3") >= 0)
					removeStatusAffect("Lactation Reduc3");
			}
			if (todo > 0)
			{
				while (todo > 0)
				{
					counter = breastRows.length;
					todo -= .1;
					while (counter > 0)
					{
						counter--;
						if (breastRows[index].lactationMultiplier > breastRows[counter].lactationMultiplier)
							index = counter;
					}
					temp2 = .1;
					if (breastRows[index].lactationMultiplier > 1.5)
						temp2 /= 2;
					if (breastRows[index].lactationMultiplier > 2.5)
						temp2 /= 2;
					if (breastRows[index].lactationMultiplier > 3)
						temp2 /= 2;
					changes += temp2;
					breastRows[index].lactationMultiplier += temp2;
				}
			}
			else
			{
				while (todo < 0)
				{
					counter = breastRows.length;
					index = 0;
					if (todo > -.1)
					{
						while (counter > 0)
						{
							counter--;
							if (breastRows[index].lactationMultiplier < breastRows[counter].lactationMultiplier)
								index = counter;
						}
						//trace(biggestLactation());
						breastRows[index].lactationMultiplier += todo;
						if (breastRows[index].lactationMultiplier < 0)
							breastRows[index].lactationMultiplier = 0;
						todo = 0;
					}
					else
					{
						todo += .1;
						while (counter > 0)
						{
							counter--;
							if (breastRows[index].lactationMultiplier < breastRows[counter].lactationMultiplier)
								index = counter;
						}
						temp2 = todo;
						changes += temp2;
						breastRows[index].lactationMultiplier += temp2;
						if (breastRows[index].lactationMultiplier < 0)
							breastRows[index].lactationMultiplier = 0;
					}
				}
			}
			return changes;
		}
		
		public function averageLactation():Number
		{
			if (breastRows.length == 0)
				return 0;
			var counter:Number = breastRows.length;
			var index:Number = 0;
			while (counter > 0)
			{
				counter--;
				index += breastRows[counter].lactationMultiplier;
			}
			return Math.floor(index / breastRows.length);
		}
		
		//Calculate bonus virility rating!
		//anywhere from 5% to 100% of normal cum effectiveness thru herbs!
		public function virilityQ():Number
		{
			if (!hasCock())
				return 0;
			var percent:Number = 0.01;
			if (cumQ() >= 250)
				percent += 0.01;
			if (cumQ() >= 800)
				percent += 0.01;
			if (cumQ() >= 1600)
				percent += 0.02;
			if (hasPerk("Bro Body") >= 0)
				percent += 0.05;
			if (hasPerk("Marae's Gift - Stud") >= 0)
				percent += 0.15;
			if (hasPerk("Fera's Boon - Alpha") >= 0)
				percent += 0.10;
			if (perkv1("Elven Bounty") > 0)
				percent += 0.05;
			if (hasPerk("Fertility+") >= 0)
				percent += 0.03;
			if (hasPerk("Pierced: Fertite") >= 0)
				percent += 0.03;
			if (hasPerk("One Track Mind") >= 0)
				percent += 0.03;
			if (hasPerk("Magical Virility") >= 0)
				percent += 5;
			//Messy Orgasms?
			if (hasPerk("Messy Orgasms") >= 0)
				percent += 0.03;
			if (percent > 1)
				percent = 1;
			return percent;
		}
		
		//Calculate cum return
		public function cumQ():Number
		{
			if (!hasCock())
				return 0;
			var quantity:Number = 0;
			//Base value is ballsize*ballQ*cumefficiency by a factor of 2.
			//Other things that affect it: 
			//lust - 50% = normal output.  0 = half output. 100 = +50% output.
			//trace("CUM ESTIMATE: " + int(1.25*2*cumMultiplier*2*(lust + 50)/10 * (hoursSinceCum+10)/24)/10 + "(no balls), " + int(ballSize*balls*cumMultiplier*2*(lust + 50)/10 * (hoursSinceCum+10)/24)/10 + "(withballs)");
			var lustCoefficient:Number = (lust + 50) / 10;
			//Pilgrim's bounty maxxes lust coefficient
			if (hasPerk("Pilgrim's Bounty") >= 0)
				lustCoefficient = 150 / 10;
			if (balls == 0)
				quantity = int(1.25 * 2 * cumMultiplier * 2 * lustCoefficient * (hoursSinceCum + 10) / 24) / 10;
			else
				quantity = int(ballSize * balls * cumMultiplier * 2 * lustCoefficient * (hoursSinceCum + 10) / 24) / 10;
			if (hasPerk("Bro Body") >= 0)
				quantity *= 1.3;
			if (hasPerk("Fertility+") >= 0)
				quantity *= 1.5;
			if (hasPerk("Messy Orgasms") >= 0)
				quantity *= 1.5;
			if (hasPerk("One Track Mind") >= 0)
				quantity *= 1.1;
			if (hasPerk("Marae's Gift - Stud") >= 0)
				quantity += 350;
			if (hasPerk("Fera's Boon - Alpha") >= 0)
				quantity += 200;
			if (hasPerk("Magical Virility") >= 0)
				quantity += 200;
			if(hasPerk("Fera's Boon - Seeder") >= 0) 
				quantity += 1000;
			//if(hasPerk("Elven Bounty") >= 0) quantity += 250;;
			quantity += perkv1("Elven Bounty");
			if (hasPerk("Bro Body") >= 0)
				quantity += 200;
			quantity += statusAffectv1("rut");
			quantity *= (1 + (2 * perkv1("Pierced: Fertite")) / 100);
			//trace("Final Cum Volume: " + int(quantity) + "mLs.");
			if (quantity < 0)
				//trace("SOMETHING HORRIBLY WRONG WITH CUM CALCULATIONS");
			if (quantity < 2)
				quantity = 2;
			return quantity;
		}
		
		//How many tentaclecocks?
		public function tentacleCocks():Number
		{
			var tentacleCockC:Number = 0;
			var counter:Number = cocks.length;
			while (counter > 0)
			{
				counter--;
				if (cocks[counter].cockType == CockTypesEnum.TENTACLE)
					tentacleCockC++;
			}
			return tentacleCockC;
		}
		
		//How many demoncocks?
		public function demonCocks():Number
		{
			var demonCockC:Number = 0;
			var counter:Number = cocks.length;
			while (counter > 0)
			{
				counter--;
				if (cocks[counter].cockType == CockTypesEnum.DEMON)
					demonCockC++;
			}
			return demonCockC;
		}
		
		//How many cat-cocks?
		public function catCocks():Number
		{
			var catCockC:Number = 0;
			var counter:Number = cocks.length;
			while (counter > 0)
			{
				counter--;
				if (cocks[counter].cockType == CockTypesEnum.CAT)
					catCockC++;
			}
			return catCockC;
		}
		
		//How many lizard/snake-cocks?
		public function lizardCocks():Number
		{
			var lizCockC:Number = 0;
			var counter:Number = cocks.length;
			while (counter > 0)
			{
				counter--;
				if (cocks[counter].cockType == CockTypesEnum.LIZARD)
					lizCockC++;
			}
			return lizCockC;
		}
		
		public function findFirstCockType(type:CockTypesEnum):Number
		{
			var index:Number = 0;
			if (cocks[index].cockType == type)
				return index;
			while (index < cocks.length)
			{
				index++;
				if (cocks[index].cockType == type)
					return index;
			}
			//trace("Creature.findFirstCockType ERROR - searched for cocktype: " + type + " and could not find it.");
			return 0;
		}
		
		/*public function findFirstCockType(type:Number = 0):Number
		{
			var index:Number = 0;
			if (cocks[index].cockType == type)
				return index;
			while (index < cocks.length)
			{
				index++;
				if (cocks[index].cockType == type)
					return index;
			}
			//trace("Creature.findFirstCockType ERROR - searched for cocktype: " + type + " and could not find it.");
			return 0;
		}*/
		
		public function displacerCocks():Number
		{
			var displacerWang:Number = 0;
			var counter:Number = cocks.length;
			while (counter > 0)
			{
				counter--;
				if (cocks[counter].cockType == CockTypesEnum.DISPLACER)
					displacerWang++;
			}
			return displacerWang;
		}
		
		//How many kangawangs
		public function kangaCocks():Number
		{
			var kangaWang:Number = 0;
			var counter:Number = cocks.length;
			while (counter > 0)
			{
				counter--;
				if (cocks[counter].cockType == CockTypesEnum.KANGAROO)
					kangaWang++;
			}
			return kangaWang;
		}
		
		//How many horsecocks?
		public function horseCocks():Number
		{
			var horseCockC:Number = 0;
			var counter:Number = cocks.length;
			while (counter > 0) {
				counter--;
				if (cocks[counter].cockType == CockTypesEnum.HORSE)
					horseCockC++;
			}
			return horseCockC;
		}
		
		//How many anemonecocks?
		public function anemoneCocks():Number
		{
			var anemoneCockC:Number = 0;
			var counter:Number = cocks.length;
			while (counter > 0)
			{
				counter--;
				if (cocks[counter].cockType == CockTypesEnum.ANEMONE)
					anemoneCockC++;
			}
			return anemoneCockC;
		}
		
		//Change first normal cock to horsecock!
		//Return number of affected cock, otherwise -1
		public function addHorseCock():Number
		{
			var counter:Number = cocks.length;
			while (counter > 0)
			{
				counter--;
				//Human - > horse
				if (cocks[counter].cockType == CockTypesEnum.HUMAN)
				{
					cocks[counter].cockType = CockTypesEnum.HORSE;
					return counter;
				}
				//Dog - > horse
				if (cocks[counter].cockType == CockTypesEnum.DOG)
				{
					cocks[counter].cockType = CockTypesEnum.HORSE;
					return counter;
				}
				//Tentacle - > horse
				if (cocks[counter].cockType == CockTypesEnum.TENTACLE)
				{
					cocks[counter].cockType = CockTypesEnum.HORSE;
					return counter;
				}
				//Demon -> horse
				if (cocks[counter].cockType == CockTypesEnum.DEMON)
				{
					cocks[counter].cockType = CockTypesEnum.HORSE;
					return counter;
				}
				//Catch-all
				if (cocks[counter].cockType.Index > 4)
				{
					cocks[counter].cockType = CockTypesEnum.HORSE;
					return counter;
				}
			}
			return -1;
		}
		
		// Note: DogCocks/FoxCocks are functionally identical. They actually change back and forth depending on some
		// of the PC's attributes, and this is recaluculated every hour spent at camp.
		// As such, delineating between the two is kind of silly.
		//How many dogCocks
		public function dogCocks():int
		{
			var dogCockC:Number = 0;
			var counter:Number = cocks.length;
			while (counter > 0)
			{
				counter--;
				if (cocks[counter].cockType == CockTypesEnum.DOG || cocks[counter].cockType == CockTypesEnum.FOX)
					dogCockC++;
			}
			return dogCockC;
		}
		
		//How many foxCocks
		public function foxCocks():int
		{
			
			return dogCocks();
		}

		

		//How many dragonCocks
		public function dragonCocks():int
		{
			var dragonCockC:Number = 0;
			var counter:Number = cocks.length;
			while (counter > 0)
			{
				counter--;
				if (cocks[counter].cockType == CockTypesEnum.DRAGON)
					dragonCockC++;
			}
			return dragonCockC;
		}
		
		//How many normalCocks
		public function normalCocks():int
		{
			var normalCockC:Number = 0;
			var counter:Number = cocks.length;
			while (counter > 0)
			{
				counter--;
				if (cocks[counter].cockType == CockTypesEnum.HUMAN)
					normalCockC++;
			}
			return normalCockC;
		}
		
		//TODO Seriously wtf. 1500+ calls to cockTotal, 340+ call to totalCocks. I'm scared to touch either.
		//How many cocks?
		public function cockTotal():Number {
			return (cocks.length);
		}
		
		//Alternate
		public function totalCocks():Number {
			return (cocks.length);
		}
		
		//Boolean alternate
		public function hasCock():Boolean {
			return (totalCocks() > 0);
		}
		
		public function homogenousCocks():Boolean {
			for (var i:int = totalCocks() - 1; i > 0; i--) {
				if (cocks[i].cockType == cocks[0].cockType) {
					return false;
				}
			}
			return true;
		}
		
		public function hasSockRoom():Boolean {
			for (var i:int = totalCocks() - 1; i >= 0; i--) {
				if (cocks[i].sock == "") {
					return true;
				}
			}
			return false
		}
		
		public function hasSock(arg:String = ""):Boolean {
			for (var i:int = totalCocks() - 1; i >= 0; i--) {
				if (cocks[i].sock != "" && (arg == "" || cocks[i].sock == arg)) {
					return true;
				}
			}
			return false
		}
		
		public function canAutoFellate():Boolean {
			return hasCock() && (cocks[0].cockLength >= 20);
		}
		
		//Deprecated
		public function canSelfSuck():Boolean {
			return canAutoFellate();
		}
		
		//PC can fly?
		public function canFly():Boolean {
			//web also makes false!
			if (hasStatusAffect("Web") >= 0)
				return false;
			return (wingType == 2 || wingType == 7 || wingType == 9 || wingType == 11 || wingType == 12);
		}
		
		//check for vagoo
		public function hasVagina():Boolean {
			return (vaginas.length > 0);
		}
		
		public function hasVirginVagina():Boolean {
			return (vaginas.length > 0 && vaginas[0].virgin);
		}
		
		public function manWoman(caps:Boolean = false):String {
			var title:String = "";
			switch (gender) {
			case GENDER_MALE:
				title = "man";
				break;
			case GENDER_FEMALE:
				title = "woman";
				break;
			case GENDER_HERM:
				title = "futa";
				break;
			case GENDER_NONE:
				title = "eunuch";
				break;
			}
			return maybeCapitalize(title, caps);
		}
		
		public function guyGirl(caps:Boolean = false):String {
			return maybeCapitalize(mf("Guy", "Girl"), caps);
		}
		
		public function mfn(male:String, female:String, neuter:String):String {
			return (gender == GENDER_NONE)
				? neuter
				: mf(male, female);
		}
		
		public function mf(male:String, female:String):String {
			switch (gender) {
			case GENDER_MALE:
				return male;
			case GENDER_FEMALE:
			case GENDER_HERM:
				return female;
			case GENDER_NONE:
				return (biggestTitSize() >= 3)
					? female 
					: male;
			}
			return failMaybe("ERROR, PROPER GENDER NOT FOUND");
		}
		
		private function maybeCapitalize(str:String, caps:Boolean = false) {
			return (caps) 
				? (str.charAt(0).toUpperCase() + str.substr(1))
				: str;
		}
		
		public function boyGirl(caps:Boolean = false):String {
			return maybeCapitalize(mf("boy","girl"), caps);
		}
		
		public function heShe(caps:Boolean = false):String {
			return maybeCapitalize(mfn("he", "she", "it"), caps);
		}
		
		public function himHer(caps:Boolean = false):String {
			return maybeCapitalize(mf("him","her"), caps);
		}
		
		public function maleFemale(caps:Boolean = false):String {
			return maybeCapitalize(mf("male","female"), caps);
		}
		
		public function hisHer(caps:Boolean = false):String {
			return maybeCapitalize(mf("his","her"), caps);
		}
		
		public function sirMadam(caps:Boolean = false):String {
			return maybeCapitalize(mf("sir", "madam"), caps);
		}
		
		//Create a cock. Default type is HUMAN
		public function createCock(clength:Number = 5.5, cthickness:Number = 1, ctype:CockTypesEnum=null):Boolean {
			if (cocks.length >= 10) {
				return false;
			}
			var newCock:Cock = new Cock(clength, cthickness, ctype);
			cocks.push(newCock);
			// Should be able to remove.
			return true;
		}
		
		//create vagoo
		public function createVagina(virgin:Boolean = true, vaginalWetness:Number = 1, vaginalLooseness:Number = 0):Boolean {
			if (vaginas.length >= 2) {
				return false;
			}
			var newVagina:VaginaClass = new VaginaClass(vaginalWetness,vaginalLooseness,virgin);
			vaginas.push(newVagina);
			return true;
		}
		
		//create a row of breasts
		public function createBreastRow(size:Number=0, nipplesPerBreast:Number=1):Boolean {
			if (breastRows.length >= 10) {
				return false;
			}
			var newBreastRow:BreastRowClass = new BreastRowClass();
			newBreastRow.breastRating = size;
			newBreastRow.nipplesPerBreast = nipplesPerBreast;
			breastRows.push(newBreastRow);
			return true;
		}
		
		public function genderCheck():void {
			if (hasCock() && hasVagina()) {
				gender = GENDER_HERM;
			} else if (hasCock()) {
				gender = GENDER_MALE;
			} else if (hasVagina()) {
				gender = GENDER_FEMALE;
			} else {
				gender = GENDER_NONE;
			}
		}
		
		//Remove cocks
		public function removeCock(arraySpot:int, totalRemoved:int):void {
			//Various Errors preventing action
			if (arraySpot < 0 || totalRemoved <= 0 || cocks.length == 0 || arraySpot > cocks.length - 1) {
				//trace("ERROR: removeCock called but arraySpot is negative or totalRemoved is 0.");
				return;
			}
			cocks.splice(arraySpot, totalRemoved);
			genderCheck();
		}
		
		//Remove vaginas
		public function removeVagina(arraySpot:int = 0, totalRemoved:int = 1):void {
			//Various Errors preventing action
			if (arraySpot < -1 || totalRemoved <= 0 || vaginas.length == 0 || arraySpot > vaginas.length - 1) {
				//trace("ERROR: removeVagina called but arraySpot is negative or totalRemoved is 0.");
				return;
			}
			vaginas.splice(arraySpot, totalRemoved);
			genderCheck();
		}
		
		//Remove a breast row
		public function removeBreastRow(arraySpot:int, totalRemoved:int):void {
			//Various Errors preventing action
			if (arraySpot < -1 || totalRemoved <= 0 || breastRows.length == 0 || arraySpot > breastRows.length - 1) {
				//trace("ERROR: removeBreastRow called but arraySpot is negative or totalRemoved is 0.");
				return;
			}
			breastRows.splice(arraySpot, totalRemoved);
		}
		
		// This is placeholder shit whilst I work out a good way of BURNING ENUM TO THE FUCKING GROUND
		// and replacing it with something that will slot in and work with minimal changes and not be
		// A FUCKING SHITSTAIN when it comes to intelligent de/serialization.
		public function fixFuckingCockTypesEnum():void {
			if (this.cocks.length < 0) {
				return;
			}
			for (var i:int = 0; i < this.cocks.length; i++) {
				this.cocks[i].cockType = CockTypesEnum.ParseConstantByIndex(this.cocks[i].cockType.Index);
			}
		}

		public function buttChangeNoDisplay(cArea:Number):Boolean {
			var stretched:Boolean = false;
			//cArea > capacity = autostreeeeetch half the time.
			if(cArea >= analCapacity() && rand(2) == 0) {
				if (ass.analLooseness < 5) {
					ass.analLooseness++;
				}
				stretched = true;
				//Reset butt stretchin recovery time
				if (hasStatusAffect("ButtStretched") >= 0) {
					changeStatusValue("ButtStretched",1,0);
				}
			}
			//If within top 10% of capacity, 25% stretch
			if(cArea < analCapacity() && cArea >= .9*analCapacity() && rand(4) == 0) {
				ass.analLooseness++;
				stretched = true;
			}
			//if within 75th to 90th percentile, 10% stretch
			if(cArea < .9 * analCapacity() && cArea >= .75 * analCapacity() && rand(10) == 0) {
				ass.analLooseness++;
				stretched = true;
			}
			//Anti-virgin
			if(ass.analLooseness == 0) {
				ass.analLooseness++;
				stretched = true;
			}
			//Delay un-stretching
			if(cArea >= .5 * analCapacity()) {
				//Butt Stretched used to determine how long since last enlargement
				if (hasStatusAffect("ButtStretched") < 0) {
					createStatusAffect("ButtStretched",0,0,0,0);
				} else { //Reset the timer on it to 0 when restretched.
					changeStatusValue("ButtStretched",1,0);
				}
			}
			if(stretched) {
				trace("BUTT STRETCHED TO " + (ass.analLooseness) + ".");
			}
			return stretched;
		}

		public function cuntChangeNoDisplay(cArea:Number):Boolean {
			if (vaginas.length == 0) {
				return false;
			}
			var stretched:Boolean = false;
			var devirgined:Boolean = false;
			if(hasPerk("Fera's Boon - Milking Twat") < 0 || vaginas[0].vaginalLooseness <= VAGINA_LOOSENESS_NORMAL) {
				//cArea > capacity = autostreeeeetch.
				if(cArea >= vaginalCapacity()) {
					if (vaginas[0].vaginalLooseness < VAGINA_LOOSENESS_LEVEL_CLOWN_CAR) {
						vaginas[0].vaginalLooseness++;
					}
					stretched = true;
				} else if(cArea >= .9 * vaginalCapacity() && rand(2) == 0) { //If within top 10% of capacity, 50% stretch
					vaginas[0].vaginalLooseness++;
					stretched = true;
				} else if(cArea >= .75 * vaginalCapacity() && rand(4) == 0) { //if within 75th to 90th percentile, 25% stretch
					vaginas[0].vaginalLooseness++;
					stretched = true;
				}
			}
			//If virgin
			if(vaginas[0].virgin) {
				vaginas[0].virgin = false;
				devirgined = true;
			}
			//Delay anti-stretching
			if(cArea >= .5 * vaginalCapacity()) {
				//Cunt Stretched used to determine how long since last enlargement
				if (hasStatusAffect("CuntStretched") < 0) {
					createStatusAffect("CuntStretched",0,0,0,0);
				} else { //Reset the timer on it to 0 when restretched.
					changeStatusValue("CuntStretched",1,0);
				}
			}
			if (stretched) {
				trace("CUNT STRETCHED TO " + (vaginas[0].vaginalLooseness) + ".");
			}
			return stretched;
		}

		public function bonusFertility():Number {
			var counter:Number = 0;
			if (hasPerk("heat") >= 0) {
				counter += perks[hasPerk("heat")].value1;
			}
			if (hasPerk("Fertility+") >= 0) {
				counter += 15;
			}
			if (hasPerk("Marae's Gift - Fertility") >= 0) {
				counter += 50;
			}
			if (hasPerk("Fera's Boon - Breeding Bitch") >= 0) {
				counter += 30;
			}
			if (hasPerk("Magical Fertility") >= 0) {
				counter += 10;
			}
			counter += perkv2("Elven Bounty");
			counter += perkv1("Pierced: Fertite");
			return counter;
		}

		public function totalFertility():Number {
			return (bonusFertility() + fertility);
		}

		public function isBiped():Boolean {
			//Naga/Centaur
			return !(isNaga() || isTaur() || isGoo());
		}

		public function isNaga():Boolean {
			return (lowerBody == 3);
		}

		public function isTaur():Boolean {
			return (lowerBody == 4 || lowerBody == 11);
		}

		public function isDrider():Boolean {
			return (lowerBody == 16);
		}

		public function isGoo():Boolean {
			return (lowerBody == 8);
		}

		public function legs():String {
			var select:Number = 0;
			switch (lowerBody) {
			case 0: 
			case 1: 
			case 2: 
				return "legs";
			case 3: 
				return "snake-like coils";
			case 4: 
				return "four legs";
			case 8: 
				return "mounds of goo";
			case 11: 
				return "cute pony-legs";
			case 12:
				return randomChoice("fuzzy, bunny legs", "fur-covered legs", "furry legs", "legs", "legs");
			case 13:
				return randomChoice("bird-like legs", "feathered legs", "legs", "legs", "legs");
			case 17:
				return randomChoice("fox-like legs", "vulpine legs", "legs", "legs");
			case 19:
				return randomChoice("raccoon-like legs", "legs", "legs", "legs");
			default:
				return "legs";
			}
		}

		public function skinFurScales():String {
			var skinzilla:String = "";
			//Adjectives first!
			if (skinAdj != "") {
				skinzilla += skinAdj + ", ";
			}
			//Fur handled a little differently since it uses haircolor
			skinzilla += (skinType == 1)
				? hairColor
				: skinTone;
			skinzilla += " " + skinDesc;
			return skinzilla;
		}

		public function leg():String {
			switch (lowerBody) {
			case 0: 
			case 1: 
			case 2: 
				return "leg";
			case 3: 
				return "snake-tail";
			case 4: 
				return "equine leg";
			case 8: 
				return "mound of goo";
			case 11: 
				return "cartoonish pony-leg";
			case 12:
				return randomChoice("fuzzy, bunny leg", "fur-covered leg", "furry leg", "leg", "leg");
			case 13:
				return randomChoice("bird-like leg", "feathered leg", "leg", "leg", "leg");
			case 17:
				return randomChoice( "fox-like leg","vulpine leg","leg", "leg");
			case 19:
				return randomChoice("raccoon-like leg", "leg", "leg", "leg", "leg");
			default:
				return "leg";
			}
		}

		public function feet():String{
			switch(lowerBody) {
			case 0: //0 - normal
				return "feet";
			case 1: //1 - hooves
				return "hooves";
			case 2: //2 - paws
				return "paws";
			case 3: //3 - snakelike body
				return "coils";
			case 4: //4 - centaur!
				return "hooves";
			case 5: //5 - demonic heels
				return "demonic high-heels";
			case 6: //6 - demonic claws
				return "demonic foot-claws";
			case 8: //8 - goo shit
				return "slimey cillia";
			case 11: 
				return "flat pony-feet";
			case 12: //BUNNAH
				return randomChoice("large bunny feet", "rabbit feet", "large feet", "feet", "feet");
			case 13:
				return randomChoice("taloned feet", "feet", "feet", "feet", "feet");
			case 14: 
				return "foot-paws";
			case 17:
				return randomChoice("paws", "soft, padded paws", "fox-like feet", "paws");
			case 19:
				return randomChoice("raccoon-like feet", "long-toed paws", "feet", "paws");
			default:
				return "feet";
			}
		}

		public function foot():String {
			switch (lowerBody) {
			case 0: //0 - normal
				return "foot";
			case 1: //1 - hooves
				return "hoof";
			case 2: //2 - paws
				return "paw";
			case 3: //3 - snakelike body
				return "coiled tail";
			case 4: //4 - centaur!
				return "hoof";
			case 8: //8 - goo shit
				return "slimey undercarriage";
			case 11: //PONY
				return "flat pony-foot";
			case 12: //BUNNAH
				return randomChoice("large bunny foot", "rabbit foot", "large foot", "foot", "foot");
			case 13: 
				return randomChoice("taloned foot", "foot", "foot", "foot", "foot");
			case 14: 
				return "foot-paw";
			case 17: 
				return randomChoice("paw", "soft, padded paw", "fox-like foot", "paw");
			case 19:  
				return randomChoice("raccoon-like foot", "long-toed paw", "foot", "paw");
			default:
				return "foot";
			}
		}

		public function canOvipositSpider():Boolean {
			return (eggs() >= 10 && hasPerk("Spider Ovipositor") >= 0 && isDrider() && tailType == 5);
		}

		public function canOvipositBee():Boolean {
			return (eggs() >= 10 && hasPerk("Bee Ovipositor") >= 0 && tailType == 6);
		}

		public function canOviposit():Boolean {
			return (canOvipositSpider() || canOvipositBee());
		}

		public function eggs():int {
			if (hasPerk("Spider Ovipositor") < 0 && hasPerk("Bee Ovipositor") < 0) {
				return -1;
			} else if (hasPerk("Spider Ovipositor") >= 0) {
				return perkv1("Spider Ovipositor");
			} else {
				return perkv1("Bee Ovipositor");
			}
		}

		public function addEggs(arg:int = 0):int {
			if (hasPerk("Spider Ovipositor") < 0 && hasPerk("Bee Ovipositor") < 0) {
				return -1;
			} else {
				if (hasPerk("Spider Ovipositor") >= 0) {
					addPerkValue("Spider Ovipositor", 1, arg);
					if (eggs() > 50) {
						changePerkValue("Spider Ovipositor", 1, 50);
					}
					return perkv1("Spider Ovipositor");
				}
				else {
					addPerkValue("Bee Ovipositor", 1, arg);
					if (eggs() > 50) {
						changePerkValue("Bee Ovipositor", 1, 50);
					}
					return perkv1("Bee Ovipositor");
				}
			}
		}

		public function dumpEggs():void {
			if (hasPerk("Spider Ovipositor") < 0 && hasPerk("Bee Ovipositor") < 0) {
				return;
			}
			setEggs(0);
			//Sets fertile eggs = regular eggs (which are 0)
			fertilizeEggs();
		}

		public function setEggs(arg:int = 0):int {
			if (hasPerk("Spider Ovipositor") < 0 && hasPerk("Bee Ovipositor") < 0) {
				return -1;
			} else {
				if (hasPerk("Spider Ovipositor") >= 0) {
					changePerkValue("Spider Ovipositor", 1, arg);
					if (eggs() > 50) {
						changePerkValue("Spider Ovipositor", 1, 50);
					}
					return perkv1("Spider Ovipositor");
				} else {
					changePerkValue("Bee Ovipositor", 1, arg);
					if (eggs() > 50) {
						changePerkValue("Bee Ovipositor", 1, 50);
					}
					return perkv1("Bee Ovipositor");
				}
			}
		}

		public function fertilizedEggs():int {
			if (hasPerk("Spider Ovipositor") < 0 && hasPerk("Bee Ovipositor") < 0) {
				return -1;
			} else if (hasPerk("Spider Ovipositor") >= 0) {
				return perkv2("Spider Ovipositor");
			} else {
				return perkv2("Bee Ovipositor");
			}
		}

		public function fertilizeEggs():int {
			if (hasPerk("Spider Ovipositor") < 0 && hasPerk("Bee Ovipositor") < 0) {
				return -1;
			} else if (hasPerk("Spider Ovipositor") >= 0) {
				changePerkValue("Spider Ovipositor", 2, eggs());
			} else {
				changePerkValue("Bee Ovipositor", 2, eggs());
			}
			return fertilizedEggs();
		}

		public function increaseCock(increase:Number, cockNum:Number):Number {
			if (hasPerk("Big Cock") >= 0) {
				increase *= perks[hasPerk("Big Cock")].value1;
			}
			if (hasPerk("Phallic Potential") >= 0) {
				increase *= 1.5;
			}
			if (hasPerk("Phallic Restraint") >= 0) {
				increase *= .25;
			}
			return cocks[cockNum].growCock(increase);
		}

		public function breastCup(rowNum:Number):String {
			return Appearance.BREAST_CUP_NAMES[Math.floor(breastRows[rowNum].breastRating)]
				|| "game-breaking cup";
			/*else if(breastRows[rowNum].breastRating < 20) return "watermelon-sized cup";
			 else if(breastRows[rowNum].breastRating < 35) return "tent-sized cup";
			 else if(breastRows[rowNum].breastRating < 60) return "truck-sized cup";
			 else if(breastRows[rowNum].breastRating < 100) return "parachute-sized cup";*/
			//return failMaybe("Error-Cup (breastSize Error Number: " + breastRows[rowNum].breastRating);
			//watermelon-sized
			//tent sized
			//truck sized
			//parachute sized
			//pool-sized
			//hanger-sized
			//town-sized
			//city-sized
			//state-sized
			//continent-sized
			//planet-sized
			//WTFISTHISWHYISNTITGAMEOVER?
		}

		public function bRows():Number {
			return breastRows.length;
		}

		public function totalBreasts():Number {
			var total:Number = 0;
			for (var i:int = breastRows.length - 1; i >= 0; i--) {
				total += breastRows[i].breasts;
			}
			return total;
		}

		public function totalNipples():Number {
			var total:Number = 0;
			for (var i:int = breastRows.length - 1; i >= 0; i--) {
				total += breastRows[i].nipplesPerBreast * breastRows[i].breasts;
			}
			return total;
		}

		public function smallestTitSize():Number {
			var index:Number = 0;
			for (var i:int = breastRows.length - 1; i >= 0; i-- ) {
				if (breastRows[index].breastRating > breastRows[i].breastRating) {
					index = i;
				}
			}
			return (breastRows.length == 0)
				? -1
				: breastRows[index].breastRating;
		}

		public function smallestTitRow():Number {
			var index:Number = 0;
			for (var i:Number = breastRows.length - 1; i >= 0 ; i-- ) {
				if (breastRows[index].breastRating > breastRows[i].breastRating) {
					index = i;
				}
			}
			return (breastRows.length == 0)
				? -1
				: index;
		}

		public function biggestTitRow():Number {
			var index:Number = 0;
			for (var i:int = breastRows.length - 1; i >= 0; i--) {
				if (breastRows[index].breastRating < breastRows[i].breastRating) {
					index = i;
				}
			}
			return index;
		}

		public function averageBreastSize():Number {
			var average:Number = 0;
			for (var i:int = breastRows.length - 1; i >= 0; i--) {
				average += breastRows[i].breastRating;
			}
			return (breastRows.length == 0)
				? 0
				: (average / breastRows.length);
		}

		public function averageCockThickness():Number {
			var average:Number = 0;
			for (var i:int = cocks.length - 1; i >= 0; i--) {
				average += cocks[i].cockThickness;
			}
			return (cocks.length == 0)
				? 0
				: (average / cocks.length);
		}

		public function averageNippleLength():Number {
			var average:Number = 0;
			for (var i:int = breastRows.length - 1; i >= 0; i--) {
				average += (breastRows[i].breastRating / 10 + .2);
			}
			return (breastRows.length == 0)
				? 0
				: (average / breastRows.length);
		}

		public function averageVaginalLooseness():Number {
			var average:Number = 0;
			for (var i:int = vaginas.length - 1; i >= 0; i--) {
				average += vaginas[i].vaginalLooseness;
			}
			return (vaginas.length == 0)
				? 2 
				: (average / vaginas.length);
		}

		public function averageVaginalWetness():Number {
			var average:Number = 0;
			for (var i:int = vaginas.length - 1 ; i >= 0; i--) {
				average += vaginas[i].vaginalWetness;
			}
			return (vaginas.length == 0)
				? 2
				: (average / vaginas.length);
		}

		public function averageCockLength():Number {
			var average:Number = 0;
			for (var i:int = cocks.length - 1; i >= 0; i-- ) {
				average += cocks[i].cockLength;
			}
			return (cocks.length == 0)
				? 0
				: (average / cocks.length);
		}

		public function canTitFuck():Boolean {
			var index:Number = 0;
			for (var i:int = breastRows.length - 1; i >= 0; i-- ) {
				if (breastRows[index].breasts < breastRows[i].breasts &&
					breastRows[i].breastRating > 3)
					index = i;
			}
			return (breastRows[index].breasts >= 2 && breastRows[index].breastRating > 3);
		}

		public function mostBreastsPerRow():Number {
			var index:Number = 0;
			for (var i:int = breastRows.length - 1; i >= 0; i--) {
				if (breastRows[index].breasts < breastRows[i].breasts) {
					index = i;
				}
			}
			return breastRows[index].breasts;
		}

		public function averageNipplesPerBreast():Number {
			var breasts:Number = 0;
			var nipples:Number = 0;
			for (var i:int = breastRows.length - 1; i >= 0; i--) {
				breasts += breastRows[i].breasts;
				nipples += breastRows[i].nipplesPerBreast * breastRows[i].breasts;
			}
			return (breasts == 0)
				? 0
				: Math.floor(nipples / breasts);
		}

		public function allBreastsDescript():String {
			return Appearance.allBreastsDescript(this);
		}

		public function SMultiCockDesc():String {
			return Appearance.cockMultiDesc(this, true, false);
		}

		public function vaginaDescript(idx:int = 0):String {
			return Appearance.vaginaDescript(this, 0)
		}

		public function nippleDescript(rowIdx:int):String {
			return Appearance.nippleDescription(this, rowIdx);
		}

		public function chestDesc():String {
			return Appearance.chestDesc(this);
		}

		public function clitDescript():String {
			return Appearance.clitDescription(this);
		}

		public function assholeOrPussy():String {
			return Appearance.assholeOrPussy(this);
		}

		public function multiCockDescriptLight():String {
			return Appearance.cockMultiLDescriptionShort(this);
		}

		public function ballsDescriptLight(forcedSize:Boolean = true):String {
			return Appearance.ballsDescription(forcedSize, true, this);
		}

		public function breastDescript(rowNum:int):String {
			//ERROR PREVENTION
			if (breastRows.length - 1 < rowNum) {
				return failMaybe("<b>ERROR, breastDescript() working with invalid breastRow</b>");
			}
			if (breastRows.length == 0) {
				return failMaybe("<b>ERROR, breastDescript() called when no breasts are present.</b>");
			}
			var descript:String = "";
			if (breastRows[rowNum].breastRating == 0) {
				return "flat breasts";
			}
			//50% of the time size-descript them
			if (rand(2) == 0) {
				descript += breastSize(breastRows[rowNum].breastRating);
			}
			//Nouns!
			var temp14:int = rand(10);
			if (temp14 == 0) {
				descript += "breasts";
			} else if (temp14 == 1) {
				descript += (breastRows[rowNum].lactationMultiplier > 2) 
					? "milk-udders"
					: "breasts";
			} else if (temp14 == 2) {
				if (breastRows[rowNum].lactationMultiplier > 1.5) {
					descript += "milky ";
				}
				descript += (breastRows[rowNum].breastRating > 4) 
					? "tits"
					: "breasts";
			} else if (temp14 == 3) {
				descript += "breasts";
			} else if (temp14 == 4 || temp14 == 5 || temp14 == 6) {
				descript += "tits";
			} else if (temp14 == 7) {
				if (breastRows[rowNum].lactationMultiplier < 1) {
					descript += "jugs";
				} else if (breastRows[rowNum].lactationMultiplier < 2.5) {
					descript += "milk jugs";
				} else {
					descript += "udders";
				}
			} else if (temp14 == 8) {
				descript += (breastRows[rowNum].breastRating > 6)
					? "love-pillows"
					: "boobs";
			} else if (temp14 == 9) {
				descript += (breastRows[rowNum].breastRating > 6)
					? "tits"
					: "breasts";
			}
			return descript;
		}

		private function breastSize(val:Number):String {
			return Appearance.breastSize(val);
		}
		
		public static function failMaybe(errorDesc:String):String {
			if (CoC_Settings.haltOnErrors) {
				throw new Error(errorDesc);
			}
			return errorDesc;
		}
	}
}


