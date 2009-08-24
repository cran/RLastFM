\name{artist.getTopTracks}
\alias{artist.getTopTracks}

\title{API call to artist.getTopTrack} \description{API call to artist.getTopTrack}

\usage{
artist.getTopTracks(artist, mbid = NA, key = lastkey, parse = TRUE)
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
  \item{track}{Track title}
  \item{playcount}{Reported playcount}
  \item{rank}{Rank. Not necessarily in order of playcount.}
If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}
\references{http://www.last.fm/api/show?service=277}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.}

\examples{
res = artist.getTopTracks("Wilco")
#res[[1]][1:10]
# [1] "Kamera"                          "Jesus, etc."                    
# [3] "War On War"                      "Heavy Metal Drummer"            
# [5] "I Am Trying to Break Your Heart" "Pot Kettle Black"               
# [7] "I'm the Man Who Loves You"       "Impossible Germany"             
# [9] "Ashes of American Flags"         "Radio Cure"                     
#res[[2]][1:10]

}
