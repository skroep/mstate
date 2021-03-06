\name{events}
\alias{events}
\title{Count number of observed transitions}
\description{
Given a dataset in long format, for instance generated by
\code{\link{msprep}}, and a transition matrix for the multi-state
model, this function counts the number of observed transitions
in the multi-state model and gives their percentages.
}
\usage{events(msdata)}
\arguments{
  \item{msdata}{An object of class \code{"msdata"}, such as output by
  \code{\link{msprep}}}
}
\details{
Although \code{msdata} does not need to be the result of a call to
\code{\link{msprep}}, it does need to be an object of class
\code{"msdata"}, which is essentially a data frame in long format,
with one row for each transition for which the subject is at risk.
The columns \code{from}, \code{to}, and \code{status} need to be
present, with appropriate meaning, see \code{\link{msprep}}. The
\code{msdata} argument needs to have a \code{"trans"} attributes,
which holds the transition matrix of the multi-state model.
}
\value{
A list containing two tables, the first, called \code{Frequencies},
with the number of observed transitions in the multi-state model
occurring in \code{msdata}, the second, called \code{Proportions},
with the corresponding proportions.
}
\author{Hein Putter \email{H.Putter@lumc.nl}}
\examples{
tmat <- trans.illdeath(names=c("Tx","PR","RelDeath"))
data(ebmt3) # data from Section 4 of Putter, Fiocco & Geskus (2007)
msebmt <- msprep(time=c(NA,"prtime","rfstime"),status=c(NA,"prstat","rfsstat"),
		data=ebmt3,trans=tmat)
events(msebmt) # see Fig 13 of Putter, Fiocco & Geskus (2007)
}
\keyword{univar}
