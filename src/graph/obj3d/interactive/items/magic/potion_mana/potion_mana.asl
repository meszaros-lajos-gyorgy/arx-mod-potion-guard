ON INVENTORYUSE {
  // check if we are in Arx Libertatis 1.3+
  IF (^player_maxmana > 0) {
    IF (^player_mana == ^player_maxmana) {
      HEROSAY "mana full"
      SPEAK -p [player_no] NOP
      REFUSE
    }
  }

  PLAY "potion_mana"
  SPECIALFX MANA 25
  SETINTERACTIVITY NONE
  TIMERreplace 1 1 SETINTERACTIVITY YES REPLACEME "\\provisions\\bottle_empty\\bottle_empty"
  ACCEPT
}

ON INIT {
  SETNAME [description_potion]
  SET_MATERIAL GLASS
  SET_GROUP PROVISIONS
  SET_PRICE 150
  PLAYERSTACKSIZE 10
  SETEQUIP identify_value 35
  SET_STEAL 50
  SET_WEIGHT 0
  ACCEPT
}

ON IDENTIFY {
  SETNAME [description_blu_potion]
  SET_PRICE 350
  ACCEPT
}
