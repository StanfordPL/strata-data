  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  movq $0x3, %rbx    #  1     0     10     OPC=movq_r64_imm64  
  vmovd %xmm1, %ecx  #  2     0xa   4      OPC=vmovd_r32_xmm   
  xchgw %cx, %bx     #  3     0xe   3      OPC=xchgw_r16_r16   
  retq               #  4     0x11  1      OPC=retq            
                                                               
.size target, .-target
