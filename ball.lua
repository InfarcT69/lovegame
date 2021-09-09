ball = {}

function ball:load()
   self.x = love.graphics.getWidth() / 2
   self.y = love.graphics.getHeight() / 2
   self.vel = 400
   self.h = 20
   self.w = 20
   timer = false
   time = 0
end

function ball:update(dt)

      
self.x = self.x + self.vel * dt

   if self.x < p2.x + p2.w and
   self.x + self.w > p2.x and
   self.y < p2.y + p2.h and
   self.y + self.h > p2.y then 
    self.vel = -400 + dt 
   end
   
   if self.x < p1.x + p1.w and
   self.x + self.w > p1.x and     
   self.y < p1.y + p1.h and
   self.y + self.h > p1.y then 
    self.vel = 400 - dt 
   end  
   
   --if self.x == love.graphics.getWidth() / 2 then
    
   --end
   
   if self.x < p1.x then
    self.vel = 0 
    self.x = love.graphics.getWidth() / 2
    timer = true
    p2.y = love.graphics.getHeight() / 2
    p1.y = love.graphics.getHeight() / 2
    if timer == true then
     time = time + dt
     if time > 3 then
      self.vel = 400
      time = 0
      timer = false
     end
    end
   end
   
end

function ball:draw()
   love.graphics.circle("fill",self.x,self.y,self.w,self.h)
love.graphics.print(time,50,50)   
end