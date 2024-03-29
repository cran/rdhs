% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ui.R
\name{get_datasets}
\alias{get_datasets}
\title{Get Datasets}
\usage{
get_datasets(
  dataset_filenames,
  download_option = "rds",
  reformat = FALSE,
  all_lower = TRUE,
  output_dir_root = NULL,
  clear_cache = FALSE,
  ...
)
}
\arguments{
\item{dataset_filenames}{The desired filenames to be downloaded. These can be
found as one of the returned fields from \code{\link{dhs_datasets}}.
Alternatively you can also pass the desired rows from
\code{\link{dhs_datasets}}.}

\item{download_option}{Character specifying whether the dataset should be
just downloaded ("zip"), imported and saved as an .rds object ("rds"), or
both extract and rds ("both"). Conveniently you can just specify any letter
from these options.}

\item{reformat}{Boolean concerning whether to reformat read in datasets by
removing all factors and labels. Default = FALSE.}

\item{all_lower}{Logical indicating whether all value labels should be lower
case. Default to `TRUE`.}

\item{output_dir_root}{Root directory where the datasets will be stored
within. The default will download
datasets to a subfolder of the client root called "datasets"}

\item{clear_cache}{Should your available datasets cache be cleared first.
This will allow newly accessed datasets to be available. Default = `FALSE`}

\item{...}{Any other arguments to be passed to \code{\link{read_dhs_dataset}}}
}
\value{
Depends on the download_option requested, but ultimately it is a file
  path to where the dataset was downloaded to, so that you can interact with
  it accordingly.
}
\description{
Downloads datasets you have access to from the DHS website
}
\details{
Gets datasets from your cache or downloads from the DHS website.
  By providing the filenames, as specified in one of the returned fields
  from \code{\link{dhs_datasets}}, the client will log in for you and download
  all the files you have requested. If any of the requested files are
  unavailable for your log in, these will be flagged up first as a message so
  you can make a note and request them through the DHS website. You also have
  the option to control whether the downloaded zip file is then extracted and
  converted into a more convenient R \code{data.frame}. This converted object
  will then be subsequently saved as a ".rds" object within the client root
  directory datasets folder, which can then be more quickly loaded when
  needed with \code{readRDS}. You also have the option to reformat the
  dataset, which will ensure that the datasets returned are encoded simply
  as character strings, i.e. there are no factors or labels.
}
\examples{
 \dontrun{
# get the model datasets included with the package
model_datasets <- model_datasets

# download one of them
g <- get_datasets(dataset_filenames = model_datasets$FileName[1])
}
}
