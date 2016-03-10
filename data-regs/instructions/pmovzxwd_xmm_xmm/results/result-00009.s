  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vpmovzxwd %xmm2, %xmm7  #  1     0    5      OPC=vpmovzxwd_xmm_xmm  
  movapd %xmm7, %xmm1     #  2     0x5  4      OPC=movapd_xmm_xmm     
  retq                    #  3     0x9  1      OPC=retq               
                                                                      
.size target, .-target
