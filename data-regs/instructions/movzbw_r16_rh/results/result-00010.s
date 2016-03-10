  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  clc                      #  1     0    1      OPC=clc          
  callq .read_cf_into_rbx  #  2     0x1  5      OPC=callq_label  
  movb %ah, %bl            #  3     0x6  2      OPC=movb_r8_rh   
  retq                     #  4     0x8  1      OPC=retq         
                                                                 
.size target, .-target
