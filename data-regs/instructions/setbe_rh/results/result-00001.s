  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  setbe %r8b          #  1     0     4      OPC=setbe_r8         
  movzbq %r8b, %r14   #  2     0x4   4      OPC=movzbq_r64_r8    
  popcntq %r14, %rdx  #  3     0x8   5      OPC=popcntq_r64_r64  
  setne %ah           #  4     0xd   3      OPC=setne_rh         
  retq                #  5     0x10  1      OPC=retq             
                                                                 
.size target, .-target
