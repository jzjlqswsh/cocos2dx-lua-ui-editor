return {
	_id = "popupBg1",
	height = 350,
	ignoreAnchor = 1,
	scaleX = "$minScale",
	scaleY = "$minScale",
	width = 600,
	x = 640,
	y = 360,
	anchor = {
	   x = 0.5,
	   y = 0.5},
	scaleXY = {
	   x = "$scaleX",
	   y = "$scaleY"},
	_children = {	   {
	      _id = "bg",
	      _type = "cc.LayerGradient",
	      height = "$fill",
	      ignoreAnchor = 1,
	      width = "$fill",
	      x = 435,
	      y = 244.6875,
	      endColor = {
	         a = 255,
	         b = 255,
	         g = 255,
	         r = 255},
	      startColor = {
	         a = 255,
	         b = 200,
	         g = 200,
	         r = 200},
	      _children = {	         {
	            _id = "label1",
	            _type = "cc.Label",
	            color = "323232",
	            fontSize = 18,
	            string = "@some_text",
	            width = 480,
	            x = 300,
	            y = 299,
	            anchor = {
	               x = 0.5,
	               y = 1}}}}}}