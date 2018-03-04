// Block of Charcoal Unification
recipes.remove(<actuallyadditions:block_misc:5>);
recipes.remove(<chisel:block_charcoal2:1>);
recipes.remove(<forestry:charcoal>);

// Add Forestry's Block of Charcoal to Ore Dictionary
<ore:blockCharcoal>.add(<forestry:charcoal>);

// Fix an exploit allowing you to get leather with a Thermal Expansion Sawmill and Pam's HarvestCraft Woven Cotton
recipes.remove(<minecraft:leather_helmet>);
recipes.addShaped(<minecraft:leather_helmet> * 1, [
  [<ore:leather>, <ore:leather>, <ore:leather>],
  [<ore:leather>, null, <ore:leather>]
]);
recipes.remove(<minecraft:leather_chestplate>);
recipes.addShaped(<minecraft:leather_chestplate> * 1, [
  [<ore:leather>, null, <ore:leather>],
  [<ore:leather>, <ore:leather>, <ore:leather>],
  [<ore:leather>, <ore:leather>, <ore:leather>]
]);
recipes.remove(<minecraft:leather_leggings>);
recipes.addShaped(<minecraft:leather_leggings> * 1, [
  [<ore:leather>, <ore:leather>, <ore:leather>],
  [<ore:leather>, null, <ore:leather>],
  [<ore:leather>, null, <ore:leather>]
]);
recipes.remove(<minecraft:leather_boots>);
recipes.addShaped(<minecraft:leather_boots> * 1, [
  [<ore:leather>, null, <ore:leather>],
  [<ore:leather>, null, <ore:leather>]
]);

// Charged Certus Crystal > Certus Dust - Should be there by default but for some reason isn't
mods.thermalexpansion.Pulverizer.addRecipe(<appliedenergistics2:material:2>, <appliedenergistics2:material:1>, 4000);

// Fix bug where casting cobalt blocks gives chisel block rather than tinkers' construct one
mods.tconstruct.Casting.removeBasinRecipe(<chisel:blockcobalt>, <liquid:cobalt>);
mods.tconstruct.Casting.addBasinRecipe(<tconstruct:metal>, null, <liquid:cobalt>, 1296);

// Fix broken bread recipe - How did this even happen?
recipes.addShaped(<minecraft:bread> * 1, [[<ore:cropWheat>, <ore:cropWheat>, <ore:cropWheat>]]);

// Fix wood gear recipe in grindstone
recipes.remove(<appliedenergistics2:material:40>);

// Remove ExU2 Sickles to prevent overlap with Thermal Foundation Sickles
recipes.remove(<extrautils2:sickle_wood>);
recipes.remove(<extrautils2:sickle_stone>);
recipes.remove(<extrautils2:sickle_iron>);
recipes.remove(<extrautils2:sickle_gold>);
recipes.remove(<extrautils2:sickle_diamond>);

// Items removed due to bugs
recipes.remove(<extrautils2:bagofholding>);
<extrautils2:bagofholding>.addTooltip(format.darkRed("Disabled due to bug, sorry."));
recipes.remove(<nuclearcraft:water_source>);
<nuclearcraft:water_source>.addTooltip(format.darkRed("Disabled due to bug, sorry."));
recipes.remove(<extrautils2:quarry>);
recipes.remove(<extrautils2:quarryproxy>);

