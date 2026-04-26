complete -c apfs.util -s a -d 'path : Get the absolute volume uuid for the volume at path.'
complete -c apfs.util -s D -d 'get : Get defragmentation setting for volume or container.'
complete -c apfs.util -s D -d 'set=yes/no : enable / disable defragmentation for volume or container.'
complete -c apfs.util -s k -d ': get volume UUID.'
complete -c apfs.util -s p -d ': probe for volume name.'
complete -c apfs.util -s R -d 'SNAPSHOT : set the volume to revert to the snapshot named by SNAPSHOT on next mount.'
complete -c apfs.util -s s -d ': set container UUID and its volume(s) UUID(s) to new random values.'
complete -c apfs.util -s A -d 'get : get atime update setting for volume.'
complete -c apfs.util -s A -d 'set=yes/no : enable / disable atime update for volume.'
complete -c apfs.util -s C -d "-type type volume_path : clear the purgeability of files of the specified 'type' on the volume referred to by 'path'."
complete -c apfs.util -s E -d "path : drop the extents for 'path' from the first snapshot."
complete -c apfs.util -s G -d "[options] path : get stats on the purgeable files on the volume specified by 'path'."
complete -c apfs.util -s m -d '<verb> path : mark the file at path as purgeable with the various options specified.'
complete -c apfs.util -s podcast -d '-video -movie -message -book -sucontent -fault -pdir'
complete -c apfs.util -s M -d 'dir : flag the named directory as "maintain-dir-stats".'
complete -c apfs.util -s O -d 'path [fs name] : override the fstypename for apfs to be "hfs" (or the optional name given).'
complete -c apfs.util -s P -d "<criteria> path : purge files meeting the criteria specified on the volume referred to by 'path'."
complete -c apfs.util -s K -d "path : purge(kill) the single file at 'path'"
complete -c apfs.util -s r -d 'dir : set the sync-root flag on the specified directory.'
complete -c apfs.util -s S -d 'dir : get the directory stats from dir.'
complete -c apfs.util -s Y -d 'dir : get the sync-root flag from the specified directory.'
complete -c apfs.util -s y -d "path : get the sync-root flag from the first parent that has one for the item identified by 'path'."
complete -c apfs.util -s z -d 'path : make the file at path exempt from copy-on-write semantics for snapshots.'
complete -c apfs.util -s Z -d "path : get the purgeable file flags for the specific file at 'path'."
complete -c apfs.util -s t -d ': stitches and creates synthetic objects on root volume group.'
complete -c apfs.util -s h -d ': show this help menu.'
