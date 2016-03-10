  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  vmovq %xmm1, %r13  #  1     0     5      OPC=vmovq_r64_xmm   
  movq $0x2, %rbx    #  2     0x5   10     OPC=movq_r64_imm64  
  xaddq %rbx, %r13   #  3     0xf   4      OPC=xaddq_r64_r64   
  retq               #  4     0x13  1      OPC=retq            
                                                               
.size target, .-target
