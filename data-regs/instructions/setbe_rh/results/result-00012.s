  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  callq .read_cf_into_rbx  #  1     0     5      OPC=callq_label      
  setbe %bl                #  2     0x5   3      OPC=setbe_r8         
  popcntw %bx, %r8w        #  3     0x8   6      OPC=popcntw_r16_r16  
  setne %ah                #  4     0xe   3      OPC=setne_rh         
  retq                     #  5     0x11  1      OPC=retq             
                                                                      
.size target, .-target
