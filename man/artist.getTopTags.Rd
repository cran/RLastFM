\name{artist.getTopTags}
\alias{artist.getTopTags}

\title{API call to artist.getTopTags} \description{API call to artist.getTopTags}

\usage{
artist.getTopTags(artist, mbid = NA, key = lastkey, parse = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{artist}{Name of the artist, in quotes}
  \item{mbid}{Optionally, use the artist mbid instead of artist}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}

\value{
If parse = TRUE,
  \item{tag}{name of tag}
  \item{count}{tag count, normalized to most popular tag = 100.}
If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}
\references{http://www.last.fm/api/show?service=288}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.}

\examples{
res = artist.getTopTags("Wilco")

#res[[1]][1:10]
# [1] "indie"             "Alt-country"       "indie rock"       
# [4] "rock"              "alternative"       "folk"             
# [7] "americana"         "wilco"             "singer-songwriter"
#[10] "indie pop"        
#res[[2]][1:10]
# [1] "100" "99"  "59"  "45"  "43"  "33"  "22"  "9"   "7"   "7"  
}
