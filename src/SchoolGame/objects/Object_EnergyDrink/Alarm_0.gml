if(step == 3){
	if(up){
		up = false
	}
	else{
		up = true
	}
	step = 0
}
		
if(up){
	y -= 3
	step += 1
}
else{
	y += 3
	step += 1
}

alarm[0] = 10