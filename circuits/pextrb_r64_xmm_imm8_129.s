  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movq %xmm1, %rax  #  1     0     5      OPC=movq_r64_xmm    
  movq $0x0, %rbx   #  2     0x5   10     OPC=movq_r64_imm64  
  xchgb %ah, %bl    #  3     0xf   2      OPC=xchgb_r8_rh     
  retq              #  4     0x11  1      OPC=retq            
                                                              
.size target, .-target
