\name{user.getWeeklyChartList}
\alias{user.getWeeklyChartList}

\title{API call to user.getWeeklyChartList} \description{API call to user.getWeeklyChartList}

\usage{
user.getWeeklyChartList(username, key = lastkey, parse = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{username}{username}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}

\value{
a 2 column matrix containing values for from and to. Can be passed to
other user.getWeekly[xxx]Chart functions by indexing into matrix.
}
\references{http://www.last.fm/api/show?service=280}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling.}

\examples{
dates = user.getWeeklyChartList("monkeycatfm")
user.getWeeklyArtistChart("monkeycatfm", from = dates[1,1], to = dates[1,2])$artist[1]
#[1] "A Tribe Called Quest"
}
