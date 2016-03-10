  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP   Bytes  Opcode            
.target:           #        0     0      OPC=<label>       
  xorw %cx, %cx    #  1     0     3      OPC=xorw_r16_r16  
  setno %bh        #  2     0x3   3      OPC=setno_rh      
  adcw %bx, %cx    #  3     0x6   3      OPC=adcw_r16_r16  
  xorb %ah, %cl    #  4     0x9   2      OPC=xorb_r8_rh    
  movb %cl, %ah    #  5     0xb   2      OPC=movb_rh_r8    
  callq .clear_of  #  6     0xd   5      OPC=callq_label   
  retq             #  7     0x12  1      OPC=retq          
                                                           
.size target, .-target
