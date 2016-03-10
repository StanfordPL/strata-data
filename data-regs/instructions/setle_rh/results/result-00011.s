  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  callq .read_zf_into_rcx  #  1     0    5      OPC=callq_label  
  setnge %ch               #  2     0x5  3      OPC=setnge_rh    
  xaddb %cl, %ch           #  3     0x8  3      OPC=xaddb_rh_r8  
  setpo %ah                #  4     0xb  3      OPC=setpo_rh     
  retq                     #  5     0xe  1      OPC=retq         
                                                                 
.size target, .-target
