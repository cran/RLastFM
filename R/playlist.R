#calls to playlist.*


playlist.fetch = function(playlistURL, key=lastkey, parse = TRUE){

  params = list(method = "playlist.fetch",
    playlistURL=playlistURL, api_key=key)

  params = params[!as.logical(lapply(params, is.na))]
  
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

    if(parse)
    doc = p.playlist.fetch(doc)

  return(doc)

}
