  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  movsbl %bl, %r9d                              #  2     0x5   4      OPC=movsbl_r32_r8       
  vmaxss %xmm4, %xmm2, %xmm1                    #  3     0x9   4      OPC=vmaxss_xmm_xmm_xmm  
  callq .move_r9b_to_byte_2_of_ymm1             #  4     0xd   5      OPC=callq_label         
  retq                                          #  5     0x12  1      OPC=retq                
                                                                                              
.size target, .-target
