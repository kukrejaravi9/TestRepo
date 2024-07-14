 #!/bin/bash
create_and_set_alias() {
  local output_name=$1
  local alias_url="https://$1"
 
   echo "${output_name}=https://${alias_url}" >> "$GITHUB_OUTPUT"
   echo "https://$alias_url"
}

main(){
      alias_commit_jlg_id=$(create_and_set_alias "MY_CALL_ONE")
      alias_commit_jdc_id=$(create_and_set_alias "MY_CALL_TWO")
      call_three=$(create_and_set_alias "MY_CALL_THREE")
      echo "DEV_JLG: $alias_commit_jlg_id" >> $GITHUB_STEP_SUMMARY
      echo "DEV_JDC: $alias_commit_jdc_id" >> $GITHUB_STEP_SUMMARY
      echo "CALL_THREE: $call_three" >> $GITHUB_STEP_SUMMARY
}
main 
