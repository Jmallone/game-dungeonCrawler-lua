local Monster = {}
Monster.__index = Monster

function Monster:new()
  
    local monsters = {

            m = {
                
                name = "Ghost of Dead",
                msg = "Booooooooooooooooooohhhhhhhhhhh",
                damage = 10,
                defese = 10,
                dexterity = 10,
                accuracy = 3,
                critical = 1,
                life = 60,
                expWin = 50,
                level = 0
                
            },

            m1  = {
                
                name = "Esqueleto do Terror",
                msg = "Você não esta no tutorial",
                damage = 15,
                defese = 5,
                dexterity = 10,
                accuracy = 4,
                critical = 1,
                life = 30,
                expWin = 50,
                level = 0
                
            },


    }
    setmetatable(monsters, Monster)
    return monsters

end

function Monster:getAllMonster()
    return self.monsters
end

function Monster:getMonster(tileName)
    
    if tileName == "m" then return self.m
    elseif tileName == "m1" then return self.m1
    elseif tileName == "m2" then return self.m2
    elseif tileName == "m3" then return self.m3
    end

    return self.m

end



return Monster