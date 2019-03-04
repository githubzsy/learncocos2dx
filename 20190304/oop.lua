-- 函数闭包实现面向对象
function People(name)
    local self = {}
    local function init()
        self.name = name
    end
    self.sayHi = function()
        print("Hello " .. self.name)
    end
    init()
    return self
end

local p = People("Zhangsan")
p.sayHi()

function Man(name)
    local self = People(name)
    self.sayHello = function()
        print("Hi" .. self.name)
    end
    return self
end

local m = Man("Lisi")
m.sayHello()