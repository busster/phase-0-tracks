school = {
	gym: [
		"puke",
		janitor: {
			name: "Hank",
			age: 22
		}
	],
	lecture_room: {
		supplies: [
			"books",
			"pens",
			"notebook paper"
		],
		teacher: {
			name: "Joan",
			age: 90,
			subject: "math",
			favorite_numbers: [1,2,3,5,6]
		},
		student: {
			name: "Ethan",
			age: 5,
			cares: "none"
		}
	},
	principals_office: {
		principal: {
			mood: ["happy", "angry"],
			smiling: false
		},
		student: {
			name: "Johnathon",
			age: 6,
			grades: ["c","d","f","c-"],
			detention: true
		}
	}
}

p school[:gym][1][:janitor][:age]
p school[:lecture_room][:supplies][1]
p school[:lecture_room][:teacher][:favorite_numbers][3]
p school[:principals_office][:principal][:smiling]
p school[:principals_office][:student][:grades]

