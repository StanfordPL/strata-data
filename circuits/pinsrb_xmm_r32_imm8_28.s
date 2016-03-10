  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode              
.target:                              #        0     0      OPC=<label>         
  blsrl %ebx, %r9d                    #  1     0     5      OPC=blsrl_r32_r32   
  cmovow %r9w, %r9w                   #  2     0x5   5      OPC=cmovow_r16_r16  
  xchgw %bx, %r9w                     #  3     0xa   4      OPC=xchgw_r16_r16   
  callq .move_r9b_to_byte_12_of_ymm1  #  4     0xe   5      OPC=callq_label     
  retq                                #  5     0x13  1      OPC=retq            
                                                                                
.size target, .-target
