  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  callq .read_cf_into_rcx  #  1     0    5      OPC=callq_label  
  xchgb %cl, %bh           #  2     0x5  2      OPC=xchgb_rh_r8  
  adcb %cl, %ah            #  3     0x7  2      OPC=adcb_rh_r8   
  retq                     #  4     0x9  1      OPC=retq         
                                                                 
.size target, .-target
