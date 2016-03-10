  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  vfmadd132sd %xmm6, %xmm4, %xmm6               #  2     0x5   5      OPC=vfmadd132sd_xmm_xmm_xmm  
  callq .move_128_064_xmm2_r8_r9                #  3     0xa   5      OPC=callq_label              
  vmovq %r9, %xmm4                              #  4     0xf   5      OPC=vmovq_xmm_r64            
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  5     0x14  5      OPC=callq_label              
  retq                                          #  6     0x19  1      OPC=retq                     
                                                                                                   
.size target, .-target
