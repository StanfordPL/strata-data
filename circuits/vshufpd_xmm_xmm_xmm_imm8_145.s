  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP  Bytes  Opcode                    
.target:                             #        0    0      OPC=<label>               
  unpckhpd %xmm3, %xmm2              #  1     0    4      OPC=unpckhpd_xmm_xmm      
  callq .move_128_64_xmm2_xmm8_xmm9  #  2     0x4  5      OPC=callq_label           
  vmovlhps %xmm3, %xmm8, %xmm1       #  3     0x9  4      OPC=vmovlhps_xmm_xmm_xmm  
  retq                               #  4     0xd  1      OPC=retq                  
                                                                                    
.size target, .-target
