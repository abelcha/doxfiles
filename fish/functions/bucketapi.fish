function bucketapi --argument bucket query

    xc "https://buckets.grayhatwarfare.com/api/v2/files?$query&bucket=$bucket.blob.core.windows.net" "Authorization:'Bearer $BUCKET_APIKEY'"
end
