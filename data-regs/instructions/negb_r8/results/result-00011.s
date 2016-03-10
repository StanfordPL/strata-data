  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                   #  Line  RIP   Bytes  Opcode              
.target:                 #        0     0      OPC=<label>         
  movzbq %bl, %rax       #  1     0     4      OPC=movzbq_r64_r8   
  negw %ax               #  2     0x4   3      OPC=negw_r16        
  movzwl %ax, %ebx       #  3     0x7   3      OPC=movzwl_r32_r16  
  xaddb %bh, %al         #  4     0xa   3      OPC=xaddb_r8_rh     
  callq .set_szp_for_bl  #  5     0xd   5      OPC=callq_label     
  retq                   #  6     0x12  1      OPC=retq            
                                                                   
.size target, .-target
