require("p1")
--require("p2")

function love.load()
   p1:load()
   --p2:load()
end

function love.update(dt)
   p1:update(dt)
   --p2:update(dt)
end

function love.draw()
   p1:draw()
   --p2:draw()
end
