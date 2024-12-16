function argv --no-scope-shadowing
    #set
    #set jsonargs (string replace )
    //usr/bin/env bun --eval "
//console.log(Bun.argv)
 const args = require('mri')(`$argv`.split(' '))
const { camelCase } = require('es-toolkit');
let commands = []
for (key in args){
 if (key === '_') {
if (args._.length && args._[0].length)
    commands.push('set args --append ' +  args._.join(' ') )
} else {
    commands.push('set argv_' + camelCase(key) + ' ' +  '\"' + (args[key] || true) + '\"')
 }
}
console.log(commands.join(';\\n'))
//function flags -a id 
//console.log(commands.join(';\\n'))
  
//end
//console.log(`set --append args.`)

 //~~~~~~~~~~~~~~/~~~~~
//  >°)))彡 "
end
