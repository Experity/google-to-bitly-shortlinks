# Google to Bitly shortlinks
A series of scripts to convert google short links to bitly short links

## Fetch the links
Query Periscope using the sql snippet in `survey_settings_query.sql` and save it to a csv file named
`raw_survey_settings.csv`.  Periscope has an option to export to CSV, so use that.

## Isolate the links
Run the `isolate_google_links.sh` in a bash terminal.  This will generate a file titled `google_urls.txt` which
is a list of isolated Google shortlinks

## Expand the links
Run the `expand_google_short_links.sh` in a bash terminal.  This will give you a file titled `expanded_urls.txt`
which is a list of the Google shortlinks followed by their final link destinations.

## Convert the links
The provided `convert_long_url_to_short.sh` bash script takes two arguments.  The first is an access token provided by
bitly.com which you supply to create your shortlink.  The second argument is the link you wish to generate a bitly
shortlink for.  The generated link is saved to a file titled `generated_bitly_links.txt` and includes both the
original and the shortlink.  If you lose this file, just login to your bitly account and you can view it from there.

## The rest
There's a little bit more manipulation done to change the links in the survey settings, but I haven't included it
here because I did it all inline and thus don't have it saved.  The gist is that I made a hash map between the google links
and the bitly links and if I ever encountered a google link I looked it up to find the bitly link to replace it with.
