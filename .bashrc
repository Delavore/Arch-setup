mountcp() {
		if [ "$#" -ne "2" ]; then
			echo Usage: mountcp file block_dev  
			return 1
		fi

        local file="$1"
        local dev="$2"
        local mnt="/mnt"

        sudo mount "$dev" "$mnt"
        sudo cp "$file" "$mnt"
        sudo umount "$mnt"

        echo "All done"
}
