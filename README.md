# kube2openapi

## Purpose
This script will pull a kubernetes CRD from your server and generate an OpenAPIv3 spec for the object, so that you can more quickly add CRDs to applications.

## Prerequisites
You must have openapi-generator-cli.jar [check link here](https://github.com/openapitools/openapi-generator#13---download-jar)

## Usage
```
  $   ./kube2openapi.sh helmreleases.helm.fluxcd.io HelmReleaseSpec rust
[main] INFO  o.o.codegen.DefaultGenerator - Generating with dryRun=false
[main] INFO  o.o.c.ignore.CodegenIgnoreProcessor - No .openapi-generator-ignore file found.
[main] INFO  o.o.codegen.DefaultGenerator - OpenAPI Generator: rust (client)
[main] INFO  o.o.codegen.DefaultGenerator - Generator 'rust' is considered stable.
[main] WARN  o.o.codegen.utils.URLPathUtils - 'host' (OAS 2.0) or 'servers' (OAS 3.0) not defined in the spec. Default to [http://localhost] for server URL [http://localhost/]
[main] WARN  o.o.codegen.utils.URLPathUtils - 'host' (OAS 2.0) or 'servers' (OAS 3.0) not defined in the spec. Default to [http://localhost] for server URL [http://localhost/]
[main] WARN  o.o.codegen.DefaultCodegen - Unknown type found in the schema: Object
[main] WARN  o.o.codegen.DefaultCodegen - Unknown type found in the schema: Object
[main] INFO  o.o.codegen.TemplateManager - writing file /home/pgrace/repos/kube2openapi/helmreleases.helm.fluxcd.io-rust/src/models/helm_release_spec.rs
[main] INFO  o.o.codegen.TemplateManager - writing file /home/pgrace/repos/kube2openapi/helmreleases.helm.fluxcd.io-rust/docs/HelmReleaseSpec.md
[main] INFO  o.o.codegen.TemplateManager - writing file /home/pgrace/repos/kube2openapi/helmreleases.helm.fluxcd.io-rust/src/models/helm_release_spec_rollback.rs
[main] INFO  o.o.codegen.TemplateManager - writing file /home/pgrace/repos/kube2openapi/helmreleases.helm.fluxcd.io-rust/docs/HelmReleaseSpecRollback.md
[main] INFO  o.o.codegen.TemplateManager - writing file /home/pgrace/repos/kube2openapi/helmreleases.helm.fluxcd.io-rust/src/models/helm_release_spec_value_file_secrets.rs
[main] INFO  o.o.codegen.TemplateManager - writing file /home/pgrace/repos/kube2openapi/helmreleases.helm.fluxcd.io-rust/docs/HelmReleaseSpecValueFileSecrets.md
[main] WARN  o.o.codegen.utils.URLPathUtils - 'host' (OAS 2.0) or 'servers' (OAS 3.0) not defined in the spec. Default to [http://localhost] for server URL [http://localhost/]
[main] INFO  o.o.codegen.TemplateManager - writing file /home/pgrace/repos/kube2openapi/helmreleases.helm.fluxcd.io-rust/README.md
[main] INFO  o.o.codegen.TemplateManager - writing file /home/pgrace/repos/kube2openapi/helmreleases.helm.fluxcd.io-rust/git_push.sh
[main] INFO  o.o.codegen.TemplateManager - writing file /home/pgrace/repos/kube2openapi/helmreleases.helm.fluxcd.io-rust/.gitignore
[main] INFO  o.o.codegen.TemplateManager - writing file /home/pgrace/repos/kube2openapi/helmreleases.helm.fluxcd.io-rust/.travis.yml
[main] INFO  o.o.codegen.TemplateManager - writing file /home/pgrace/repos/kube2openapi/helmreleases.helm.fluxcd.io-rust/src/models/mod.rs
[main] INFO  o.o.codegen.TemplateManager - writing file /home/pgrace/repos/kube2openapi/helmreleases.helm.fluxcd.io-rust/src/lib.rs
[main] INFO  o.o.codegen.TemplateManager - writing file /home/pgrace/repos/kube2openapi/helmreleases.helm.fluxcd.io-rust/Cargo.toml
[main] INFO  o.o.codegen.TemplateManager - writing file /home/pgrace/repos/kube2openapi/helmreleases.helm.fluxcd.io-rust/src/apis/mod.rs
[main] INFO  o.o.codegen.TemplateManager - writing file /home/pgrace/repos/kube2openapi/helmreleases.helm.fluxcd.io-rust/src/apis/configuration.rs
[main] INFO  o.o.codegen.TemplateManager - writing file /home/pgrace/repos/kube2openapi/helmreleases.helm.fluxcd.io-rust/.openapi-generator-ignore
[main] INFO  o.o.codegen.TemplateManager - writing file /home/pgrace/repos/kube2openapi/helmreleases.helm.fluxcd.io-rust/.openapi-generator/VERSION
[main] INFO  o.o.codegen.TemplateManager - writing file /home/pgrace/repos/kube2openapi/helmreleases.helm.fluxcd.io-rust/.openapi-generator/FILES
```
