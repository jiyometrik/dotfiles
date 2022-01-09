require("code_runner").setup({
	term = {
		position = "vert",
		size = 20,
	},

	filetype = {
		javascript = "node",
		php = "php",
		python = "python -U",
		perl = "perl",
		ruby = "ruby",
		go = "go run",
		java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
		c = "cd $dir && gcc $fileName -o $fileNameWithoutExt && ./$fileNameWithoutExt",
		rust = "cd $dir && rustc $fileName && ./$fileNameWithoutExt",
		typescript = "deno run",
		cpp = "cd $dir && g++ $fileName -o $fileNameWithoutExt && ./$fileNameWithoutExt",
	},

	project = {
		["~/Desktop/dunjudge"] = {
			name = "dunjudge",
			description = "solutions to the competitive programming website dunjudge.com",
			command = "cd $dir && g++ $fileName -o $fileNameWithoutExt -Wall -Wshadow -static -O2 -lm -m64 -s -w -std=gnu++17 -fmax-errors=512",
		},
		["~/Desktop/codebreaker"] = {
			name = "codebreaker",
			description = "solutions to the competitive programming website codebreaker.xyz",
			command = "cd $dir && g++ $fileName -o $fileNameWithoutExt -Wall -Wshadow -static -O2 -lm -m64 -s -w -std=gnu++17 -fmax-errors=512",
		},
	},
})
