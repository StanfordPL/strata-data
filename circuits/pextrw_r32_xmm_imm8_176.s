  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movd %xmm1, %eax  #  1     0     4      OPC=movd_r32_xmm    
  cwtl              #  2     0x4   1      OPC=cwtl            
  movq $0x3, %rbx   #  3     0x5   10     OPC=movq_r64_imm64  
  xchgw %ax, %bx    #  4     0xf   3      OPC=xchgw_r16_r16   
  retq              #  5     0x12  1      OPC=retq            
                                                              
.size target, .-target
