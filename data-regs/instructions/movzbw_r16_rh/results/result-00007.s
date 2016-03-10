  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  callq .set_pf            #  1     0    5      OPC=callq_label  
  callq .read_pf_into_rbx  #  2     0x5  5      OPC=callq_label  
  movb %ah, %bl            #  3     0xa  2      OPC=movb_r8_rh   
  retq                     #  4     0xc  1      OPC=retq         
                                                                 
.size target, .-target
