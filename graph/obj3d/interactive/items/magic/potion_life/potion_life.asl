ON INVENTORYUSE {
  IF (^player_maxlife > 0) {
    IF (^player_life == ^player_maxlife) {
      // TODO: inform the user by playing a sound or writing a text to the HUD, that potion drinking was prevented
      // random: player_no.wav or player_no2.wav
      REFUSE
    }
  }

  PLAY "potion_life"
  SPECIALFX HEAL 25
  SPELLCAST -msf 1 HEAL PLAYER
  SETINTERACTIVITY NONE
  TIMERreplace -m 1 500 SETINTERACTIVITY YES REPLACEME "\\provisions\\bottle_empty\\bottle_empty"
  ACCEPT
}

ON INIT {
  SETNAME [description_potion]
  SET_MATERIAL GLASS
  SET_GROUP PROVISIONS
  SET_PRICE 150
  PLAYERSTACKSIZE 10
  SET_STEAL 50
  SET_WEIGHT 0
  SETEQUIP identify_value 30
  ACCEPT
}

ON IDENTIFY {
  SETNAME [description_lifepotion]
  SET_PRICE 280
  ACCEPT
}

ON EMPTY {
  REPLACEME "\\provisions\\bottle_empty\\bottle_empty"
  ACCEPT
}
