  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movzbw %cl, %dx    #  1     0    4      OPC=movzbw_r16_r8   
  notb %dl           #  2     0x4  2      OPC=notb_r8         
  stc                #  3     0x6  1      OPC=stc             
  movswl %dx, %r10d  #  4     0x7  4      OPC=movswl_r32_r16  
  adcb %r10b, %bl    #  5     0xb  3      OPC=adcb_r8_r8      
  cmc                #  6     0xe  1      OPC=cmc             
  retq               #  7     0xf  1      OPC=retq            
                                                              
.size target, .-target
