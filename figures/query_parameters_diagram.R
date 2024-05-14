library(DiagrammeR)

grViz("
digraph boxes_and_circles {

  graph [overlap = true]
  
  node [fontname = Helvetica,
        fontsize = 10]
        
  subgraph {    
  node [shape = rectangle,
  color = cornflowerblue]
  rank = same; 'rivername river'; cityname; }

  node [shape = rectangle,
        fontname = Helvetica,
        fontsize = 8,
        color = thistle]
  query; gl; hl; google_domain; cookies; 'number of results'; results

  subgraph{
  rank = same;
  node [shape = oval, style = filled, fillcolor = orange, fontcolor = white, color = white] 
  'Value Serp'
  
  node [shape = oval, style = filled, color = white, fillcolor = red, fontcolor = white]
  Google }

  'number of results' -> 'Value Serp'
  'query'-> 'Value Serp' [label = 'search query', fontname = Helvetica, fontsize = 8]
  'gl'-> 'Value Serp' [label = 'country', fontname = Helvetica, fontsize = 8]
  'hl'-> 'Value Serp' [label = 'UI language', fontname = Helvetica, fontsize = 8]
  'cookies'-> 'Value Serp' [label = 'no cookies', fontname = Helvetica, fontsize = 8]
  'google_domain'-> 'Value Serp' [label = 'e.g. \\n .com', fontname = Helvetica, fontsize = 8]
  'Value Serp' -> Google [label = '     webscraping    ',
                        fontname = Helvetica,
                        fontsize = 8]
  'Google' -> 'results'  
  {'rivername river', cityname} -> query [arrowhead = small]
  'rivername river' -> cityname [label = ' AND', color = white, fontname = Helvetica, fontsize = 8]
 } ")