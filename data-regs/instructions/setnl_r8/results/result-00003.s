  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode           
.target:                   #        0     0      OPC=<label>      
  setnge %cl               #  1     0     3      OPC=setnge_r8    
  callq .read_of_into_rbx  #  2     0x3   5      OPC=callq_label  
  xaddb %cl, %bh           #  3     0x8   3      OPC=xaddb_rh_r8  
  callq .read_pf_into_rbx  #  4     0xb   5      OPC=callq_label  
  retq                     #  5     0x10  1      OPC=retq         
                                                                  
.size target, .-target
