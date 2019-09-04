edit=$(which $EDITOR)
function $EDITOR (){
	crypt=()
	nocrypt=()
	nofile=()
	for param in "$@"; do
		if [[ ! -f "$param" ]]; then
			nofile+="$param"
		else
			if [[ $(checkifencrypted $param) -eq 1 ]]; then
				crypt+="$param"
			else
				nocrypt+="$param"
			fi
		fi
	done
	#echo "encrypted $crypt"
	#echo "not encrypted $nocrypt"
	for cf in $crypt; do
		viencrypt $cf
	done
	if [[ $nocrypt ]] || [[ $# -eq 0 ]]; then
		$edit $nofile $nocrypt
	fi	
}
#TODO: make it fancy by deleting from $@ array
