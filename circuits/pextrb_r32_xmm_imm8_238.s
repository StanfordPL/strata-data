  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode               
.target:                              #        0     0      OPC=<label>          
  xorq %rbx, %rbx                     #  1     0     3      OPC=xorq_r64_r64     
  popcntq %rbx, %r9                   #  2     0x3   5      OPC=popcntq_r64_r64  
  callq .move_byte_14_of_ymm1_to_r9b  #  3     0x8   5      OPC=callq_label      
  xaddb %r9b, %bl                     #  4     0xd   4      OPC=xaddb_r8_r8      
  popcntw %r9w, %r10w                 #  5     0x11  6      OPC=popcntw_r16_r16  
  setl %bh                            #  6     0x17  3      OPC=setl_rh          
  retq                                #  7     0x1a  1      OPC=retq             
                                                                                 
.size target, .-target
