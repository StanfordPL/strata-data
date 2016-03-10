  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vaddsubps %xmm2, %xmm1, %xmm13     #  1     0     4      OPC=vaddsubps_xmm_xmm_xmm    
  movsldup %xmm2, %xmm5              #  2     0x4   4      OPC=movsldup_xmm_xmm         
  vmovss %xmm1, %xmm2, %xmm8         #  3     0x8   4      OPC=vmovss_xmm_xmm_xmm       
  vsqrtss %xmm13, %xmm5, %xmm14      #  4     0xc   5      OPC=vsqrtss_xmm_xmm_xmm      
  vunpckhps %xmm1, %xmm14, %xmm0     #  5     0x11  4      OPC=vunpckhps_xmm_xmm_xmm    
  vpunpckhqdq %xmm2, %xmm0, %xmm9    #  6     0x15  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  callq .move_64_128_xmm8_xmm9_xmm1  #  7     0x19  5      OPC=callq_label              
  retq                               #  8     0x1e  1      OPC=retq                     
                                                                                        
.size target, .-target
