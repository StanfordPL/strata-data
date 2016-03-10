  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                        
.target:                              #        0     0      OPC=<label>                   
  callq .move_128_064_xmm2_r8_r9      #  1     0     5      OPC=callq_label               
  vzeroall                            #  2     0x5   3      OPC=vzeroall                  
  callq .move_r9b_to_byte_19_of_ymm1  #  3     0x8   5      OPC=callq_label               
  callq .move_064_128_r8_r9_xmm2      #  4     0xd   5      OPC=callq_label               
  vpmovsxbq %xmm2, %ymm4              #  5     0x12  5      OPC=vpmovsxbq_ymm_xmm         
  vfnmadd213ps %xmm4, %xmm7, %xmm1    #  6     0x17  5      OPC=vfnmadd213ps_xmm_xmm_xmm  
  retq                                #  7     0x1c  1      OPC=retq                      
                                                                                          
.size target, .-target
