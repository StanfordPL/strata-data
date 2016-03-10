  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  callq .read_cf_into_rcx  #  1     0    5      OPC=callq_label  
  decw %cx                 #  2     0x5  3      OPC=decw_r16     
  setnz %ah                #  3     0x8  3      OPC=setnz_rh     
  retq                     #  4     0xb  1      OPC=retq         
                                                                 
.size target, .-target
