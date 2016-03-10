  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  callq .move_128_064_xmm2_r8_r9    #  1     0     5      OPC=callq_label              
  vzeroall                          #  2     0x5   3      OPC=vzeroall                 
  shlw $0x1, %r9w                   #  3     0x8   4      OPC=shlw_r16_one             
  callq .move_064_128_r8_r9_xmm3    #  4     0xc   5      OPC=callq_label              
  vpbroadcastd %xmm3, %ymm0         #  5     0x11  5      OPC=vpbroadcastd_ymm_xmm     
  vfmadd213pd %ymm0, %ymm13, %ymm1  #  6     0x16  5      OPC=vfmadd213pd_ymm_ymm_ymm  
  retq                              #  7     0x1b  1      OPC=retq                     
                                                                                       
.size target, .-target
