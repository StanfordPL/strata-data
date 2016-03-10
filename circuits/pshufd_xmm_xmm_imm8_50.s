  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP  Bytes  Opcode                      
.target:                          #        0    0      OPC=<label>                 
  vbroadcastss %xmm2, %ymm0       #  1     0    5      OPC=vbroadcastss_ymm_xmm    
  vpunpckhdq %xmm0, %xmm2, %xmm7  #  2     0x5  4      OPC=vpunpckhdq_xmm_xmm_xmm  
  movdqu %xmm7, %xmm1             #  3     0x9  4      OPC=movdqu_xmm_xmm          
  retq                            #  4     0xd  1      OPC=retq                    
                                                                                   
.size target, .-target
