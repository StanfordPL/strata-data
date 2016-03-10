  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                        
.target:                            #        0     0      OPC=<label>                   
  callq .move_128_064_xmm2_r8_r9    #  1     0     5      OPC=callq_label               
  vzeroall                          #  2     0x5   3      OPC=vzeroall                  
  callq .move_064_128_r8_r9_xmm2    #  3     0x8   5      OPC=callq_label               
  vsqrtps %ymm2, %ymm2              #  4     0xd   4      OPC=vsqrtps_ymm_ymm           
  vfnmadd132ps %ymm1, %ymm2, %ymm8  #  5     0x11  5      OPC=vfnmadd132ps_ymm_ymm_ymm  
  vmovupd %xmm8, %xmm1              #  6     0x16  5      OPC=vmovupd_xmm_xmm           
  retq                              #  7     0x1b  1      OPC=retq                      
                                                                                        
.size target, .-target
