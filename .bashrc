mountcp() {
        local file="$1"
        local dev="$2"
        local mnt="mnt"

        sudo mount "$dev" "$mnt"
        sudo cp "$file" "$mnt"
        sudo umount "$mnt"

        echo "File copy"
}
