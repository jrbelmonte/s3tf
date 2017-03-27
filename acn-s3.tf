#Create S3 Buckets for Pipeline Testing
resource "aws_s3_bucket" "acn-s3" {
    bucket = "${var.environment}-s3-test"
    acl = "private"
    force_destroy= true

    tags {
        Name = "${var.environment}-s3-test"
        Environment = "${var.environment}"
    }
}