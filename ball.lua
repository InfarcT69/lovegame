ball = {}

function ball:load()
   self.x = love.graphics.getWidth() / 2
   self.y = love.graphics.getHeight() / 2
   self.vel = 400
   self.h = 20
   self.w = 20
   
end

function ball:update(dt)

      
self.x = self.x + self.vel * dt

   if self.x < p2.x + p2.w and
   self.x + self.w > p2.x then 
    self.vel = -400 - dt 
   end
   
   if self.x < p1.x + p1.w and
   self.x + self.w > p1.x then 
    self.vel = 400 + dt 
   end   
end

function ball:draw()
   love.graphics.circle("fill",self.x,self.y,self.w,self.h)
end