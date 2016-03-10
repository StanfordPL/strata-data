  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                    
.target:                               #        0    0      OPC=<label>               
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0    5      OPC=callq_label           
  vpbroadcastq %xmm13, %ymm0           #  2     0x5  5      OPC=vpbroadcastq_ymm_xmm  
  vmovq %xmm0, %rbx                    #  3     0xa  5      OPC=vmovq_r64_xmm         
  retq                                 #  4     0xf  1      OPC=retq                  
                                                                                      
.size target, .-target
