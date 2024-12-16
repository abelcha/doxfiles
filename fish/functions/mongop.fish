function mongop
    sudo mongod --dbpath /Volumes/palantir/data/db --zstdDefaultCompressionLevel 8 --networkMessageCompressors zstd --wiredTigerCollectionBlockCompressor zstd --noauth --unixSocketPrefix=/Volumes/palantir/ --maxConns=500 --journalCommitInterval=400 --pidfilepath=/Volumes/palantir/db/pid.txt --bind_ip 127.0.0.1
end
