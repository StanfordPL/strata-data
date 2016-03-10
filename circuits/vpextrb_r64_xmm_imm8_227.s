  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  vcvtps2pd %xmm4, %ymm2                        #  2     0x5   4      OPC=vcvtps2pd_ymm_xmm   
  callq .move_byte_3_of_ymm1_to_r9b             #  3     0x9   5      OPC=callq_label         
  callq .move_256_128_ymm2_xmm8_xmm9            #  4     0xe   5      OPC=callq_label         
  vcvtsd2sil %xmm9, %ebx                        #  5     0x13  5      OPC=vcvtsd2sil_r32_xmm  
  xaddb %bl, %r9b                               #  6     0x18  4      OPC=xaddb_r8_r8         
  retq                                          #  7     0x1c  1      OPC=retq                
                                                                                              
.size target, .-target
