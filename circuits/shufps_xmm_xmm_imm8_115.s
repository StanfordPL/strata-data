  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vunpcklps %xmm1, %xmm1, %xmm4    #  1     0     4      OPC=vunpcklps_xmm_xmm_xmm    
  movshdup %xmm1, %xmm0            #  2     0x4   4      OPC=movshdup_xmm_xmm         
  vbroadcastss %xmm4, %xmm13       #  3     0x8   5      OPC=vbroadcastss_xmm_xmm     
  vpunpckhqdq %xmm0, %xmm2, %xmm4  #  4     0xd   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  punpckldq %xmm2, %xmm4           #  5     0x11  4      OPC=punpckldq_xmm_xmm        
  unpckhps %xmm13, %xmm1           #  6     0x15  4      OPC=unpckhps_xmm_xmm         
  punpckhqdq %xmm4, %xmm1          #  7     0x19  4      OPC=punpckhqdq_xmm_xmm       
  retq                             #  8     0x1d  1      OPC=retq                     
                                                                                      
.size target, .-target
