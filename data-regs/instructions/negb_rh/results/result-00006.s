  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode           
.target:           #        0    0      OPC=<label>      
  callq .clear_cf  #  1     0    5      OPC=callq_label  
  setnae %al       #  2     0x5  3      OPC=setnae_r8    
  negw %ax         #  3     0x8  3      OPC=negw_r16     
  decb %ah         #  4     0xb  2      OPC=decb_rh      
  incb %ah         #  5     0xd  2      OPC=incb_rh      
  retq             #  6     0xf  1      OPC=retq         
                                                         
.size target, .-target
