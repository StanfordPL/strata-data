  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_064_xmm2_r8_r9                  #  1     0     5      OPC=callq_label              
  movswl %r8w, %r9d                               #  2     0x5   4      OPC=movswl_r32_r16           
  vzeroall                                        #  3     0x9   3      OPC=vzeroall                 
  callq .move_064_128_r8_r9_xmm1                  #  4     0xc   5      OPC=callq_label              
  callq .move_128_64_xmm1_xmm8_xmm9               #  5     0x11  5      OPC=callq_label              
  callq .move_128_64_xmm1_xmm10_xmm11             #  6     0x16  5      OPC=callq_label              
  vfmadd132pd %ymm5, %ymm8, %ymm11                #  7     0x1b  5      OPC=vfmadd132pd_ymm_ymm_ymm  
  vfmsub132pd %ymm3, %ymm1, %ymm9                 #  8     0x20  5      OPC=vfmsub132pd_ymm_ymm_ymm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  9     0x25  5      OPC=callq_label              
  retq                                            #  10    0x2a  1      OPC=retq                     
                                                                                                     
.size target, .-target
