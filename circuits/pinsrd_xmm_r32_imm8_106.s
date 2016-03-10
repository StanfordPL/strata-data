  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  movd %ebx, %xmm15                #  1     0     5      OPC=movd_xmm_r32            
  vpbroadcastd %xmm15, %ymm3       #  2     0x5   5      OPC=vpbroadcastd_ymm_xmm    
  vpunpckhdq %xmm1, %xmm3, %xmm14  #  3     0xa   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  punpckhqdq %xmm1, %xmm14         #  4     0xe   5      OPC=punpckhqdq_xmm_xmm      
  unpcklpd %xmm14, %xmm1           #  5     0x13  5      OPC=unpcklpd_xmm_xmm        
  retq                             #  6     0x18  1      OPC=retq                    
                                                                                     
.size target, .-target
