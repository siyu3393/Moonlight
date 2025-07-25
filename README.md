# Moonlight Shaders

A high-quality Minecraft shader pack that enhances the visual experience with realistic lighting, atmospheric effects, and improved materials.

## Features

### 🌟 Lighting & Shadows
- **Realtime Shadows**: Dynamic shadows that change based on terrain and sun/moon position
- **Entity Shadows**: Shadows cast by entities and blocks
- **Improved Block Lighting**: Enhanced lighting system for better visual quality

### 🌊 Water Effects
- **Advanced Water Rendering**: Multiple water styles with customizable quality
- **Water Refraction**: Realistic light bending through water
- **Water Caustics**: Dynamic underwater light patterns
- **Water Foam**: Realistic foam effects on water surfaces

### 🌸 Waving Effects
- **Waving Foliage**: Animated grass, flowers, and plant movement
- **Waving Leaves**: Realistic tree leaf animation
- **Waving Water**: Dynamic water surface movement
- **Indoor Detection**: Automatically disables waving effects indoors

### ✨ Glowing Materials
- **Glowing Ores**: Configurable glow effects for all ore types
- **Emissive Blocks**: Enhanced light emission for redstone, lapis, and other blocks
- **Armor Trim Glow**: Special effects for armor trims

### 🎨 Post-Processing
- **Bloom**: Soft light bleeding effects
- **Motion Blur**: Realistic camera movement blur
- **Vignette**: Subtle screen edge darkening
- **Underwater Distortion**: Immersive underwater visual effects
- **Lens Flare**: Realistic sun glare effects

## Shader Profiles

The shader comes with several pre-configured profiles:

- **🟢 Default**: Balanced settings for most users
- **🔴 Potato**: Optimized for lower-end hardware
- **🟣 Vibrant**: Enhanced colors and contrast
- **🟡 Clarity**: Crisp, clear visuals
- **🔵 Fantasy**: Magical, stylized appearance
- **🟠 Voyager**: Classic shader look
- **⚫ Horror**: Dark, atmospheric theme

## Installation

1. Install [OptiFine](https://optifine.net) or [Iris](https://www.irisshaders.dev)
2. Download the Moonlight shader pack
3. Place the shader pack in your `.minecraft/shaderpacks/` folder
4. Launch Minecraft and select the shader.s

## Configuration

### Settings Categories

- **⚡ Lighting**: Shadow quality, exposure, and lighting effects
- **🎭 Post Processing**: Atmosphere and camera effects
- **🧱 Materials**: Block textures and material properties
- **🌊 Water**: Water rendering and effects
- **✨ Glowing Stuff**: Emissive block configurations
- **🌿 Waving Textures**: Animation settings

### Language Support

- English (en_US)
- Vietnamese (vi_VN)

## Performance Tips

- Use the **Potato** profile for better performance on older hardware
- Disable **Realtime Shadows** if experiencing low FPS
- Reduce **Water Quality** on lower-end systems
- Turn off **Motion Blur** and **Bloom** for better performance

## Block Support

The shader includes support for:
- All vanilla Minecraft blocks
- Modded blocks (configurable via `block.properties`)
- Custom ore detection for modded ores
- Special handling for leaves, foliage, and terrain blocks

## File Structure

```
shaders/
├── block.properties          # Block ID mappings
├── entity.properties         # Entity configurations
├── item.properties          # Item rendering settings
├── dimension.properties     # Dimension-specific settings
├── settings.glsl           # Main shader settings
├── shaders.properties      # Shader configuration
├── lang/                   # Language files
├── lib/                    # Shader libraries
├── program/               # Shader programs
└── world-1/, world0/, world1/  # Dimension-specific shaders
```

## Compatibility

- **Minecraft Version**: 1.13+ (with legacy support)
- **OptiFine**: Latest version recommended
- **Iris**: Supported
- **Forge/Fabric**: Compatible with both mod loaders

## License

This project is licensed under the Complementary License. See `LICENSE` and `licenses/Complementary License.txt` for details.

## Credits

Based on the Complementary shader framework with custom enhancements and optimizations.

---

*Enhance your Minecraft experience with Moonlight Shaders - where realism meets performance.*