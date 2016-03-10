  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  setbe %cl                #  1     0    3      OPC=setbe_r8     
  callq .read_zf_into_rbx  #  2     0x3  5      OPC=callq_label  
  xaddb %bh, %cl           #  3     0x8  3      OPC=xaddb_r8_rh  
  setne %ah                #  4     0xb  3      OPC=setne_rh     
  retq                     #  5     0xe  1      OPC=retq         
                                                                 
.size target, .-target
