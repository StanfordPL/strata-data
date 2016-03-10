  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                
.target:                                        #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label       
  unpckhps %xmm7, %xmm1                         #  2     0x5   3      OPC=unpckhps_xmm_xmm  
  callq .move_128_064_xmm1_r12_r13              #  3     0x8   5      OPC=callq_label       
  callq .move_032_064_r12d_r13d_rbx             #  4     0xd   5      OPC=callq_label       
  retq                                          #  5     0x12  1      OPC=retq              
                                                                                            
.size target, .-target
