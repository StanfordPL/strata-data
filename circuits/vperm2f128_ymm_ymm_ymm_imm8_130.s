  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                    
.target:                            #        0     0      OPC=<label>               
  callq .move_128_064_xmm3_r10_r11  #  1     0     5      OPC=callq_label           
  movq %r11, %xmm6                  #  2     0x5   5      OPC=movq_xmm_r64          
  vmovlhps %xmm6, %xmm6, %xmm1      #  3     0xa   4      OPC=vmovlhps_xmm_xmm_xmm  
  callq .move_064_128_r10_r11_xmm1  #  4     0xe   5      OPC=callq_label           
  retq                              #  5     0x13  1      OPC=retq                  
                                                                                    
.size target, .-target
