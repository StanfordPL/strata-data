  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  vminss %xmm1, %xmm1, %xmm2        #  1     0     4      OPC=vminss_xmm_xmm_xmm  
  callq .move_128_064_xmm2_r10_r11  #  2     0x4   5      OPC=callq_label         
  movq $0x4, %rbx                   #  3     0x9   10     OPC=movq_r64_imm64      
  movzbw %r11b, %bx                 #  4     0x13  5      OPC=movzbw_r16_r8       
  orw %r11w, %bx                    #  5     0x18  4      OPC=orw_r16_r16         
  retq                              #  6     0x1c  1      OPC=retq                
                                                                                  
.size target, .-target
