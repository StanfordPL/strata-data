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
  setpe %ah                #  3     0x7  3      OPC=setpe_rh     
  retq                     #  4     0xa  1      OPC=retq         
                                                                 
.size target, .-target