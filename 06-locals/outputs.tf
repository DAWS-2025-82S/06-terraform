// print var value
output  "output_variable" {
  value = var.domain_name
}
// print resource output
output  "output_resource" {
  value = aws_instance.this.id
}
// print DataSource output
output  "output_datasource" {
  value = data.aws_ami.joindevops.id
}
// print locals variable output
output  "output_local_variable" {
  value  = local.name
}
// print locals Reference variable output
output  "output_local_ref_variable" {
  value  = local.local-ref-var
}
