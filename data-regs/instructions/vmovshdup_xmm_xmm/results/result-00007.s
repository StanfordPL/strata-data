  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_064_xmm2_r8_r9                #  1     0     5      OPC=callq_label              
  vzeroall                                      #  2     0x5   3      OPC=vzeroall                 
  callq .move_064_128_r8_r9_xmm1                #  3     0x8   5      OPC=callq_label              
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  4     0xd   5      OPC=callq_label              
  vfmadd213pd %ymm7, %ymm12, %ymm6              #  5     0x12  5      OPC=vfmadd213pd_ymm_ymm_ymm  
  movdqa %xmm5, %xmm4                           #  6     0x17  4      OPC=movdqa_xmm_xmm           
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  7     0x1b  5      OPC=callq_label              
  retq                                          #  8     0x20  1      OPC=retq                     
                                                                                                   
.size target, .-target
