# Introduction to Shaders

Welcome! This is a crash course into shader programming. My hope is that these code examples can help ease you into the very rewarding, but often alchemic and mysterious creation of fragment shaders.

## Set up

Graphics pipeline programming is very daunting and in an effort to reduce cognitive overhead, I've opted for an _as simple_ environment as possible. However, that means that it does impose some requirements. They are as follows:

1. Uses (VS Code)[https://code.visualstudio.com/]
2. Uses the VS Code Extensionl (GLSL Canvas)[https://marketplace.visualstudio.com/items?itemName=circledev.glsl-canvas]

If you follow these requirements you will get a hot reloading local environment without the hassle in project generation, build configurations, webGL set up, uniform management & loading, etc..

Even if you choose not to leverage these tools, you can still view the glsl files as examples.

## Organization

Each example has it's own file, intended to be viewed and understood sequentially. If there are unique or specific settings pertaining to a file, there will be a `json` file inside the `.vscode` directory. Just rename the file from `_[file number]_settings.json` to `settings.json` and everything the GLSL Canvas extension needs for that file will be in place.

All uniforms and attributes are covered in the (extension documentation)[https://github.com/actarian/vscode-glsl-canvas]. All necessary texture files will be found in the `textures` directory.

When inspecting the `glsl` files, use the `Show glslCanvas` command that the extention exposes to view the shader file's output. Additionally, you'll want to show the controls interface, you can do this with the 'option' key or clicking on the 4th menu option (the bar graph looking icon).
