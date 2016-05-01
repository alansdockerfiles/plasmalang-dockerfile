from sebgod/mercury-stable                                                                                                                                                                    

RUN apt-get update                                                                                                                                                                            
RUN apt-get install -y vim                                                                                                                                                                    
RUN apt-get install -y --no-install-recommends asciidoc                                                                                                                                       
RUN apt-get install -y asciidoc                                                                                                                                                               
RUN git clone https://github.com/PaulBone/plasma.git                                                                                                                                          
RUN git clone https://github.com/PaulBone/plasma-website.git                                                                                                                                  
RUN cp -r plasma-website/images-original/ plasma-website/images                                                                                                                               
RUN apt-get install -y ctags                                                                                                                                                                  
RUN cd plasma && make                                                                                                                                                                         
RUN plasma/src/plasmac plasma/examples/hello.p                                                                                                                                                
RUN plasma/runtime/pzrun plasma/examples/hello.pz                                                                                                                                             
ENTRYPOINT 'bash' 
