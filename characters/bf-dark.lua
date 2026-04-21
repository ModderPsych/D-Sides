local char = 'boyfriend'

function onCreatePost()
    if getPropertyFromClass('backend.ClientPrefs', 'data.lowQuality') then
        return
    end

    setProperty(char .. '.color', getColor(songName))

    initLuaShader('DropShadowShader')
    setSpriteShader(char, 'DropShadowShader')

    setShaderFloat(char, 'distance', getDistance(songName))
    setShaderFloat(char, 'angle', getAngle(songName))

    setShaderFloatArray(char, 'color', {0.56, 0.44, 0.34, 0.56})

    setShaderFloatArray(char, 'uFrameBounds', {-0.2, -1.5, 2, 2})
end

function getColor(thing)
    if thing == 'blammed-(d)' then
        return 0xffb5ade9
    end
    return 0xff7266c1
end

function getDistance(thing)
    if thing == 'blammed-(d)' then
        return 12
    end
    return 15
end

function getAngle(thing)
    if thing == 'blammed-(d)' then
        return 200
    end
    return 135
end
