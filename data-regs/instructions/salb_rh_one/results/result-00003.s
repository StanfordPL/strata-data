  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP  Bytes  Opcode             
.target:          #        0    0      OPC=<label>        
  xorb %al, %al   #  1     0    2      OPC=xorb_r8_r8     
  incb %al        #  2     0x2  2      OPC=incb_r8        
  xorw %dx, %dx   #  3     0x4  3      OPC=xorw_r16_r16   
  xaddw %dx, %ax  #  4     0x7  4      OPC=xaddw_r16_r16  
  shlb $0x1, %ah  #  5     0xb  2      OPC=shlb_rh_one    
  retq            #  6     0xd  1      OPC=retq           
                                                          
.size target, .-target
