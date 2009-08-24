\name{event.getInfo}
\alias{event.getInfo}

\title{API call to event.getInfo} \description{API call to event.getInfo}

\usage{
event.getInfo(event, key = lastkey, parse = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{event}{Event ID. Can be found using artist.getEvents. See example.}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}

\value{
If parse = TRUE,
  \item{event}{Event name}
  \item{headliner}{Event headliner. One artist.}
  \item{venue}{Venue name}
  \item{street}{Venue street address}
  \item{city}{Venue city}
  \item{postalcode}{Venue postal code}
  \item{country}{Venue country}
  \item{lat}{Venue latitude}
  \item{long}{Venue longitude}
  \item{artists}{If more than one artist is playing at event, a list of all artists.}
If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}
\references{http://www.last.fm/api/show?service=292}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.}

\examples{
res = event.getInfo(artist.getEvents("Wilco")$id[1])
#with(res, paste(c(venue, street, city, postalcode), collapse = ", "))
}
