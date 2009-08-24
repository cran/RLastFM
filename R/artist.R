#calls to artist.*
############
artist.getEvents = function(artist, key = lastkey, parse = TRUE){
  
  params = list(method="artist.getevents", artist = artist,
    api_key=key)

  params = params[!as.logical(lapply(params, is.na))]
        
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.art.getevents(doc)

  return(doc)

}
############
artist.getInfo = function(artist, mbid=NA, key = lastkey, parse = TRUE){
  
  params = list(method="artist.getinfo", artist = artist,
    mbid=mbid, api_key=key)

  params = params[!as.logical(lapply(params, is.na))]
  
  if(!is.na(mbid))
      params=params[c(1, length(params), (which(names(params)=="mbid")))]
        
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.art.getinfo(doc)

  return(doc)
}
#############
artist.getTopAlbums = function(artist, mbid=NA, key = lastkey, parse = TRUE){
  
  params = list(method="artist.gettopalbums", artist = artist,
    mbid=mbid, api_key=key)

  params = params[!as.logical(lapply(params, is.na))]
  
  if(!is.na(mbid))
      params=params[c(1, length(params), (which(names(params)=="mbid")))]
      
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.art.gettopalbums(doc)

  return(doc)
}
#############
artist.getShouts = function(artist, key = lastkey, parse = TRUE){
  
  params = list(method="artist.getshouts", artist = artist,
    api_key=key)

  params = params[!as.logical(lapply(params, is.na))]
        
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.art.getshouts(doc)

  return(doc)
}
#############
artist.getSimilar = function(artist, limit=NA, key = lastkey, parse = TRUE){
  
  params = list(method="artist.getsimilar", artist = artist,
    limit=limit, api_key=key)

  params = params[!as.logical(lapply(params, is.na))]
        
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.art.getsimilar(doc)

  return(doc)
}
##############
artist.getTopFans = function(artist, mbid=NA, key = lastkey, parse = TRUE){
  
  params = list(method="artist.gettopfans", artist = artist,
    mbid=mbid, api_key=key)

  params = params[!as.logical(lapply(params, is.na))]

  if(!is.na(mbid))
      params=params[c(1, length(params), (which(names(params)=="mbid")))]

      
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.art.gettopfans(doc)

  return(doc)
}
##########
artist.getTopTracks = function(artist, mbid=NA, key = lastkey, parse = TRUE){
  
  params = list(method="artist.gettoptracks", artist = artist,
    mbid=mbid, api_key=key)

  params = params[!as.logical(lapply(params, is.na))]
  
  if(!is.na(mbid))
      params=params[c(1, length(params), (which(names(params)=="mbid")))]

       
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.art.gettoptracks(doc)

  return(doc)
}
############
artist.getTopTags = function(artist, mbid=NA, key = lastkey, parse = TRUE){
  
  params = list(method="artist.gettoptags", artist = artist,
    mbid=mbid, api_key=key)

  params = params[!as.logical(lapply(params, is.na))]

  if(!is.na(mbid))
      params=params[c(1, length(params), (which(names(params)=="mbid")))]
      
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.art.gettoptags(doc)

  return(doc)
}
############
artist.search = function(searchterm, limit = NA, page = NA, key = lastkey, parse = TRUE){
  
  params = list(method="artist.search", artist = searchterm,
    limit=limit, page=page, api_key=key)

  params = params[!as.logical(lapply(params, is.na))]
    
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.art.search(doc)

  return(doc)
}
