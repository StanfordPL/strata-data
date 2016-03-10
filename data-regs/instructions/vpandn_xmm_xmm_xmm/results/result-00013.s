  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                        
.target:                                          #        0     0      OPC=<label>                   
  vandnps %xmm3, %xmm2, %xmm3                     #  1     0     4      OPC=vandnps_xmm_xmm_xmm       
  callq .move_128_064_xmm3_r8_r9                  #  2     0x4   5      OPC=callq_label               
  vzeroall                                        #  3     0x9   3      OPC=vzeroall                  
  callq .move_064_128_r8_r9_xmm3                  #  4     0xc   5      OPC=callq_label               
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  5     0x11  5      OPC=callq_label               
  vfnmadd132pd %ymm12, %ymm2, %ymm1               #  6     0x16  5      OPC=vfnmadd132pd_ymm_ymm_ymm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  7     0x1b  5      OPC=callq_label               
  retq                                            #  8     0x20  1      OPC=retq                      
                                                                                                      
.size target, .-target
