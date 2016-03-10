  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP  Bytes  Opcode                
.target:             #        0    0      OPC=<label>           
  cmovlq %rcx, %rbx  #  1     0    4      OPC=cmovlq_r64_r64    
  salw $0x1, %cx     #  2     0x4  3      OPC=salw_r16_one      
  cmovnaew %bx, %bx  #  3     0x7  4      OPC=cmovnaew_r16_r16  
  retq               #  4     0xb  1      OPC=retq              
                                                                
.size target, .-target
