  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode            
.target:                             #        0     0      OPC=<label>       
  xorq %r9, %r9                      #  1     0     3      OPC=xorq_r64_r64  
  callq .move_byte_1_of_ymm1_to_r9b  #  2     0x3   5      OPC=callq_label   
  callq .read_pf_into_rbx            #  3     0x8   5      OPC=callq_label   
  movb %r9b, %bl                     #  4     0xd   3      OPC=movb_r8_r8    
  retq                               #  5     0x10  1      OPC=retq          
                                                                             
.size target, .-target
