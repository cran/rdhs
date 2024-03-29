% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/authentication.R
\name{authenticate_dhs}
\alias{authenticate_dhs}
\title{DHS Website Authentication}
\usage{
authenticate_dhs(config)
}
\arguments{
\item{config}{Object of class `rdhs_config` as produced by `read_rdhs_config`
that must contain a valid `email`, `project` and `password`.}
}
\value{
Returns list of length 3:
  \itemize{
      \item user_name: your email usually
      \item user_pass: your password you provided
      \item proj_id: your project number
      }
}
\description{
Authenticate Users for DHS website
}
\details{
If the user has more than one project that contains the first
  30 characters of the provided project they will be prompted to choose
  which project they want. This choice will be saved so they do
  not have to enter it again in this R session.
}
\note{
Credit for some of the function to
  \url{https://github.com/ajdamico/lodown/blob/master/R/dhs.R}
}
