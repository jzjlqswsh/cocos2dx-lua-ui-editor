return {
	height = 100,
	id = "TableCell1",
	type = "TableCell1",
	width = "$fill",
	x = 240,
	y = 100,
	anchor = {
	   x = 0,
	   y = 0},
	children = {	   {
	      height = 100,
	      id = "Member",
	      ignoreAnchor = 0,
	      opacity = 0,
	      parentId = "TableCell1",
	      type = "cc.LayerColor",
	      width = "$fill",
	      x = 0,
	      y = 0,
	      color = {
	         a = 255,
	         b = 155,
	         g = 101,
	         r = 102},
	      scaleXY = {
	         x = 1,
	         y = "1"},
	      children = {	         {
	            flippedX = 1,
	            flippedY = 1,
	            height = 80,
	            id = "pop_left",
	            parentId = "Member",
	            renderingType = 1,
	            scaleX = "$minScale",
	            scaleY = "$minScale",
	            state = 0,
	            type = "ccui.Scale9Sprite",
	            width = 300,
	            x = 120,
	            y = 100,
	            anchor = {
	               x = 0,
	               y = 1},
	            capInsets = {
	               height = 10,
	               width = 60,
	               x = 20,
	               y = 55},
	            scaleXY = {
	               x = "$scaleX",
	               y = "$minScale"}},
	         {
	            file = "avatar.png",
	            flippedX = 1,
	            height = 80,
	            id = "avatar_left",
	            parentId = "Member",
	            scaleX = "$minScale",
	            scaleY = "$minScale",
	            type = "cc.Sprite",
	            width = 80,
	            x = 25,
	            y = 100,
	            anchor = {
	               x = 0,
	               y = 1},
	            blendFunc = {
	               dst = 771,
	               src = 1},
	            scaleXY = {
	               x = "$scaleX",
	               y = "$minScale"}},
	         {
	            enableWrap = true,
	            fontSize = 32,
	            height = 0,
	            id = "label_left",
	            overflow = 3,
	            parentId = "Member",
	            scaleX = "$minScale",
	            scaleY = "$minScale",
	            string = "description",
	            type = "cc.Label",
	            width = 800,
	            x = 165,
	            y = 75,
	            anchor = {
	               x = 0,
	               y = 1},
	            color = {
	               b = 255,
	               g = 0,
	               r = 0},
	            fontFile = {
	               cn = "font/msyh.ttf",
	               en = "font/Verdana.ttf"},
	            scaleXY = {
	               x = "$scaleX",
	               y = "$minScale"}}}},
	   {
	      height = 100,
	      id = "Me",
	      ignoreAnchor = 0,
	      opacity = 0,
	      parentId = "TableCell1",
	      type = "cc.LayerColor",
	      width = "$fill",
	      x = 0,
	      y = 0,
	      color = {
	         a = 255,
	         b = 99,
	         g = 0,
	         r = 200},
	      scaleXY = {
	         x = 1,
	         y = "1"},
	      children = {	         {
	            flippedX = 1,
	            flippedY = 1,
	            height = 80,
	            id = "pop_right",
	            parentId = "Me",
	            renderingType = 1,
	            scaleX = "$minScale",
	            scaleY = "$minScale",
	            state = 0,
	            type = "ccui.Scale9Sprite",
	            width = 300,
	            x = 1160,
	            y = 100,
	            anchor = {
	               x = 1,
	               y = 1},
	            capInsets = {
	               height = 10,
	               width = 60,
	               x = 20,
	               y = 55},
	            scaleXY = {
	               x = "$scaleX",
	               y = "$minScale"}},
	         {
	            file = "avatar.png",
	            flippedX = 1,
	            height = 80,
	            id = "avatar_right",
	            parentId = "Me",
	            scaleX = "$minScale",
	            scaleY = "$minScale",
	            type = "cc.Sprite",
	            width = 80,
	            x = 1255,
	            y = 100,
	            anchor = {
	               x = 1,
	               y = 1},
	            blendFunc = {
	               dst = 771,
	               src = 1},
	            scaleXY = {
	               x = "$scaleX",
	               y = "$minScale"}},
	         {
	            enableWrap = true,
	            fontSize = 32,
	            height = 0,
	            id = "label_right",
	            parentId = "Me",
	            scaleX = "$minScale",
	            scaleY = "$minScale",
	            string = "description",
	            type = "cc.Label",
	            width = 0,
	            x = 897,
	            y = 75,
	            anchor = {
	               x = 0,
	               y = 1},
	            color = {
	               b = 255,
	               g = 0,
	               r = 0},
	            fontFile = {
	               cn = "font/msyh.ttf",
	               en = "font/Verdana.ttf"},
	            scaleXY = {
	               x = "$scaleX",
	               y = "$minScale"}}}},
	   {
	      height = 50,
	      id = "Time",
	      ignoreAnchor = 0,
	      opacity = 0,
	      parentId = "TableCell1",
	      type = "cc.LayerColor",
	      width = "$fill",
	      x = 0,
	      y = 0,
	      color = {
	         a = 0,
	         b = 100,
	         g = 200,
	         r = 0},
	      scaleXY = {
	         x = 1,
	         y = "1"},
	      children = {	         {
	            flippedX = 1,
	            flippedY = 1,
	            height = 50,
	            id = "bg_time",
	            parentId = "Time",
	            renderingType = 1,
	            scaleX = "$minScale",
	            scaleY = "$minScale",
	            state = 0,
	            type = "ccui.Scale9Sprite",
	            width = 120,
	            x = 640,
	            y = 25,
	            capInsets = {
	               height = 30,
	               width = 40,
	               x = 20,
	               y = 20},
	            scaleXY = {
	               x = "$scaleX",
	               y = "$minScale"}},
	         {
	            enableWrap = true,
	            fontSize = 28,
	            height = 0,
	            id = "desc",
	            parentId = "Time",
	            scaleX = "$minScale",
	            scaleY = "$minScale",
	            string = "12:35",
	            type = "cc.Label",
	            width = 0,
	            x = 640,
	            y = 22,
	            fontFile = {
	               cn = "font/msyh.ttf",
	               en = "font/Verdana.ttf"},
	            scaleXY = {
	               x = "$scaleX",
	               y = "$minScale"}}}}}}