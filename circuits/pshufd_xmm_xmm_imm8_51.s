  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vpbroadcastd %xmm2, %xmm8       #  1     0     5      OPC=vpbroadcastd_xmm_xmm    
  vpunpckhdq %xmm8, %xmm2, %xmm2  #  2     0x5   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  movups %xmm2, %xmm1             #  3     0xa   3      OPC=movups_xmm_xmm          
  unpckhpd %xmm1, %xmm1           #  4     0xd   4      OPC=unpckhpd_xmm_xmm        
  retq                            #  5     0x11  1      OPC=retq                    
                                                                                    
.size target, .-target
