  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text               #  Line  RIP   Bytes  Opcode              
.target:             #        0     0      OPC=<label>         
  movd %xmm1, %r11d  #  1     0     5      OPC=movd_r32_xmm    
  movq $0x0, %rbx    #  2     0x5   10     OPC=movq_r64_imm64  
  sarb $0x1, %bh     #  3     0xf   2      OPC=sarb_rh_one     
  adcw %r11w, %bx    #  4     0x11  4      OPC=adcw_r16_r16    
  retq               #  5     0x15  1      OPC=retq            
                                                               
.size target, .-target
