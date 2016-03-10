  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  movshdup %xmm1, %xmm11                        #  1     0     5      OPC=movshdup_xmm_xmm    
  cvtps2pd %xmm11, %xmm3                        #  2     0x5   4      OPC=cvtps2pd_xmm_xmm    
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  3     0x9   5      OPC=callq_label         
  vcvtss2sil %xmm3, %r13d                       #  4     0xe   4      OPC=vcvtss2sil_r32_xmm  
  callq .move_032_064_r12d_r13d_rcx             #  5     0x12  5      OPC=callq_label         
  callq .move_032_016_ecx_r12w_r13w             #  6     0x17  5      OPC=callq_label         
  movzwq %r13w, %rbx                            #  7     0x1c  4      OPC=movzwq_r64_r16      
  retq                                          #  8     0x20  1      OPC=retq                
                                                                                              
.size target, .-target
