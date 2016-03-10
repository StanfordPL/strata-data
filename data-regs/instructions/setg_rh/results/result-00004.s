  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  callq .read_of_into_rcx  #  1     0     5      OPC=callq_label      
  setle %cl                #  2     0x5   3      OPC=setle_r8         
  popcntl %ecx, %r10d      #  3     0x8   5      OPC=popcntl_r32_r32  
  setbe %ah                #  4     0xd   3      OPC=setbe_rh         
  retq                     #  5     0x10  1      OPC=retq             
                                                                      
.size target, .-target
