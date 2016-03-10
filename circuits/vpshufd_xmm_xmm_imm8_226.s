  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  vunpcklps %xmm2, %xmm13, %xmm12      #  2     0x5   4      OPC=vunpcklps_xmm_xmm_xmm  
  vmovupd %xmm2, %xmm1                 #  3     0x9   4      OPC=vmovupd_xmm_xmm        
  callq .move_64_128_xmm12_xmm13_xmm1  #  4     0xd   5      OPC=callq_label            
  retq                                 #  5     0x12  1      OPC=retq                   
                                                                                        
.size target, .-target
