#!/bin/bash

# ============================================
# Automatic Folder Organizer
# Author : Ankita Kolekar
# ============================================

# Create destination folders if they don't exist
mkdir -p PDF Images Music Videos Text Code

# Loop through all files in sample_files
for file in sample_files/*
do
    # Skip if it's not a regular file
    [ -f "$file" ] || continue

    # Get filename only
    filename=$(basename "$file")

    # Get file extension
    extension="${file##*.}"

    # Check file type and move accordingly
    case "$extension" in

        pdf)
            mv "$file" PDF/
            echo "Moved $filename → PDF"
            ;;

        jpg|png)
            mv "$file" Images/
            echo "Moved $filename → Images"
            ;;

        mp3)
            mv "$file" Music/
            echo "Moved $filename → Music"
            ;;

        mp4)
            mv "$file" Videos/
            echo "Moved $filename → Videos"
            ;;

        txt)
            mv "$file" Text/
            echo "Moved $filename → Text"
            ;;

        c|sh)
            mv "$file" Code/
            echo "Moved $filename → Code"
            ;;

        *)
            echo "Unknown file type: $filename"
            ;;

    esac

done

echo ""
echo "==================================="
echo " Files Organized Successfully!"
echo "==================================="
