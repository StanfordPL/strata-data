  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                   #  Line  RIP  Bytes  Opcode               
.target:                 #        0    0      OPC=<label>          
  cmovncq %rcx, %rbx     #  1     0    4      OPC=cmovncq_r64_r64  
  callq .set_szp_for_bx  #  2     0x4  5      OPC=callq_label      
  cmovnaw %bx, %bx       #  3     0x9  4      OPC=cmovnaw_r16_r16  
  retq                   #  4     0xd  1      OPC=retq             
                                                                   
.size target, .-target
