#functions for album. calls

album.getInfo = function(album=NA, artist=NA, mbid=NA, key = lastkey, parse = TRUE){
  
  params = list(method="album.getinfo", artist = artist,
    album=album, mbid=mbid, api_key=lastkey)

  params = params[!as.logical(lapply(params, is.na))]
  
  if(!is.na(mbid))
      params=params[c(1, length(params), (which(names(params)=="mbid")))]

  
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)
  if(parse)
    doc = p.alb.getinfo(doc)

  return(doc)
}

album.search = function(searchterm, key = lastkey, limit = NA, parse = TRUE){
  
  params = list(method="album.search", album = searchterm,
    limit=limit, api_key=lastkey)

  params = params[!as.logical(lapply(params, is.na))]

  
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.alb.search(doc)

  return(doc)

}

