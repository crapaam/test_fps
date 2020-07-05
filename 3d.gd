extends Spatial


func _ready():
	
	$Tween.interpolate_property($CSGCombiner, "rotation_degrees", $CSGCombiner.rotation_degrees, $CSGCombiner.rotation_degrees + Vector3(0, 360, 0), 5.0, Tween.TRANS_LINEAR, Tween.EASE_IN)
	$Tween.start()
	
	$Tween2.interpolate_property($CSGCombiner2, "rotation_degrees", $CSGCombiner2.rotation_degrees, $CSGCombiner2.rotation_degrees + Vector3(0, -360, 0), 3.0, Tween.TRANS_LINEAR, Tween.EASE_IN)
	$Tween2.start()


