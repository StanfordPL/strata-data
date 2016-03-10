  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  callq .read_zf_into_rcx  #  1     0    5      OPC=callq_label  
  adcb %ch, %cl            #  2     0x5  2      OPC=adcb_r8_rh   
  xaddb %cl, %cl           #  3     0x7  3      OPC=xaddb_r8_r8  
  setbe %ah                #  4     0xa  3      OPC=setbe_rh     
  retq                     #  5     0xd  1      OPC=retq         
                                                                 
.size target, .-target
