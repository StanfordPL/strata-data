  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                        
.target:                                        #        0     0      OPC=<label>                   
  callq .move_128_64_xmm1_xmm8_xmm9             #  1     0     5      OPC=callq_label               
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label               
  vfnmadd132sd %xmm6, %xmm8, %xmm1              #  3     0xa   5      OPC=vfnmadd132sd_xmm_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  4     0xf   5      OPC=callq_label               
  retq                                          #  5     0x14  1      OPC=retq                      
                                                                                                    
.size target, .-target
