function Initialize()
    counter = 0
end

function Update()
    if counter == 4 then
        counter = 0
    else
        counter = counter + 1
    end

    img_path = ""
    if counter == 0 then
        img_path = "#@#\\WeatherIcons\\sunny.png"
    elseif counter == 1 then
        img_path = "#@#\\WeatherIcons\\partly_cloudy.png"
    elseif counter == 2 then
        img_path = "#@#\\WeatherIcons\\cloudy.png"
    elseif counter == 3 then
        img_path = "#@#\\WeatherIcons\\drizle.png"
    else
        img_path = "#@#\\WeatherIcons\\rainy.png"
    end

    SKIN:Bang('!SetOption WeatherIcon ImageName "' .. img_path .. '"')

    --TODO: randomize temperature as proof of concept
    tmpr = math.random(-40,40)
    SKIN:Bang('!SetOption Temperature Text "'..tmpr..' degrees"')
end
