  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  callq .read_sf_into_rcx  #  1     0     5      OPC=callq_label   
  setnge %ch               #  2     0x5   3      OPC=setnge_rh     
  shrq %cl, %rcx           #  3     0x8   3      OPC=shrq_r64_cl   
  shlw $0x1, %cx           #  4     0xb   3      OPC=shlw_r16_one  
  setne %ah                #  5     0xe   3      OPC=setne_rh      
  retq                     #  6     0x11  1      OPC=retq          
                                                                   
.size target, .-target
