  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP  Bytes  Opcode           
.target:          #        0    0      OPC=<label>      
  orb %ah, %ah    #  1     0    2      OPC=orb_rh_rh    
  movb %ah, %dl   #  2     0x2  2      OPC=movb_r8_rh   
  rorb $0x1, %dl  #  3     0x4  2      OPC=rorb_r8_one  
  xchgb %dl, %ah  #  4     0x6  2      OPC=xchgb_rh_r8  
  retq            #  5     0x8  1      OPC=retq         
                                                        
.size target, .-target
