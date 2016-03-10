  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode           
.target:                   #        0     0      OPC=<label>      
  xorb %al, %al            #  1     0     2      OPC=xorb_r8_r8   
  callq .read_of_into_rbx  #  2     0x2   5      OPC=callq_label  
  xorb %ah, %bh            #  3     0x7   2      OPC=xorb_rh_rh   
  xchgb %bh, %bl           #  4     0x9   2      OPC=xchgb_r8_rh  
  decw %ax                 #  5     0xb   3      OPC=decw_r16     
  addb %al, %bl            #  6     0xe   2      OPC=addb_r8_r8   
  retq                     #  7     0x10  1      OPC=retq         
                                                                  
.size target, .-target
