  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                        
.target:                            #        0     0      OPC=<label>                   
  vfnmadd132ps %xmm3, %xmm1, %xmm2  #  1     0     5      OPC=vfnmadd132ps_xmm_xmm_xmm  
  vmovups %ymm2, %ymm2              #  2     0x5   4      OPC=vmovups_ymm_ymm           
  callq .move_128_064_xmm2_r12_r13  #  3     0x9   5      OPC=callq_label               
  vzeroall                          #  4     0xe   3      OPC=vzeroall                  
  callq .move_064_128_r12_r13_xmm1  #  5     0x11  5      OPC=callq_label               
  retq                              #  6     0x16  1      OPC=retq                      
                                                                                        
.size target, .-target
