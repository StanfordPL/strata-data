  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vcvtsd2ss %xmm9, %xmm2, %xmm1                   #  2     0x5   5      OPC=vcvtsd2ss_xmm_xmm_xmm  
  callq .move_byte_20_of_ymm1_to_r9b              #  3     0xa   5      OPC=callq_label            
  callq .move_r9b_to_byte_15_of_ymm1              #  4     0xf   5      OPC=callq_label            
  callq .move_r9b_to_byte_13_of_ymm1              #  5     0x14  5      OPC=callq_label            
  callq .move_r9b_to_byte_12_of_ymm1              #  6     0x19  5      OPC=callq_label            
  callq .move_r9b_to_byte_14_of_ymm1              #  7     0x1e  5      OPC=callq_label            
  retq                                            #  8     0x23  1      OPC=retq                   
                                                                                                   
.size target, .-target
