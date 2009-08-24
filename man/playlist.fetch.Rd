\name{playlist.fetch}
\alias{playlist.fetch}

\title{Fetch contents of a lastfm:// playlist} \description{Fetch contents of a lastfm:// playlist}

\usage{
playlist.fetch(playlistURL, key = lastkey, parse = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{playlistURL}{playlist URL of the form lastfm://....}
  \item{key}{API key, defaults to global variable lastkey}
  \item{parse}{Parse the returned XML into a list?}
}

\value{
If parse = TRUE,
  \item{title}{track title}
  \item{artist}{track artist}
If parse = FALSE,
a object of type "XMLInternalDocument" and "XMLAbstractDocument"
}
\references{http://www.last.fm/api/show?service=271}
\author{Greg Hirson <ghirson@ucdavis.edu>}
\note{API is sensitive to spelling errors.
}

\examples{
playlist.fetch("lastfm://playlist/album/2026126")
}
