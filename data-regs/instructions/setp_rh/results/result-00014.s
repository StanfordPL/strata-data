  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode           
.target:                   #        0     0      OPC=<label>      
  callq .read_pf_into_rbx  #  1     0     5      OPC=callq_label  
  xorb %ah, %ah            #  2     0x5   2      OPC=xorb_rh_rh   
  xchgb %ah, %bl           #  3     0x7   2      OPC=xchgb_r8_rh  
  callq .read_pf_into_rbx  #  4     0x9   5      OPC=callq_label  
  addb %bh, %ah            #  5     0xe   2      OPC=addb_rh_rh   
  retq                     #  6     0x10  1      OPC=retq         
                                                                  
.size target, .-target
