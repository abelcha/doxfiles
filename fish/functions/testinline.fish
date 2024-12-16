function testinline --no-scope-shadowing
    #set jsonargs (string replace )
    //usr/bin/env bun --eval "
console.log(Bun.argv)
//import { args } from '/me/dev/abel/args.ts'
 const args = require('mri')(`$argv`.split(' '))
const { camelCase } = require('es-toolkit');
for (key in args){
 if (key === '_') {
    console.log('set args --append ' +  args._.join(' ') )
}
 else {
    console.log('set args.' + camelCase(key) + ' -- ' + args[key])
 }
// console.log('==>', key)
}
//console.log(`set --append args.`)

 //~~~~~~~~~~~~~~/~~~~~
//  >°)))彡 "
end
