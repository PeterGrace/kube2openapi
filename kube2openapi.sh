#!/bin/bash
if [[ -z "$2" ]];
then
    echo "usage: crd objectname [language]"
    echo "example: $0 helmreleases.helm.flux.io HelmReleaseSpec rust"
    exit 1
fi
lang=${3:-rust}
outputdir=$1-$lang
object=$2
outputfile=$outputdir/ov3-$1.yaml
mkdir $outputdir
kubectl get crd $1 -o yaml | yq r - spec.versions[0].schema.openAPIV3Schema.properties > $outputfile
sed -i "s,^spec,$object,g" $outputfile
yq p -i $outputfile components.schemas
echo "paths: {}" >> $outputfile
yq w $outputfile -i  info.title $1
yq w $outputfile -i info.version 1
yq w $outputfile -i openapi "3.0.3"
yq w $outputfile -i components.schemas.spec.type Object
java -jar `which openapi-generator-cli.jar` generate -g $lang -i $outputfile -o $outputdir/
