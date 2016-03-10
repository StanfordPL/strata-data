  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vpmovzxwd %xmm1, %xmm3      #  1     0     5      OPC=vpmovzxwd_xmm_xmm   
  vminss %xmm1, %xmm1, %xmm5  #  2     0x5   4      OPC=vminss_xmm_xmm_xmm  
  addpd %xmm3, %xmm5          #  3     0x9   4      OPC=addpd_xmm_xmm       
  pandn %xmm5, %xmm5          #  4     0xd   4      OPC=pandn_xmm_xmm       
  pmovzxbq %xmm5, %xmm1       #  5     0x11  5      OPC=pmovzxbq_xmm_xmm    
  retq                        #  6     0x16  1      OPC=retq                
                                                                            
.size target, .-target
