  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movd %xmm1, %eax  #  1     0     4      OPC=movd_r32_xmm    
  movq $0x40, %rbx  #  2     0x4   10     OPC=movq_r64_imm64  
  xaddw %bx, %ax    #  3     0xe   4      OPC=xaddw_r16_r16   
  retq              #  4     0x12  1      OPC=retq            
                                                              
.size target, .-target
