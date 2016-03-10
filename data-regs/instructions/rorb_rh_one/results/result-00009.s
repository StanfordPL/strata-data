  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  movsbw %ah, %bx  #  1     0    4      OPC=movsbw_r16_rh  
  rorb $0x1, %bl   #  2     0x4  2      OPC=rorb_r8_one    
  xchgb %ah, %bl   #  3     0x6  2      OPC=xchgb_r8_rh    
  retq             #  4     0x8  1      OPC=retq           
                                                           
.size target, .-target
