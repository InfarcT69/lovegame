require("p1")
require("p2")

function love.load()
   p1:load()
   p2:load()
end

function love.update(dt)
   p1:update(dt)
   p2:update(dt)
end

function love.mousemoved( x, y, dx, dy, touch)
   p1:mousemoved( x, y, dx, dy, touch)
   p2:mousemoved( x, y, dx, dy, touch)
end

function love.draw()
   p1:draw()
   p2:draw()
end
