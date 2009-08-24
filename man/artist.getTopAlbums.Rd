\name{artist.getTopAlbums}
\alias{artist.getTopAlbums}

\title{API call to artist.getTopAlbums} \description{API call to artist.getTopAlbums}

\usage{
artist.getTopAlbums(artist, mbid = NA, key = lastkey, parse = TRUE)
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
  \item{album}{name of the album}
  \item{mbid}{mbid of the album}
  \item{playcount}{Reported album playcount}
  \item{rank}{last.fm statistic. Ranks the albums of an artist. Does not correspond strictly to playcount.}
If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}
\references{http://www.last.fm/api/show?service=287}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.}

\examples{
res = artist.getTopAlbums("Wilco")
#res$album[1:10]
# [1] "Yankee Hotel Foxtrot" "Sky Blue Sky"         "A Ghost Is Born"     
# [4] "Summerteeth"          "Being There (disc 1)" "Being There (disc 2)"
# [7] "A.M."                 "Summer Teeth"         "Being There"         
#[10] "Being There [disc 1]"
#res$playcount[1:10]
# [1] "678920" "538416" "282167" "243394" "65417"  "40064"  "117113" "72469" 
# [9] "71899"  "31195" 
}

