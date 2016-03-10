  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode                     
.target:                             #        0    0      OPC=<label>                
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0    5      OPC=callq_label            
  vunpcklpd %xmm2, %xmm9, %xmm7      #  2     0x5  4      OPC=vunpcklpd_xmm_xmm_xmm  
  vmovdqu %xmm7, %xmm1               #  3     0x9  4      OPC=vmovdqu_xmm_xmm        
  retq                               #  4     0xd  1      OPC=retq                   
                                                                                     
.size target, .-target
