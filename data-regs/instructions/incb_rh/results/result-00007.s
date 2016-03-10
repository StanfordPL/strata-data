  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  xorw %bx, %bx            #  1     0    3      OPC=xorw_r16_r16  
  setnle %al               #  2     0x3  3      OPC=setnle_r8     
  decb %al                 #  3     0x6  2      OPC=decb_r8       
  callq .read_sf_into_rbx  #  4     0x8  5      OPC=callq_label   
  adcb %bl, %ah            #  5     0xd  2      OPC=adcb_rh_r8    
  retq                     #  6     0xf  1      OPC=retq          
                                                                  
.size target, .-target
