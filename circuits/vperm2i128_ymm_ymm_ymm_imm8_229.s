  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode               
.target:                                #        0     0      OPC=<label>          
  callq .move_256_128_ymm2_xmm10_xmm11  #  1     0     5      OPC=callq_label      
  vmovdqa %xmm11, %xmm2                 #  2     0x5   5      OPC=vmovdqa_xmm_xmm  
  callq .move_128_064_xmm2_r12_r13      #  3     0xa   5      OPC=callq_label      
  vzeroall                              #  4     0xf   3      OPC=vzeroall         
  callq .move_064_128_r12_r13_xmm2      #  5     0x12  5      OPC=callq_label      
  movapd %xmm2, %xmm1                   #  6     0x17  4      OPC=movapd_xmm_xmm   
  retq                                  #  7     0x1b  1      OPC=retq             
                                                                                   
.size target, .-target
