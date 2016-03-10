  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode               
.target:                   #        0    0      OPC=<label>          
  callq .read_sf_into_rcx  #  1     0    5      OPC=callq_label      
  popcntw %cx, %r12w       #  2     0x5  6      OPC=popcntw_r16_r16  
  sete %ah                 #  3     0xb  3      OPC=sete_rh          
  retq                     #  4     0xe  1      OPC=retq             
                                                                     
.size target, .-target
