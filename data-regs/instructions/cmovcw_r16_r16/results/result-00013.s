  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP  Bytes  Opcode                
.target:             #        0    0      OPC=<label>           
  movsbq %cl, %rbp   #  1     0    4      OPC=movsbq_r64_r8     
  cmovnaew %cx, %bp  #  2     0x4  4      OPC=cmovnaew_r16_r16  
  cmovcl %ebp, %ebx  #  3     0x8  3      OPC=cmovcl_r32_r32    
  retq               #  4     0xb  1      OPC=retq              
                                                                
.size target, .-target
