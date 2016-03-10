  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP  Bytes  Opcode                        
.target:                             #        0    0      OPC=<label>                   
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0    5      OPC=callq_label               
  movsd %xmm2, %xmm1                 #  2     0x5  4      OPC=movsd_xmm_xmm             
  vfnmadd231sd %xmm3, %xmm8, %xmm1   #  3     0x9  5      OPC=vfnmadd231sd_xmm_xmm_xmm  
  retq                               #  4     0xe  1      OPC=retq                      
                                                                                        
.size target, .-target
