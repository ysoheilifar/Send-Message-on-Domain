# Send Messages to All Computers in a Specific OU

This PowerShell script allows you to automatically send a custom message to all computers within a specific Organizational Unit (OU) in Active Directory.

### How it works:
- The script targets the OU named "PC" under the domain "parsa.local".
- It retrieves all computer names within the specified OU.
- You are prompted to enter the message you want to send.
- For each computer, the script checks if the computer is online using Test-Connection.
- If the computer is online, the script sends the specified message using the msg command.
- If the computer is offline or unreachable, it notifies you in the console.
- At the end, the script shows the total run time.

> [!NOTE]
> You need to run this script with sufficient permissions to access Active Directory and to send messages using the msg command.
> The ActiveDirectory module must be installed and imported.
> The target computers must have the msg service enabled and allow messages from the sender's account.
