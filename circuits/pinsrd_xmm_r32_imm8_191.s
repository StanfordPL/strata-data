  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  movd %ebx, %xmm13               #  1     0     5      OPC=movd_xmm_r32            
  vpbroadcastq %xmm13, %xmm0      #  2     0x5   5      OPC=vpbroadcastq_xmm_xmm    
  vpunpckhdq %xmm0, %xmm1, %xmm7  #  3     0xa   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  punpcklqdq %xmm7, %xmm1         #  4     0xe   4      OPC=punpcklqdq_xmm_xmm      
  retq                            #  5     0x12  1      OPC=retq                    
                                                                                    
.size target, .-target
