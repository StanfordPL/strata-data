  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode                     
.target:                             #        0    0      OPC=<label>                
  vunpckhps %xmm1, %xmm1, %xmm1      #  1     0    4      OPC=vunpckhps_xmm_xmm_xmm  
  callq .move_128_064_xmm1_r10_r11   #  2     0x4  5      OPC=callq_label            
  callq .move_032_064_r10d_r11d_rbx  #  3     0x9  5      OPC=callq_label            
  retq                               #  4     0xe  1      OPC=retq                   
                                                                                     
.size target, .-target
