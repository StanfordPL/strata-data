  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode           
.target:                   #        0     0      OPC=<label>      
  callq .read_sf_into_rcx  #  1     0     5      OPC=callq_label  
  setnge %dh               #  2     0x5   3      OPC=setnge_rh    
  addb %ch, %ch            #  3     0x8   2      OPC=addb_rh_rh   
  callq .read_sf_into_rcx  #  4     0xa   5      OPC=callq_label  
  adcb %cl, %dh            #  5     0xf   2      OPC=adcb_rh_r8   
  xaddb %dh, %cl           #  6     0x11  3      OPC=xaddb_r8_rh  
  setne %ah                #  7     0x14  4      OPC=setne_rh     
  xchgb %ah, %cl           #  8     0x18  2      OPC=xchgb_r8_rh  
  retq                     #  9     0x1a  1      OPC=retq         
                                                                  
.size target, .-target
