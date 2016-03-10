  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  popcntw %cx, %r8w        #  1     0     6      OPC=popcntw_r16_r16  
  xchgw %cx, %r8w          #  2     0x6   4      OPC=xchgw_r16_r16    
  callq .read_of_into_rbx  #  3     0xa   5      OPC=callq_label      
  addw %r8w, %bx           #  4     0xf   4      OPC=addw_r16_r16     
  retq                     #  5     0x13  1      OPC=retq             
                                                                      
.size target, .-target
