set -xe

rm -rf generated && mkdir -p generated/workshop-source/

cat << "EOF" > generated/workshop-values.yaml
extraFileMappings:
EOF

cat << "EOF" > generated/workshop-toolconf-values.yaml
configs:
  tool_conf_yescds.xml: |
    <?xml version='1.0' encoding='utf-8'?>
      <toolbox monitor="true">
EOF


function create_manifest {

  cat << EOF >> "generated/workshop-values.yaml"
  /galaxy/server/tools/interactive/biocworkshop_${SHORT_NAME}.xml:
    useSecret: false
    applyToJob: true
    applyToSetupJob: true
    applyToWeb: true
    applyToWorkflow: true
    applyToNginx: true
    tpl: false
    content: |
$(sed """s@##PLACEHOLDERSHORTNAME##@${SHORT_NAME}@g
         s@##PLACEHOLDERLONGNAME##@${DESCRIPTION_NAME}@g
         s@##PLACEHOLDERNOTEBOOKNAME##@${NOTEBOOK_NAME}@g
         s@^@      @g""" workshop-wrapper-template.xml)
EOF

  cat << EOF >> generated/workshop-toolconf-values.yaml
          <tool file="interactive/biocworkshop_${SHORT_NAME}.xml" />
EOF

}


( cd generated/workshop-source/ && git clone https://github.com/vjcitn/YESCDS --depth 1 && rm -rf YESCDS/.git/ )

ls generated/workshop-source/YESCDS/inst/ipynb/*.ipynb > chapterlist

while IFS="" read -r notebook
do

  SHORT_NAME=$(echo $notebook | awk -F'/' '{print tolower($NF)}' | awk -F'.' '{print $1}')
  NOTEBOOK_NAME=$(echo $notebook | awk -F'/' '{print $NF}')
  CHAPTER_NUM=$(echo $notebook | awk -F'/' '{print $NF}' | awk -F'_' '{print $1}')
  LONG_NAME=$(cat "$notebook" | python -c 'import json,sys;print(json.load(sys.stdin)["cells"][0]["source"][0])' | xargs echo -n)
  DESCRIPTION_NAME=$(echo "($CHAPTER_NUM) $LONG_NAME")

  create_manifest

done < chapterlist

cat << "EOF" >> generated/workshop-toolconf-values.yaml
      </toolbox>
EOF
