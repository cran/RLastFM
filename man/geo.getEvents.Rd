\name{geo.getEvents}
\alias{geo.getEvents}

\title{API call to geo.getEvents} \description{API call to geo.getEvents}

\usage{
geo.getEvents(location = NA, lat = NA, long = NA, page = NA, distance = NA, key = lastkey, parse = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{location}{Location to find events. Accepts city, state, and country arguments.}
  \item{lat}{Latitude to find events}
  \item{long}{Longitude to find events}
  \item{page}{Results are paginated. If more than the default 10 results are desired, choose a subsequent page.}
  \item{distance}{Distance from location or lat/long to search for events}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}

\value{
If parse = TRUE,
  \item{eventid}{Event ID}
  \item{title}{Event name}
  \item{headliner}{Headliner. One artist.}
  \item{venue}{Venue name}
  \item{venueid}{Venue ID}
  \item{city}{Venue city}
  \item{zip}{Venue postal code}
  \item{lat}{Venue latitude}
  \item{long}{Venue longitude}
  \item{artists}{If more than one artist is playing at event, a list of all artists.}
If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}
\references{http://www.last.fm/api/show?service=270}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.}

\examples{
res = geo.getEvents("Davis, CA")
#res$venue
}

