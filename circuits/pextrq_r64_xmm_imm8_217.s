  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                    
.target:                               #        0    0      OPC=<label>               
  vmovhlps %xmm1, %xmm1, %xmm1         #  1     0    4      OPC=vmovhlps_xmm_xmm_xmm  
  callq .move_128_64_xmm1_xmm12_xmm13  #  2     0x4  5      OPC=callq_label           
  vmovq %xmm12, %rbx                   #  3     0x9  5      OPC=vmovq_r64_xmm         
  retq                                 #  4     0xe  1      OPC=retq                  
                                                                                      
.size target, .-target
