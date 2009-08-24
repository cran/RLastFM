\name{artist.getShouts}
\alias{artist.getShouts}

\title{API call to artist.getShouts} \description{API call to artist.getShouts}

\usage{
artist.getShouts(artist, key = lastkey, parse = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{artist}{Name of the artist, in quotes}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}

\value{
If parse = TRUE,
  \item{username}{Username}
  \item{shout}{Text of shout}
  \item{date}{Date that shout was entered}
If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}
\references{http://www.last.fm/api/show?service=397}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.}

\examples{

res = artist.getShouts(artist = "Wilco")

#length(res$shout)
#[1] 1124
}
