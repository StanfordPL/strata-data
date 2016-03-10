  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text               #  Line  RIP  Bytes  Opcode             
.target:             #        0    0      OPC=<label>        
  vmovq %xmm1, %rax  #  1     0    5      OPC=vmovq_r64_xmm  
  xchgq %rax, %rax   #  2     0x5  2      OPC=xchgq_r64_rax  
  movq %rax, %rbx    #  3     0x7  3      OPC=movq_r64_r64   
  movb %bl, %bl      #  4     0xa  2      OPC=movb_r8_r8     
  retq               #  5     0xc  1      OPC=retq           
                                                             
.size target, .-target
