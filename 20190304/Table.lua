-- print("Hello Lua")
-- num=100
-- print(num)

-- function sayHello()
--     print("Hello Lua")
-- end

-- sayHello()

-- function max(a,b)
--     if a>b then
--         return a
--     else
--         return b
--     end
-- end

-- max(2,3)

Config = {word = "Hello", num = 200}
Config.word = "Hello"
Config.num = 100
Config["name"]="Lua"

function getNum()
    return Config.num
end

getNum()
for key,var in pairs(Config) do
    print(key,var)
end