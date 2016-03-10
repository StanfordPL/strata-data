  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode               
.target:             #        0    0      OPC=<label>          
  movzbl %ah, %edi   #  1     0    3      OPC=movzbl_r32_rh    
  popcntq %rdi, %r8  #  2     0x3  5      OPC=popcntq_r64_r64  
  adcb %dil, %bl     #  3     0x8  3      OPC=adcb_r8_r8       
  movb %bl, %ah      #  4     0xb  2      OPC=movb_rh_r8       
  retq               #  5     0xd  1      OPC=retq             
                                                               
.size target, .-target
