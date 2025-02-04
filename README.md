## How can my custom Back Button have a title? 

### FB16445874

For internal reasons (cancel/discard/confirmationDialog), I can't use the regular SwiftUI
`backButton`, so I need a custom one.  

Sadly though, I can't find a way for this ToolbarItem to have both the `chevron` _and_ a text.

The only way I made it work was with a HStack :( 
