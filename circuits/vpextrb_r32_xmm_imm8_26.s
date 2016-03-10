  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  vrsqrtss %xmm1, %xmm1, %xmm1        #  1     0     4      OPC=vrsqrtss_xmm_xmm_xmm  
  callq .move_byte_21_of_ymm1_to_r9b  #  2     0x4   5      OPC=callq_label           
  callq .move_r9b_to_byte_6_of_ymm1   #  3     0x9   5      OPC=callq_label           
  callq .move_byte_10_of_ymm1_to_r9b  #  4     0xe   5      OPC=callq_label           
  movzbl %r9b, %ebx                   #  5     0x13  4      OPC=movzbl_r32_r8         
  retq                                #  6     0x17  1      OPC=retq                  
                                                                                      
.size target, .-target
