  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                   #  Line  RIP  Bytes  Opcode           
.target:                 #        0    0      OPC=<label>      
  shlb $0x1, %bl         #  1     0    2      OPC=shlb_r8_one  
  callq .set_szp_for_bl  #  2     0x2  5      OPC=callq_label  
  retq                   #  3     0x7  1      OPC=retq         
                                                               
.size target, .-target
