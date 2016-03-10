  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode            
.target:           #        0    0      OPC=<label>       
  xorq %rbx, %rbx  #  1     0    3      OPC=xorq_r64_r64  
  movb %ah, %bl    #  2     0x3  2      OPC=movb_r8_rh    
  notw %bx         #  3     0x5  3      OPC=notw_r16      
  movb %bl, %ah    #  4     0x8  2      OPC=movb_rh_r8    
  retq             #  5     0xa  1      OPC=retq          
                                                          
.size target, .-target
