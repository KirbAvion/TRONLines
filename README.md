# TRONLines
A dynamic, expandable, minimally-invasive emissive texture shader for armor trims (Minecraft 23w04a/1.19.4).

Sample images that I can't be bothered to embed:
https://imgur.com/a/6C5DNtM

Here's the basics: Setting a trim material palette's alpha below 255 makes it emissive. How *far* below 255 you set it determines how bright it gets; 254 being the highest and somewhere around 10 being the dimmest. I mean, technically, *1* would be the lowest, but if you can tell the difference... well, I understand *NORAD* is hiring.

The end result in the base pack is that amethyst, redstone, and emerald armor trims glow in the dark, and everything else retains its standard shading. This can be tweaked to the user's preference by changing the aforementioned textures. It *should* be indefinitely expandable and compatible with trim materials and textures added by datapacks, as long as the textures are in the right format. Doesn't need mods or Optifine or Iris or whatever the kids are using these days to run, and it *probably* won't break if you install one of those anyway. Just a regular resource pack that runs off the built-in vanilla core shaders.

The one caveat, of course, is that while armor trim textures don't support transparency, and thus render more or less the same regardless of the palette alpha, the *item* textures *do*. So if you set your emissive brightness *too* low, it'll start to affect the trim color on the item sprite. But hey, what can you do.

Technically you can also do this with, just, regular armor textures, if you want your leather tunic to glow in the dark. But *should* you?

This project started out hacking around with Ancientkingg's fancyPants shader, which worked pretty well until I almost crashed my game. Nonetheless, the original shader is worth checking out. https://github.com/Ancientkingg/fancyPants

After the aforementioned incident, I switched to using a method I first saw in a pack by ShockMicro. I have no idea if it originated there, but again, it bears mention. https://github.com/ShockMicro/VanillaDynamicEmissives



Should you decide for whatever reason that you'd like to include TRON Lines in your resource pack, I offer it available for use as-is with two stipulations:
1) There's an attribution tag in the core shader file that I'd prefer stay in there, mostly because it attributes the pack I stole the idea from.
2) As I arrived at the end product largely through trial and error, and barely understand its underlying principles myself, I cannot at this time offer any tech support in the event something goes horribly wrong.
