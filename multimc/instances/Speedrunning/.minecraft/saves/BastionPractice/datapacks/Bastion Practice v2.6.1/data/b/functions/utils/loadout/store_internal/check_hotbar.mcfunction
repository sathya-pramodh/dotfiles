# Check whether slot number matches a hotbar slot:
execute if score #slot_count bastiongen matches 1.. if score #slot bastiongen matches 0..8 run function b:utils/loadout/store_internal/found_hotbar