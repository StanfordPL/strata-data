  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode             
.target:                   #        0    0      OPC=<label>        
  callq .read_pf_into_rbx  #  1     0    5      OPC=callq_label    
  movzbq %bl, %rax         #  2     0x5  4      OPC=movzbq_r64_r8  
  xchgb %al, %ah           #  3     0x9  2      OPC=xchgb_rh_r8    
  retq                     #  4     0xb  1      OPC=retq           
                                                                   
.size target, .-target
