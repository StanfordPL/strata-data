  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode               
.target:                              #        0     0      OPC=<label>          
  testb %bh, %bh                      #  1     0     2      OPC=testb_rh_rh      
  callq .move_byte_11_of_ymm1_to_r9b  #  2     0x2   5      OPC=callq_label      
  cmovncl %ebx, %r9d                  #  3     0x7   4      OPC=cmovncl_r32_r32  
  callq .move_r9b_to_byte_15_of_ymm1  #  4     0xb   5      OPC=callq_label      
  retq                                #  5     0x10  1      OPC=retq             
                                                                                 
.size target, .-target
