# Twitter & OECD
Here you can find working crawlers and prototypes being tested for the CUTLER platform. Crawlers are tested with mongodb://localhost. Users should provide own Access tokens (CONSUMER_KEY, CONSUMER_SECRET,ACCESS_TOKEN, ACCESS_TOKEN_SECRET) that can be obtained via https://apps.twitter.com/

**List of Crawlers**

**OECD:** Reuses the OECD library to crawl the series requested from the Economic WP.

**GeoBox.py:** Collects all streaming tweets from a given location. The location is defined as GEOBOX_CHICAGO = [-87.9671519386,41.62241735,-87.3972361672,42.036640212]. Returns JSON object. 

**Timelines.py:** Retrieves recent tweets (and other information from the original JSON object) from a static list of known Twitter users. Returns a 2D array with predetermined fields from the JSON object. 

**Twitter_keywords.py:** Retrieves all streaming tweets that contain one or more keywords from a static list. Returns JSON object.

