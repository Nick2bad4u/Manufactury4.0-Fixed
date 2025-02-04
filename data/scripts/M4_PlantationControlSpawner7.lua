
function Create()
end

function Update(timePassed)
	local newControl = {}	-- adjust position and orientation when quickbuild is rotated
	if this.Or.x == -1 then newControl = Object.Spawn( "M4_PlantationControl", this.Pos.x+0.5,this.Pos.y)
	elseif this.Or.x == 1 then newControl = Object.Spawn( "M4_PlantationControl", this.Pos.x-0.5,this.Pos.y)
	elseif this.Or.y == -1 then newControl = Object.Spawn( "M4_PlantationControl", this.Pos.x,this.Pos.y+0.5)
	else
		newControl = Object.Spawn( "M4_PlantationControl", this.Pos.x,this.Pos.y-0.5)
	end
	newControl.Or.x = 0
	newControl.Or.y = 1
	Object.SetProperty(newControl,"Range",7)
	
	this.Delete()
end
