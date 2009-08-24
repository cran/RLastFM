\name{user.getWeeklyArtistChart}
\alias{user.getWeeklyArtistChart}

\title{API call to user.getWeeklyArtistChart} \description{API call to user.getWeeklyArtistChart}

\usage{
user.getWeeklyArtistChart(username, from = NA, to = NA, key = lastkey, parse = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{username}{username}
  \item{from}{from, see \code{\link{user.getWeeklyChartList}}}
  \item{to}{to, see \code{\link{user.getWeeklyChartList}}}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}

\value{
If parse = TRUE,
  \item{artist}{name of the artist}
  \item{artmbid}{mbid for the artist}
  \item{playcount}{reported playcount}
If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}

\references{http://www.last.fm/api/show?service=281}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.}

\examples{
dates = user.getWeeklyChartList("monkeycatfm")
user.getWeeklyArtistChart("monkeycatfm", from = dates[1,1], to = dates[1,2])$artist[1]
#[1] "A Tribe Called Quest"
}
