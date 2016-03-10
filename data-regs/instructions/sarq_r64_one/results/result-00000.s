  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode           
.target:           #        0    0      OPC=<label>      
  negb %bl         #  1     0    2      OPC=negb_r8      
  negb %bl         #  2     0x2  2      OPC=negb_r8      
  setna %cl        #  3     0x4  3      OPC=setna_r8     
  sarq %cl, %rbx   #  4     0x7  3      OPC=sarq_r64_cl  
  callq .clear_of  #  5     0xa  5      OPC=callq_label  
  retq             #  6     0xf  1      OPC=retq         
                                                         
.size target, .-target
