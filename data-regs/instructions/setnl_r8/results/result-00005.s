  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode           
.target:                   #        0     0      OPC=<label>      
  callq .set_pf            #  1     0     5      OPC=callq_label  
  callq .read_pf_into_rbx  #  2     0x5   5      OPC=callq_label  
  setge %bl                #  3     0xa   3      OPC=setge_r8     
  xaddb %bh, %bl           #  4     0xd   3      OPC=xaddb_r8_rh  
  retq                     #  5     0x10  1      OPC=retq         
                                                                  
.size target, .-target
