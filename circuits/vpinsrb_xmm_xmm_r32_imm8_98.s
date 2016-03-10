  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                     
.target:                             #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label            
  vcvtsd2ss %xmm2, %xmm9, %xmm1      #  2     0x5   4      OPC=vcvtsd2ss_xmm_xmm_xmm  
  callq .move_64_128_xmm8_xmm9_xmm1  #  3     0x9   5      OPC=callq_label            
  movzbl %bl, %r9d                   #  4     0xe   4      OPC=movzbl_r32_r8          
  callq .move_r9b_to_byte_2_of_ymm1  #  5     0x12  5      OPC=callq_label            
  retq                               #  6     0x17  1      OPC=retq                   
                                                                                      
.size target, .-target
