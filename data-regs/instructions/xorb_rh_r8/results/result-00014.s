  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  xorb %ah, %bl            #  1     0    2      OPC=xorb_r8_rh   
  callq .read_of_into_rcx  #  2     0x2  5      OPC=callq_label  
  movb %bl, %ah            #  3     0x7  2      OPC=movb_rh_r8   
  xorb %ch, %bl            #  4     0x9  2      OPC=xorb_r8_rh   
  retq                     #  5     0xb  1      OPC=retq         
                                                                 
.size target, .-target
