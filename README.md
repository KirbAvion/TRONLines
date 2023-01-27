# TRONLines
A dynamic, expandable, minimally-invasive emissive texture shader for armor trims (23w04a).

Sample images that I can't be bothered to embed:
https://imgur.com/a/6C5DNtM

Here's the basics: Each material's palette texture has been updated to include a ninth pixel that controls the emission color. If you don't want the material to glow, just set the last pixel to be purely transparent. For a standard emissive glow, set it to #FFFFFF. You can also set it to any other solid color to tint the emissive texture, but your results may vary.

The end result in the base pack is that amethyst, redstone, and emerald armor trims glow in the dark, and everything else retains its standard shading. This can be tweaked to the user's preference by changing the aforementioned pixels in the aforementioned textures. It *should* be indefinitely expandable and compatible with trim materials and textures added by datapacks, as long as the textures are in the right format. Doesn't need mods or Optifine or Iris or *whatever* the kids are using these days to run, and it *probably* won't break if you install one of those anyway. Just a regular resource pack that runs off the built-in vanilla core shaders.

For the more technically inclined, here's how you make your textures compatible: Any palettes under assets/minecraft/textures/trims/color_palettes should be expanded to 9x1, with the far-rightmost pixel either fully transparent (for solid colors) or solid #FFFFFF (for emissive materials). The base trim_palette.png should also be expanded to 9x1 with the far-rightmost pixel solid #FFFFFF. Then, add a single white pixel to the top-leftmost corner of your armor trim textures under assets/minecraft/textures/trims/models/armor, which just tells the shader it should try to apply emissive textures to that overlay. (Technically you can also do this with, just, regular armor textures, if you want your leather tunic to glow in the dark. But *should* you?)

This project started out hacking around with Ancientkingg's fancyPants shader. Turns out very little of that pack was actually applicable to the project at hand, and the few principles they do share have been hammered apart beyond recognition, but it nonetheless bears acknowledgement. Or perhaps blame, should this effort prove misguided. https://github.com/Ancientkingg/fancyPants


Should you decide for whatever reason that you'd like to include TRON Lines in your resource pack, I offer it available for use as-is with two stipulations:
1) There's an attribution tag in the core shader file that I'd prefer stay in there. Attribution beyond that is largely unnecessary.
2) As I arrived at the end product largely through trial and error, and barely understand its underlying principles myself, I cannot at this time offer any tech support in the event something goes horribly wrong.
