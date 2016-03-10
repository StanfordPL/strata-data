  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label       
  callq .move_byte_10_of_ymm1_to_r8b              #  2     0x5   5      OPC=callq_label       
  pmovsxdq %xmm8, %xmm1                           #  3     0xa   6      OPC=pmovsxdq_xmm_xmm  
  andb %r8b, %r8b                                 #  4     0x10  3      OPC=andb_r8_r8        
  callq .move_r8b_to_byte_7_of_ymm1               #  5     0x13  5      OPC=callq_label       
  unpckhpd %xmm1, %xmm1                           #  6     0x18  4      OPC=unpckhpd_xmm_xmm  
  retq                                            #  7     0x1c  1      OPC=retq              
                                                                                              
.size target, .-target
