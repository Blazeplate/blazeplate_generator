
# Blazeplate generate
# yo blazeplate --force --appconfig=./configs/example_01.json
yo blazeplate --force --appconfig=./configs/example_04.json

# JS Beautify
glob-run js-beautify --max_preserve_newlines 1 -r -s 2 'generated_apps/blazeplate_project/web_api/server/**/*.js'

# Vue Beautify
# glob-run vue-beautify -r --max_preserve_newlines=0 -s=2 -a=1 -S=keep 'generated_apps/app_name/web_client/src/containers/**/*.vue'

# TODO - can we use ESLINT to auto-lint things like trailing commas?

rexreplace '// // // // BLAZEPLATE WHITESPACE\n' '\n' generated_apps/blazeplate_project/web_api/server/api/**/*.model.js
rexreplace '// // // // BLAZEPLATE WHITESPACE\n' '\n' generated_apps/blazeplate_project/web_api/server/api/**/*.controller.js
rexreplace '// // // // BLAZEPLATE WHITESPACE\n' '\n' generated_apps/blazeplate_project/web_api/server/api/**/index.js


rexreplace '// // // // BLAZEPLATE WHITESPACE' '' generated_apps/blazeplate_project/web_api/server/api/**/*.model.js
rexreplace '// // // // BLAZEPLATE WHITESPACE' '' generated_apps/blazeplate_project/web_api/server/api/**/*.controller.js
rexreplace '// // // // BLAZEPLATE WHITESPACE' '' generated_apps/blazeplate_project/web_api/server/api/**/index.js

