  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode           
.target:           #        0    0      OPC=<label>      
  orb %bl, %ah     #  1     0    2      OPC=orb_rh_r8    
  xchgb %bl, %ah   #  2     0x2  2      OPC=xchgb_rh_r8  
  setne %r8b       #  3     0x4  4      OPC=setne_r8     
  rclb $0x1, %r8b  #  4     0x8  3      OPC=rclb_r8_one  
  retq             #  5     0xb  1      OPC=retq         
                                                         
.size target, .-target
