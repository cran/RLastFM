\name{user.getWeeklyTrackChart}
\alias{user.getWeeklyTrackChart}

\title{API call to user.getWeeklyTrackChart} \description{API call to user.getWeeklyTrackChart}

\usage{
user.getWeeklyTrackChart(username, from = NA, to = NA, key = lastkey, parse = TRUE)
}

\arguments{
  \item{username}{username}
  \item{from}{from, see \code{\link{user.getWeeklyChartList}}}
  \item{to}{to, see \code{\link{user.getWeeklyChartList}}}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}

\value{
If parse = TRUE,
  \item{track}{name of the track}
  \item{artist}{name of the artist}
  \item{artmbid}{mbid for the artist}
  \item{playcount}{reported playcount}
If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}

\references{http://www.last.fm/api/show?service=282}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.}

\examples{
dates = user.getWeeklyChartList("monkeycatfm")
max(user.getWeeklyTrackChart("monkeycatfm", from = dates[1,1], to = dates[1,2])$playcount)

}
