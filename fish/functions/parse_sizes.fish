function parse_sizes
    bun --install force (__ "
 import bytes from 'pretty-bytes';
 for await (const line of console) {
   console.log(line.replace(/\s(\d\d\d\d\d\d+)/g, e => bytes(parseFloat(e)).padStart(e.length, ' ')  ))
}" |psub -s .js)
end
