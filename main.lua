require("p1")
require("p2")
require("ball")

function love.load()
   p1:load()
   p2:load()
   ball:load()
end

function love.update(dt)
   p1:update(dt)
   p2:update(dt)
   ball:update(dt)
end

function love.mousemoved( x, y, dx, dy, touch)
   p1:mousemoved( x, y, dx, dy, touch)
   p2:mousemoved( x, y, dx, dy, touch)
end

function love.draw()
   p1:draw()
   p2:draw()
   ball:draw()
end

