  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  setge %ah                #  1     0     3      OPC=setge_rh      
  callq .read_of_into_rbx  #  2     0x3   5      OPC=callq_label   
  callq .read_sf_into_rcx  #  3     0x8   5      OPC=callq_label   
  salw $0x1, %cx           #  4     0xd   3      OPC=salw_r16_one  
  xaddb %cl, %bh           #  5     0x10  3      OPC=xaddb_rh_r8   
  xaddb %cl, %ah           #  6     0x13  3      OPC=xaddb_rh_r8   
  retq                     #  7     0x16  1      OPC=retq          
                                                                   
.size target, .-target
