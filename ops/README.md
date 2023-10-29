# ops

## 構築手順

1. storageの作成

terraform init の段階ではリソースを構築することはないがバケットは必要になるので、
gcs の作成に関しては手動で行っておく必要がある
see: https://github.com/hashicorp/terraform/issues/18417

2. import

```
$ terraform import module.root.google_storage_bucket.tfstate lateral-thinking-dev/lateral-thinking-dev-tf-state
```