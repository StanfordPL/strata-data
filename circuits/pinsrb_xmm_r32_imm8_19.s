  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode               
.target:                              #        0     0      OPC=<label>          
  callq .move_byte_14_of_ymm1_to_r9b  #  1     0     5      OPC=callq_label      
  movzbl %bh, %eax                    #  2     0x5   3      OPC=movzbl_r32_rh    
  salb $0x1, %ah                      #  3     0x8   2      OPC=salb_rh_one      
  cmovnlw %bx, %r9w                   #  4     0xa   5      OPC=cmovnlw_r16_r16  
  movzbl %r9b, %r8d                   #  5     0xf   4      OPC=movzbl_r32_r8    
  callq .move_r8b_to_byte_3_of_ymm1   #  6     0x13  5      OPC=callq_label      
  retq                                #  7     0x18  1      OPC=retq             
                                                                                 
.size target, .-target
