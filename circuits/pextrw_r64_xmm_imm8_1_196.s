  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  movq $0x40, %rbx                                #  2     0x5   10     OPC=movq_r64_imm64     
  vmovmskpd %xmm10, %r11d                         #  3     0xf   5      OPC=vmovmskpd_r32_xmm  
  vmovq %xmm10, %r8                               #  4     0x14  5      OPC=vmovq_r64_xmm      
  decb %r11b                                      #  5     0x19  3      OPC=decb_r8            
  cmovpw %r8w, %bx                                #  6     0x1c  5      OPC=cmovpw_r16_r16     
  retq                                            #  7     0x21  1      OPC=retq               
                                                                                               
.size target, .-target
