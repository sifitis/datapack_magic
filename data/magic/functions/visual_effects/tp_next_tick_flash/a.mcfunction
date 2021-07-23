
  # -- Execute by the server after being scheduled for 1 tick later -- #
  
  # -- The point of this is the get a teleport flash on the outbound side of the TP, otherwise it doesn't work -- #
  
  # -- Note that because the animation actually requires 2 ticks when entering unloaded terrain, a tertiary function
  #    was added in so that I could achieve a 2 tick delay without risking an accidental overwrite using the scheduled
  #    function should a second teleport engage 1t after the first one.
  
schedule function magic:visual_effects/tp_next_tick_flash/b 1t append
