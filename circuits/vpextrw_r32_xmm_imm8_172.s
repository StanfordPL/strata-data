  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                   
.target:                                          #        0     0      OPC=<label>              
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label          
  movq $0x2, %rbx                                 #  2     0x5   10     OPC=movq_r64_imm64       
  vhaddpd %xmm8, %xmm10, %xmm2                    #  3     0xf   5      OPC=vhaddpd_xmm_xmm_xmm  
  callq .move_128_064_xmm2_r12_r13                #  4     0x14  5      OPC=callq_label          
  movw %r12w, %bx                                 #  5     0x19  4      OPC=movw_r16_r16         
  retq                                            #  6     0x1d  1      OPC=retq                 
                                                                                                 
.size target, .-target
