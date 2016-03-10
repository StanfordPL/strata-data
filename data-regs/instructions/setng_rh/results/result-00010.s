  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  callq .read_sf_into_rcx  #  1     0     5      OPC=callq_label      
  setng %cl                #  2     0x5   3      OPC=setng_r8         
  popcntw %cx, %r15w       #  3     0x8   6      OPC=popcntw_r16_r16  
  setne %ah                #  4     0xe   3      OPC=setne_rh         
  retq                     #  5     0x11  1      OPC=retq             
                                                                      
.size target, .-target
