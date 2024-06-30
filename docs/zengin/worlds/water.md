# Water

Water receives special treatment in Gothic 1 and 2.

## Water Modeling

Water is created in Gothic using a double-sided tarp that is assigned a water material. This means you have to create a surface with the normal pointing upwards and the same surface facing downwards again. There must be a floor under the water tarp, otherwise you won't be able to swim. It also makes sense not to connect the double-sided water tarpaulin to the coast, otherwise the coast will follow the wave movement of the water. It's best to let the water run a little into the coast so that the wave movements don't create holes between the water and the coast.

## Segmentation

You should segment (divide) the water tarp for the following reasons:

- **Performance**: Areas are always calculated in their entirety. If the area is too large, unnecessary areas (e.g. under an island) are also calculated, which additionally deducts computing power. By segmenting you can delete areas of water that are not visible.
- **Display error**: The entire area is also displayed. However, if the end is out of sight, the water may flicker.
- **Wave movement**: The up and down movement of the water takes place at the corners of the water surfaces. If you have smaller areas, the waves are also more precise.
- In addition, an area that is too large may not work at all, meaning you can walk on it or even fall over.

Water is a big power drain. It is advisable to make the segments towards the coast smaller and smaller so that an unnecessary number of areas in the distance do not have to be calculated, but the wave movement on the coast still looks fine enough. Here are two examples of possible segmentation of the water surface (in Blender):

![Water Segmentation Examples](../../assets/images/segmente.gif)

In the example on the left, the water area was created from squares that get smaller the closer they are to the coast. Since Gothic automatically divides the squares into triangles anyway, the example on the right makes even more sense. The water surface was created from a hexagon and consists of whole or halved equilateral triangles. In addition, the outer boundary of the water is at a more even distance from the coast. In both examples, the segments in the middle of the island are deleted.

## Water Material Properties

To be able to swim in water, you need to place a water material on the double-sided water surfaces. In addition, by default, it causes a reflection of the sky, a low transparency of the water surface, an animation of the water texture, and a wave movement. You can also place different water materials on the top and bottom. You can regulate and control the individual effects in the [zCMaterial](Classes/zCMaterial.md) settings:

- [texAniFPS](Classes/zCMaterial.md#texanifps) - Speed at which the animation of the texture should be played.
- [texAniMapDir](Classes/zCMaterial.md#texanimapdir) - Speed at which the texture should be moved in the x or y direction (useful for waterfalls and rivers). This also regulates the player's movement in the water.

The following parameters have only been available since Gothic 2:

- [environmentalMapping](Classes/zCMaterial.md#environmentalmapping) - The software shader is switched on here, which simulates a reflection of the surface (useful for water and metal).
- [environmentalMappingStrength](Classes/zCMaterial.md#environmentalmappingstrenght) - Strength of surface reflection. The maximum value is 1.
- [waveMode](Classes/zCMaterial.md#wavemode) - Type of wave motion.
- [waveSpeed](Classes/zCMaterial.md#wavespeed) - Wave speed. The higher the value, the faster the waves move.
- [waveMaxAmplitude](Classes/zCMaterial.md#wavemaxamplitude) - Wave height. 
- [waveGridSize](Classes/zCMaterial.md#wavegridsize) - Wave expansion.

!!! Note
    This article is mostly a translation of the one posted on [Gothic Editing Wiki](https://wiki.worldofgothic.de/doku.php?id=quickstart:zengin:wasser)