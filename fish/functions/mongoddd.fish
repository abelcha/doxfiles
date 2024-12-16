function mongoddd
    mongod --dbpath /Volumes/palantir/data/db --zstdDefaultCompressionLevel 8 --networkMessageCompressors zstd --wiredTigerCollectionBlockCompressor zstd --nounixsocket
end
