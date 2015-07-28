#' @include ggproto.r
NULL

#' Base ggproto classes for ggplot2
#'
#' If you are creating a new geom, stat or positions in another package, you'll
#' need to extend from \code{ggplot2::Geom}, \code{ggplot2::Stat} or
#' \code{ggplot2::Position}.
#'
#' @section Geoms:
#'
#' All \code{geom_*} functions (like \code{geom_point}) return a layer that
#' contains a \code{Geom*} object (like \code{GeomPoint}). The \code{Geom*}
#' object is responsible for rendering the data in the plot.
#'
#' Each of the \code{Geom*} objects is a \code{\link{ggproto}} object, descended
#' from the top-level \code{Geom}, and each implements various methods and
#' fields. To create a new type of Geom object, you typically will want to
#' implement one or more of the following:
#'
#' \itemize{
#'   \item \code{draw}: Renders a single group from the data. Should return
#'     a grid grob.
#'   \item \code{draw_groups}: Renders all groups. The method typically calls
#'     \code{draw} for each group.
#'   \item \code{draw_key}: Renders a single legend key.
#'   \item \code{required_aes}: A character vector of aesthetics needed to
#'     render the geom.
#'   \item \code{default_aes}: A list (generated by \code{\link{aes}()} of
#'     default values for aesthetics.
#'   \item \code{reparameterise}: Converts width and height to xmin and xmax,
#'     and ymin and ymax values. It can potentially set other values as well.
#' }
#'
#'
#' @section Stats:
#'
#' All \code{stat_*} functions (like \code{stat_bin}) return a layer that
#' contains a \code{Stat*} object (like \code{StatBin}). The \code{Stat*}
#' object is responsible for rendering the data in the plot.
#'
#' Each of the \code{Stat*} objects is a \code{\link{ggproto}} object, descended
#' from the top-level \code{Stat}, and each implements various methods and
#' fields. To create a new type of Stat object, you typically will want to
#' implement one or more of the following:
#'
#' \itemize{
#'   \item \code{calculate}: Calculates a stat for a single group of data.
#'   \item \code{calculate_groups}: Calculates stat for all groups. The method
#'     typically calls \code{calculate} for each group.
#'   \item \code{required_aes}: A character vector of aesthetics needed to
#'     render the geom.
#'   \item \code{default_aes}: A list (generated by \code{\link{aes}()} of
#'     default values for aesthetics.
#' }
#'
#'
#' @section Positions:
#'
#' All \code{position_*} functions (like \code{position_dodge}) return a
#' \code{Position*} object (like \code{PositionDodge}). The \code{Position*}
#' object is responsible for adjusting the position of overlapping geoms.
#'
#' The way that the \code{position_*} functions work is slightly different from
#' the \code{geom_*} and \code{stat_*} functions, because a \code{position_*}
#' function actually "instantiates" the \code{Position*} object by creating a
#' descendant, and returns that.
#'
#' Each of the \code{Position*} objects is a \code{\link{ggproto}} object,
#' descended from the top-level \code{Position}, and each implements the
#' following method:
#'
#' \itemize{
#'   \item \code{adjust}: Adjusts the position of overlapping geoms.
#' }
#'

#'
#' @section Coordinate systems:
#'
#' All \code{coord_*} functions (like \code{coord_trans}) return a \code{Coord*}
#' object (like \code{CoordTrans}). The \code{Coord*} object is responsible for
#' adjusting the position of overlapping geoms.
#'
#' The way that the \code{coord_*} functions work is slightly different from the
#' \code{geom_*} and \code{stat_*} functions, because a \code{coord_*} function
#' actually "instantiates" the \code{Coord*} object by creating a descendant,
#' and returns that.
#'
#' Each of the \code{Coord*} objects is a \code{\link{ggproto}} object,
#' descended from the top-level \code{Coord}.  To create a new type of Coord
#' object, you typically will want to implement one or more of the following:

#'
#' \itemize{
#'   \item \code{aspect}: Returns the desired aspect ratio for the plot.
#'   \item \code{labels}: Returns a list containing labels for x and y.
#'   \item \code{render_fg}: Renders foreground elements.
#'   \item \code{render_bg}: Renders background elements.
#'   \item \code{render_axis_h}: Renders the horizontal axis.
#'   \item \code{render_axis_v}: Renders the vertical axis.
#'   \item \code{range}: Returns the x and y ranges
#'   \item \code{train}: Return the trained scale ranges.
#'   \item \code{transform}: Transforms x and y coordinates.
#'   \item \code{distance}: Calculates distance.
#'   \item \code{is_linear}: Returns \code{TRUE} if the coordinate system is
#'     linear; \code{FALSE} otherwise.
#'   \item \code{expand_defaults}: Expands the default ranges.
#' }
#'
#' @seealso ggproto
#' @keywords internal
#' @name ggplot2-ggproto
NULL
