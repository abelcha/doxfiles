function gconnect --wraps='gcloud compute ssh spot'
    gcloud compute ssh spot --project=abel-420618 --zone=europe-west1-b
end
