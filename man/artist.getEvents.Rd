\name{artist.getEvents}
\alias{artist.getEvents}

\title{API call to artist.getEvents} \description{API call to artist.getEvents}

\usage{
artist.getEvents(artist, key = lastkey, parse = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{artist}{Name of the artist, in quotes}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}

\value{
If parse = TRUE,
  \item{name}{Name of the event}
  \item{id}{Event ID}
  \item{date}{Event date}
  \item{headliner}{Event headliner - one artist}
  \item{venue}{Venue name}
  \item{city}{Venue city}
  \item{zip}{Venue zip code}
  \item{lat}{Venue latitude}
  \item{long}{Venue longitude}
  \item{artists}{all event artists. If more than one artist, returned as a list.}
If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}
\references{http://www.last.fm/api/show?service=117}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.
}
\examples{
res = artist.getEvents("Wilco")

#res$name[1:10]
#[1] "Two Nights With Wilco" "Two Nights With Wilco" "Wilco"                
#[4] "Wilco"                 "Wilco"                 "Wilco"                
#[7] "Wilco"                 "Wilco"                 "Wilco"                
#[10] "Wilco"                
}
