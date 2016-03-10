  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  callq .read_zf_into_rbx  #  1     0     5      OPC=callq_label      
  popcntw %bx, %r10w       #  2     0x5   6      OPC=popcntw_r16_r16  
  decw %r10w               #  3     0xb   4      OPC=decw_r16         
  setnz %ah                #  4     0xf   3      OPC=setnz_rh         
  retq                     #  5     0x12  1      OPC=retq             
                                                                      
.size target, .-target
