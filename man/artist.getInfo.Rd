\name{artist.getInfo}
\alias{artist.getInfo}

\title{API call to artist.getInfo} \description{API call to artist.getInfo}

\usage{
artist.getInfo(artist, mbid = NA, key = lastkey, parse = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{artist}{Name of the artist, in quotes}
  \item{mbid}{Optionally, use the artist mbid instead and artist}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}

\value{
If parse = TRUE,
  \item{artist}{Artist's name}
  \item{mbid}{Artist mbid}
  \item{listners}{Reported number os listeners}
  \item{playcount}{Reported playcount}
  \item{similar}{List of similar artists}
If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}
\references{http://www.last.fm/api/show?service=267}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling errors.
}

\examples{
res = artist.getInfo(artist = "Wilco")

#res$playcount
#[1] "21650801"
}
