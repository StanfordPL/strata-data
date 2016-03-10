  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  vxorpd %xmm5, %xmm5, %xmm5                      #  2     0x5   4      OPC=vxorpd_xmm_xmm_xmm  
  vsubpd %xmm5, %xmm11, %xmm1                     #  3     0x9   4      OPC=vsubpd_xmm_xmm_xmm  
  movq $0x2, %rbx                                 #  4     0xd   10     OPC=movq_r64_imm64      
  movq %xmm1, %r13                                #  5     0x17  5      OPC=movq_r64_xmm        
  movw %r13w, %bx                                 #  6     0x1c  4      OPC=movw_r16_r16        
  retq                                            #  7     0x20  1      OPC=retq                
                                                                                                
.size target, .-target
