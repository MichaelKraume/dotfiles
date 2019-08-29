edit=$(which $EDITOR)
function $EDITOR (){
	crypt=()
	nocrypt=()
	for param in "$@"; do
		if [[ -f "$param" ]]&&[[ $(checkifencrypted $param) -eq 1 ]]; then
			crypt+="$param"
		else
			nocrypt+="$param"
		fi
	done
	#echo "encrypted $crypt"
	#echo "not encrypted $nocrypt"
	for cf in $crypt; do
		viencrypt $cf
	done
	if [[ $nocrypt ]] || [[ $# -eq 0 ]]; then
		$edit $nocrypt
	fi	
}
#TODO: make it fancy by deleting from $@ array
