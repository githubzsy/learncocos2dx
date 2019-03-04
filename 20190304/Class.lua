function clone(tab)
    local ins = {}
    for key, var in pairs(tab) do
        ins[key] = var
    end
    return ins
end

-- 把tab复制到dist
function copy(dist, tab)
    for key, var in pairs(tab) do
        dist[key] = var
    end
end

People = {}
People.age = 12

People.sayHi = function(self)
    print(self.name)
end

People.new = function(name)
    local self = clone(People)
    self.name = name
    return self
end
local p = People.new("nihao")
p.sayHi(p)
-- p:sayHi==p.sayHi(p)
p:sayHi()

Man = {}
Man.new = function(name)
    local self = People.new(name)
    copy(self, Man)
    return self
end

Man.sayHi = function(self)
    print(self.name.." say hi")
end

local m = Man.new("lisi")
m:sayHi()
