--[[
Better Base Pal Priorities

Improves work preferences by adding true priorities to pals' jobs
i.e. your Anubis will always perform handiwork if there is some to be done over whatever else it was doing
    and the Abubis will get assigned to handiwork preferentially over other pals with lower work suitibility

Allows for giving certain job types priorities over others (like handiwork over mining)
In practice, this means that if (for ex) handiwork is the priority and there is a job available,
    the pal with the highest handiwork suitibility will get pulled off of whatever it's doing and work on it instead

Rules work in a specific trumps general fashion
global -> suitibiltiy level -> Pal species -> Pal species + passives/workspeed/etc -> Pal name
]]

--[[
Idea: it seems that New work jobs being added and jobs being assigned are seperate function calls
    Hook into call of assigning a new job and useasdasasd 
--]]

local MOD_NAME = "BetterBasePalPriorities"
