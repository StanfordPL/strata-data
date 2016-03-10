  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode              
.target:           #        0    0      OPC=<label>         
  movsbw %ah, %bx  #  1     0    4      OPC=movsbw_r16_rh   
  sarw $0x1, %bx   #  2     0x4  3      OPC=sarw_r16_one    
  cmovbw %bx, %bx  #  3     0x7  4      OPC=cmovbw_r16_r16  
  movb %bl, %ah    #  4     0xb  2      OPC=movb_rh_r8      
  retq             #  5     0xd  1      OPC=retq            
                                                            
.size target, .-target
