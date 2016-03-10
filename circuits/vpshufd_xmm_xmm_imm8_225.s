  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                     
.target:                             #        0     0      OPC=<label>                
  vmovshdup %xmm2, %xmm10            #  1     0     4      OPC=vmovshdup_xmm_xmm      
  callq .move_128_64_xmm2_xmm8_xmm9  #  2     0x4   5      OPC=callq_label            
  vunpcklps %xmm2, %xmm10, %xmm15    #  3     0x9   4      OPC=vunpcklps_xmm_xmm_xmm  
  vunpckhpd %xmm2, %xmm9, %xmm4      #  4     0xd   4      OPC=vunpckhpd_xmm_xmm_xmm  
  vorpd %ymm4, %ymm15, %ymm4         #  5     0x11  4      OPC=vorpd_ymm_ymm_ymm      
  vmovlhps %xmm9, %xmm4, %xmm1       #  6     0x15  5      OPC=vmovlhps_xmm_xmm_xmm   
  retq                               #  7     0x1a  1      OPC=retq                   
                                                                                      
.size target, .-target
