
#!/usr/bin/env bun
import { $ } from bun
const response = 'hello i am a response body'
const result = await $`echo ${response} | wc -w`.text()
console.log(result)
// 6
