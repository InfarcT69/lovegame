p1 = {}

function p1:load()
   self.x = 50
   self.y = love.graphics.getHeight() / 2
   self.w = 20
   self.h = 100
   
end

function p1:update(dt)
   p1:movement()
end



function p1:mousemoved( x, y, dx, dy, touch)
   if ball.y <  love.graphics.getHeight() / 2 then
    self.y = y
   end
   
  
end

function p1:movement()
   
   if self.y < 0 then
   self.y = 0
   elseif self.y + self.h > love.graphics.getHeight() then
   self.y = love.graphics.getHeight() - self.h
   end
   
end

function p1:draw()  love.graphics.rectangle("fill",self.x,self.y,self.w,self.h)
end