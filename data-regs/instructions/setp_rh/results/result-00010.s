  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode               
.target:                   #        0    0      OPC=<label>          
  callq .read_pf_into_rbx  #  1     0    5      OPC=callq_label      
  popcntq %rbx, %rsi       #  2     0x5  5      OPC=popcntq_r64_r64  
  rolb $0x1, %bl           #  3     0xa  2      OPC=rolb_r8_one      
  seta %ah                 #  4     0xc  3      OPC=seta_rh          
  retq                     #  5     0xf  1      OPC=retq             
                                                                     
.size target, .-target
