  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode               
.target:                   #        0    0      OPC=<label>          
  callq .read_sf_into_rbx  #  1     0    5      OPC=callq_label      
  sall $0x1, %ebx          #  2     0x5  2      OPC=sall_r32_one     
  popcntw %bx, %ax         #  3     0x7  5      OPC=popcntw_r16_r16  
  setnz %ah                #  4     0xc  3      OPC=setnz_rh         
  retq                     #  5     0xf  1      OPC=retq             
                                                                     
.size target, .-target
