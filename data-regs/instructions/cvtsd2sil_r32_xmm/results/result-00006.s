  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP  Bytes  Opcode                  
.target:                              #        0    0      OPC=<label>             
  callq .move_byte_12_of_ymm1_to_r9b  #  1     0    5      OPC=callq_label         
  callq .move_r9b_to_byte_1_of_ymm1   #  2     0x5  5      OPC=callq_label         
  vcvtsd2sil %xmm1, %ebx              #  3     0xa  4      OPC=vcvtsd2sil_r32_xmm  
  retq                                #  4     0xe  1      OPC=retq                
                                                                                   
.size target, .-target
