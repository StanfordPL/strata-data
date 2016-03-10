  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  vxorpd %xmm4, %xmm5, %xmm3                    #  2     0x5   4      OPC=vxorpd_xmm_xmm_xmm  
  callq .move_128_064_xmm1_r8_r9                #  3     0x9   5      OPC=callq_label         
  cvttsd2sil %xmm3, %ebx                        #  4     0xe   4      OPC=cvttsd2sil_r32_xmm  
  subl %ebx, %ebx                               #  5     0x12  2      OPC=subl_r32_r32        
  cmovncw %r8w, %bx                             #  6     0x14  5      OPC=cmovncw_r16_r16     
  retq                                          #  7     0x19  1      OPC=retq                
                                                                                              
.size target, .-target
