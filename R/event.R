#calls to event.*

event.getInfo = function(event, key = lastkey, parse = TRUE){
  
  params = list(method="event.getinfo", event=event,
    api_key=key)

  params = params[!as.logical(lapply(params, is.na))]
        
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.event.getinfo(doc)

  return(doc)
}

event.getShouts = function(event, key = lastkey, parse = TRUE){
  
  params = list(method="event.getshouts", event=event,
    api_key=key)

  params = params[!as.logical(lapply(params, is.na))]
        
  ret = getForm(baseurl, .params=params)
  doc = xmlParse(ret, asText = TRUE)

  if(parse)
    doc = p.event.getshouts(doc)

  return(doc)
}

