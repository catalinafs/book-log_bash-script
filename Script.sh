#!/bin/bash
# Ask the user for the title and author of the book
echo 'Book title:'
read title
echo 'Author of ' $title ':'
read author

# Redirect output as books.txt input
echo ${title} ' - ' ${author} >> books.txt
# Inform the user with a confirmation
echo ${title} ' by ' ${author} 'has been added to books.txt'
# Wait 3 seconds for the message to be read
sleep 2


# The gmail from which it is going to be sent is requested


# Send email to user
mail -s 'Book List' catalinaforerosuarez@gmail.com books.txt
# Clean Screen
clear
# Confirmation message that the email was sent successfully
echo 'Done, the list of books has been sent to your email.'
