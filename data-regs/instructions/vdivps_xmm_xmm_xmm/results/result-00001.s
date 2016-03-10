  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode               
.target:                          #        0     0      OPC=<label>          
  divps %xmm3, %xmm2              #  1     0     3      OPC=divps_xmm_xmm    
  callq .move_128_064_xmm2_r8_r9  #  2     0x3   5      OPC=callq_label      
  vzeroall                        #  3     0x8   3      OPC=vzeroall         
  callq .move_064_128_r8_r9_xmm2  #  4     0xb   5      OPC=callq_label      
  vmovdqa %ymm2, %ymm1            #  5     0x10  4      OPC=vmovdqa_ymm_ymm  
  retq                            #  6     0x14  1      OPC=retq             
                                                                             
.size target, .-target
