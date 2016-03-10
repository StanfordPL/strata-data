  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movq %xmm1, %r11  #  1     0     5      OPC=movq_r64_xmm    
  movq $0x2, %rbx   #  2     0x5   10     OPC=movq_r64_imm64  
  shlb $0x1, %bl    #  3     0xf   2      OPC=shlb_r8_one     
  xchgq %rbx, %r11  #  4     0x11  3      OPC=xchgq_r64_r64   
  retq              #  5     0x14  1      OPC=retq            
                                                              
.size target, .-target
