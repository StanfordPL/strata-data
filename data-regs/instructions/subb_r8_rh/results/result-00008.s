  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  xchgb %ah, %bl           #  1     0    2      OPC=xchgb_r8_rh  
  subb %bl, %ah            #  2     0x2  2      OPC=subb_rh_r8   
  callq .read_cf_into_rbx  #  3     0x4  5      OPC=callq_label  
  xchgb %bl, %ah           #  4     0x9  2      OPC=xchgb_rh_r8  
  retq                     #  5     0xb  1      OPC=retq         
                                                                 
.size target, .-target
