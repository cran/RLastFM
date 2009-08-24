\name{venue.getEvents}
\alias{venue.getEvents}

\title{API call to venue.getEvents} \description{API call to venue.getEvents}

\usage{
venue.getEvents(venueid, key = lastkey, parse = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{venueid}{venue ID. see \code{link{venue.search}}}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}

\value{
If parse = TRUE,
  \item{title}{event name} 
  \item{headliner}{headliner}
  \item{eventid}{event ID}
  
  If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}
\references{http://www.last.fm/api/show?service=301}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.}

\examples{
#From API documentation
venue.getEvents(8908030)
}

