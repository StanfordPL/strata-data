  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode            
.target:                              #        0    0      OPC=<label>       
  addb %bh, %bh                       #  1     0    2      OPC=addb_rh_rh    
  movw %bx, %r9w                      #  2     0x2  4      OPC=movw_r16_r16  
  callq .move_r9b_to_byte_10_of_ymm1  #  3     0x6  5      OPC=callq_label   
  retq                                #  4     0xb  1      OPC=retq          
                                                                             
.size target, .-target
