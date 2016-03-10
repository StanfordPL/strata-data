  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movq $0x6, %rbx   #  1     0     10     OPC=movq_r64_imm64  
  movq %xmm1, %rcx  #  2     0xa   5      OPC=movq_r64_xmm    
  xchgw %bx, %cx    #  3     0xf   3      OPC=xchgw_r16_r16   
  retq              #  4     0x12  1      OPC=retq            
                                                              
.size target, .-target
