#!/bin/bash
appledoc \
--output ./apiDoc \
-i *.m \
--project-name "CodeSpace" \
--project-company "PFPersionalCocoapodsDoc" \
--no-create-docset \
--keep-undocumented-objects \
--keep-undocumented-members \
--no-warn-undocumented-object \
--no-warn-undocumented-member \
./
