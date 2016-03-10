  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  callq .read_of_into_rcx  #  1     0     5      OPC=callq_label      
  setng %cl                #  2     0x5   3      OPC=setng_r8         
  popcntq %rcx, %r13       #  3     0x8   5      OPC=popcntq_r64_r64  
  popcntw %r13w, %bx       #  4     0xd   6      OPC=popcntw_r16_r16  
  retq                     #  5     0x13  1      OPC=retq             
                                                                      
.size target, .-target
