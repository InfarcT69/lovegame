p2 = {}

function p2:load()
   self.x = 550
   self.y = love.graphics.getHeight() / 2
   self.w = 20
   self.h = 100
   
end

function p2:update(dt)
   p2:movement()
end

function p2:mousemoved( x, y, dx, dy, touch)
   if x > love.graphics.getWidth() / 2 then
      self.y = y
   end
end

function p2:movement()


   
   if self.y < 0 then
   self.y = 0
   elseif self.y + self.h > love.graphics.getHeight() then
   self.y = love.graphics.getHeight() - self.h
   end
   
end

function p2:draw()  love.graphics.rectangle("fill",self.x,self.y,self.w,self.h)
end