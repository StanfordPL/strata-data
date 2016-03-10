  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  vfmadd132pd %xmm5, %xmm5, %xmm4               #  2     0x5   5      OPC=vfmadd132pd_xmm_xmm_xmm  
  vpunpcklqdq %xmm5, %xmm4, %xmm6               #  3     0xa   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vfmadd213pd %xmm2, %xmm4, %xmm5               #  4     0xe   5      OPC=vfmadd213pd_xmm_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  5     0x13  5      OPC=callq_label              
  retq                                          #  6     0x18  1      OPC=retq                     
                                                                                                   
.size target, .-target
