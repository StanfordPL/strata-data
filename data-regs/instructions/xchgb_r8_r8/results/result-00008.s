  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  clc               #  1     0    1      OPC=clc             
  setnb %ch         #  2     0x1  3      OPC=setnb_rh        
  xchgb %bl, %ch    #  3     0x4  2      OPC=xchgb_rh_r8     
  movb %cl, %bl     #  4     0x6  2      OPC=movb_r8_r8      
  movswl %cx, %edx  #  5     0x8  3      OPC=movswl_r32_r16  
  xchgb %cl, %dh    #  6     0xb  2      OPC=xchgb_rh_r8     
  retq              #  7     0xd  1      OPC=retq            
                                                             
.size target, .-target
