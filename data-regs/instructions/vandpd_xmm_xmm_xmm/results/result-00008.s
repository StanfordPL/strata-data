  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  andps %xmm2, %xmm3                #  1     0     3      OPC=andps_xmm_xmm    
  callq .move_128_064_xmm3_r10_r11  #  2     0x3   5      OPC=callq_label      
  vzeroall                          #  3     0x8   3      OPC=vzeroall         
  callq .move_064_128_r10_r11_xmm2  #  4     0xb   5      OPC=callq_label      
  vmovupd %ymm2, %ymm1              #  5     0x10  4      OPC=vmovupd_ymm_ymm  
  retq                              #  6     0x14  1      OPC=retq             
                                                                               
.size target, .-target
