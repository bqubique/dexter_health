First task:

- There were issues with adding notes, that I suppose was part of what was missing in the crud. I added that.
- I intentionally did not reset the report details after submitting, since how I imagine this works is someone will continue from the same report, and try to read the previously left notes from the previous nurse. I'm not sure if this was the intention, but that's what made sense to me technically.
- Refactored the files and folders according to clean arch.
- Added DI with get_it package.
- Added immutability with freezed (could've used equatable, but I was used to freezed, technically unnecessary).
- Added unit tests for some of the features.
- Was stuck with DI mocking and could not continue with integration testing.
- CRUD was mentioned in the challenge readme, but I was honestly torn between removing a note and not removing. At the end I decided not to remove one for the following reason(s):
  - There was no UI component that marked the removal of a note, I tried swiping the list items, or see if there was a component that removes (like a delete `IconButton`) a note, but ultimately decided not to.
  - Also I was not sure how the flow works, maybe notes should not be removed at all in order to keep them safe.
  - In order to have a delete note function, I was at least expecting to have a stub function definition of that in the service OR the bloc. I can understand the service might not have that since due to immutabiliy we could call a `copyWith` method to only update the list of notes, but in order to have that I was at least looking for a UI component for that to be more clear 🥲.
  - I was really trying to stay in the line of the requirements as much as possible.

Second task:

- I realized in the very beginning testing on iOS is completely broken since the notification settings were not set up for ios/darwin.
- One of the pages was hanging when doing a request to a http site deployed on hetzner. Used a hacky solution to bypass that, but other than that the system was not able to download since some of the changes were done on the server side and I assume were impossible to download unless the url changed (I wanted to stay within the lines of the task). The screen does not hang anymore.
- The screen with file validation, there were issues with validation and bitwise operators, but I left that and returned to first task's testing part. My idea was to completely defer everything to isolates and leave the main thread free of heavy computations.

Thank you for your time!
