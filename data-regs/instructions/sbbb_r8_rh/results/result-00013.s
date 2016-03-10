  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  callq .read_cf_into_rcx  #  1     0    5      OPC=callq_label  
  xchgb %ch, %bl           #  2     0x5  2      OPC=xchgb_r8_rh  
  sbbb %ah, %ch            #  3     0x7  2      OPC=sbbb_rh_rh   
  movb %ch, %bl            #  4     0x9  2      OPC=movb_r8_rh   
  retq                     #  5     0xb  1      OPC=retq         
                                                                 
.size target, .-target
