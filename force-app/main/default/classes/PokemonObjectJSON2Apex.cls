//
// Generated by JSON2Apex http://json2apex.herokuapp.com/
//
// The supplied json has fields with names that are not valid in apex
// and so can only be parsed with explicitly generated code, this option
// was auto selected for you.

public class PokemonObjectJSON2Apex {

	public List<Abilities> abilities {get;set;} 
	public Integer height {get;set;} 
	public Integer id {get;set;} 
	public List<Moves> moves {get;set;} 
	public String name {get;set;} 
	public Integer order {get;set;} 
	public Sprites sprites {get;set;} 
	public List<Stats> stats {get;set;} 
	public List<Types> types {get;set;} 
	public Integer weight {get;set;} 

	
	public class Types {
		public Integer slot {get;set;} 
		public Ability type {get;set;} 

		public Types(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'slot') {
							slot = parser.getIntegerValue();
						} else if (text == 'type') {
							type = new Ability(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Types consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}

	public class Moves {
		public Ability move {get;set;} 

		public Moves(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'move') {
							move = new Ability(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Moves consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Sprites {
		public Other other {get;set;} 

		public Sprites(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'other') {
							other = new Other(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Sprites consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Dream_world {
		public String front_default {get;set;} 
		public Object front_female {get;set;} 

		public Dream_world(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'front_default') {
							front_default = parser.getText();
						} else if (text == 'front_female') {
							front_female = parser.readValueAs(Object.class);
						} else {
							System.debug(LoggingLevel.WARN, 'Dream_world consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Home {
		public String front_default {get;set;} 
		public Object front_female {get;set;} 
		public String front_shiny {get;set;} 
		public Object front_shiny_female {get;set;} 

		public Home(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'front_default') {
							front_default = parser.getText();
						} else if (text == 'front_female') {
							front_female = parser.readValueAs(Object.class);
						} else if (text == 'front_shiny') {
							front_shiny = parser.getText();
						} else if (text == 'front_shiny_female') {
							front_shiny_female = parser.readValueAs(Object.class);
						} else {
							System.debug(LoggingLevel.WARN, 'Home consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Ability {
		public String name {get;set;} 

		public Ability(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'name') {
							name = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Ability consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Abilities {
		public Ability ability {get;set;}

		public Abilities(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'ability') {
							ability = new Ability(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Abilities consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Official_artwork {
		public String front_default {get;set;} 
		public String front_shiny {get;set;} 

		public Official_artwork(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'front_default') {
							front_default = parser.getText();
						} else if (text == 'front_shiny') {
							front_shiny = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Official_artwork consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}

	public class Stats {
		public Integer base_stat {get;set;} 
		public Integer effort {get;set;} 
		public Ability stat {get;set;} 

		public Stats(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'base_stat') {
							base_stat = parser.getIntegerValue();
						} else if (text == 'effort') {
							effort = parser.getIntegerValue();
						} else if (text == 'stat') {
							stat = new Ability(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Stats consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Other {
		public Dream_world dream_world {get;set;} 
		public Home home {get;set;} 
		public Official_artwork official_artwork {get;set;} // in json: official-artwork

		public Other(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'dream_world') {
							dream_world = new Dream_world(parser);
						} else if (text == 'home') {
							home = new Home(parser);
						} else if (text == 'official-artwork') {
							official_artwork = new Official_artwork(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Other consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
		
	public PokemonObjectJSON2Apex() {}

	public PokemonObjectJSON2Apex(JSONParser parser) {
		while (parser.nextToken() != System.JSONToken.END_OBJECT) {
			if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
				String text = parser.getText();
				if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
					if (text == 'abilities') {
						abilities = arrayOfAbilities(parser);
					} else if (text == 'height') {
						height = parser.getIntegerValue();
					}  else if (text == 'id') {
						id = parser.getIntegerValue();
					} else if (text == 'moves') {
						moves = arrayOfMoves(parser);
					} else if (text == 'name') {
						name = parser.getText();
					} else if (text == 'order') {
						order = parser.getIntegerValue();
					} else if (text == 'sprites') {
						sprites = new Sprites(parser);
					} else if (text == 'stats') {
						stats = arrayOfStats(parser);
					} else if (text == 'types') {
						types = arrayOfTypes(parser);
					} else if (text == 'weight') {
						weight = parser.getIntegerValue();
					} else {
						System.debug(LoggingLevel.WARN, 'PokemonObjectJSON2Apex consuming unrecognized property: '+text);
						consumeObject(parser);
					}
				}
			}
		}
	}

	public static void consumeObject(System.JSONParser parser) {
		Integer depth = 0;
		do {
			System.JSONToken curr = parser.getCurrentToken();
			if (curr == System.JSONToken.START_OBJECT || 
				curr == System.JSONToken.START_ARRAY) {
				depth++;
			} else if (curr == System.JSONToken.END_OBJECT ||
				curr == System.JSONToken.END_ARRAY) {
				depth--;
			}
		} while (depth > 0 && parser.nextToken() != null);
	}

    private static List<Moves> arrayOfMoves(System.JSONParser p) {
        List<Moves> res = new List<Moves>();
        if (p.getCurrentToken() == null) p.nextToken();
        while (p.nextToken() != System.JSONToken.END_ARRAY) {
            res.add(new Moves(p));
        }
        return res;
    }

    private static List<Abilities> arrayOfAbilities(System.JSONParser p) {
        List<Abilities> res = new List<Abilities>();
        if (p.getCurrentToken() == null) p.nextToken();
        while (p.nextToken() != System.JSONToken.END_ARRAY) {
            res.add(new Abilities(p));
        }
        return res;
    }

    private static List<Stats> arrayOfStats(System.JSONParser p) {
        List<Stats> res = new List<Stats>();
        if (p.getCurrentToken() == null) p.nextToken();
        while (p.nextToken() != System.JSONToken.END_ARRAY) {
            res.add(new Stats(p));
        }
        return res;
    }

    private static List<Types> arrayOfTypes(System.JSONParser p) {
        List<Types> res = new List<Types>();
        if (p.getCurrentToken() == null) p.nextToken();
        while (p.nextToken() != System.JSONToken.END_ARRAY) {
            res.add(new Types(p));
        }
        return res;
    }

	public PokemonObjectJSON2Apex parse(String json) {
		return (PokemonObjectJSON2Apex) System.JSON.deserialize(json, PokemonObjectJSON2Apex.class);
	}
}