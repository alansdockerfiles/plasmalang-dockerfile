from sebgod/mercury-stable                                                                                                                                                                    

RUN ls
RUN apt-get update                                                                                                                                                                            
RUN apt-get install -y vim                                                                                                                                                                    
RUN apt-get install -y --no-install-recommends asciidoc                                                                                                                                       
RUN apt-get install -y asciidoc                                                                                                                                                               
RUN apt-get install -y imagemagick
RUN apt-get install -y bundler

RUN git clone https://github.com/PaulBone/plasma.git                                                                                                                                          
RUN git clone https://github.com/PaulBone/plasma-website.git                                                                                                                                  
RUN apt-get install -y ctags                                                                                                                                                                  
RUN cd plasma && make                                                                                                                                                                         
RUN plasma/src/plasmac plasma/examples/hello.p                                                                                                                                                
RUN plasma/runtime/pzrun plasma/examples/hello.pz                                                                                                                                             
ENTRYPOINT ["/bin/bash"]
