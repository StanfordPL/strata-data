  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                
.target:                                        #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label       
  movmskpd %xmm6, %rbx                          #  2     0x5   4      OPC=movmskpd_r64_xmm  
  callq .move_128_064_xmm1_r12_r13              #  3     0x9   5      OPC=callq_label       
  xaddb %bl, %r13b                              #  4     0xe   4      OPC=xaddb_r8_r8       
  retq                                          #  5     0x12  1      OPC=retq              
                                                                                            
.size target, .-target
