  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  movd %ebx, %xmm12               #  1     0     5      OPC=movd_xmm_r32            
  vrcpss %xmm12, %xmm1, %xmm0     #  2     0x5   5      OPC=vrcpss_xmm_xmm_xmm      
  vpbroadcastq %xmm12, %ymm7      #  3     0xa   5      OPC=vpbroadcastq_ymm_xmm    
  vpunpckhdq %xmm7, %xmm0, %xmm0  #  4     0xf   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  punpcklqdq %xmm0, %xmm1         #  5     0x13  4      OPC=punpcklqdq_xmm_xmm      
  retq                            #  6     0x17  1      OPC=retq                    
                                                                                    
.size target, .-target
