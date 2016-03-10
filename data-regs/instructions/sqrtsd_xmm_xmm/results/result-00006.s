  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode                     
.target:                             #        0     0      OPC=<label>                
  vsqrtpd %xmm2, %xmm8               #  1     0     4      OPC=vsqrtpd_xmm_xmm        
  vunpcklpd %xmm1, %xmm1, %xmm10     #  2     0x4   4      OPC=vunpcklpd_xmm_xmm_xmm  
  vmovhlps %xmm1, %xmm10, %xmm9      #  3     0x8   4      OPC=vmovhlps_xmm_xmm_xmm   
  callq .move_64_128_xmm8_xmm9_xmm1  #  4     0xc   5      OPC=callq_label            
  retq                               #  5     0x11  1      OPC=retq                   
                                                                                      
.size target, .-target
