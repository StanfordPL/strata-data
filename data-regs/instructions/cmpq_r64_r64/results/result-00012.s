  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode              
.target:           #        0    0      OPC=<label>         
  testb %bh, %bl   #  1     0    2      OPC=testb_r8_rh     
  cmovgw %cx, %cx  #  2     0x2  4      OPC=cmovgw_r16_r16  
  subq %rcx, %rbx  #  3     0x6  3      OPC=subq_r64_r64    
  retq             #  4     0x9  1      OPC=retq            
                                                            
.size target, .-target
