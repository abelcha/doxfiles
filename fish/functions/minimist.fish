function minimist
    #set jsonargs (string replace )
    //usr/bin/env bun --eval "
//console.log(Bun.argv)
 const args = require('mri')(`$argv`.split(' '))
const { camelCase } = require('es-toolkit');
let commands = []
for (key in args){
 if (key === '_' && args._.length) {
    commands.push('set args --append ' +  args._.join(' ') )
} else {
    commands.push('set argv_' + camelCase(key) + ' ' +  '\"' + (args[key] || true) + '\"')
 }
}
console.log(commands.join('\\n'))
//console.log(`set --append args.`)

 //~~~~~~~~~~~~~~/~~~~~
//  >°)))彡 "
end
