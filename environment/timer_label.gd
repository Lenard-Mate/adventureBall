extends Label
var time=0
var timer_on= true

func _process(delta):
		if(timer_on):
			time+=delta
			text = var2str(time)
		pass
	
	
