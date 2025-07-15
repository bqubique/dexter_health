First task:

- There were issues with adding notes, that I suppose was part of what was missing in the crud. I added that.
- I intentionally did not reset the report details after submitting, since how I imagine this works is someone will continue from the same report, and try to read the previously left notes from the previous nurse. I'm not sure if this was the intention, but that's what made sense to me technically.
- Refactored the files and folders according to clean arch.
- Added DI with get_it package.
- Added immutability with freezed (could've used equatable, but I was used to freezed, technically unnecessary).
- Added unit tests for some of the features.
- Was stuck with DI mocking and could not continue with integration testing.

Second task:

- I realized in the very beginning testing on iOS is completely broken since the notification settings were not set up for ios/darwin.
- One of the pages was hanging when doing a request to a http site deployed on hetzner. Used a hacky solution to bypass that, but other than that the system was not able to download since some of the changes were done on the server side and I assume were impossible to download unless the url changed (I wanted to stay within the lines of the task). The screen does not hang anymore.
- The screen with file validation, there were issues with validation and bitwise operators, but I left that and returned to first task's testing part. My idea was to completely defer everything to isolates and leave the main thread free of heavy computations.

Thank you for your time!
