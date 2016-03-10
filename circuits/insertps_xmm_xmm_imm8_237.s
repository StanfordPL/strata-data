  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vunpckhps %xmm1, %xmm10, %xmm8       #  2     0x5   4      OPC=vunpckhps_xmm_xmm_xmm  
  vsqrtss %xmm8, %xmm10, %xmm9         #  3     0x9   5      OPC=vsqrtss_xmm_xmm_xmm    
  movdqu %xmm9, %xmm1                  #  4     0xe   5      OPC=movdqu_xmm_xmm         
  retq                                 #  5     0x13  1      OPC=retq                   
                                                                                        
.size target, .-target
