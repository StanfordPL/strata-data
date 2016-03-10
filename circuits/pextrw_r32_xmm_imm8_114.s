  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  cvttss2sil %xmm9, %r8d                          #  2     0x5   5      OPC=cvttss2sil_r32_xmm  
  movd %xmm9, %ebx                                #  3     0xa   5      OPC=movd_r32_xmm        
  callq .move_r8b_to_byte_3_of_rbx                #  4     0xf   5      OPC=callq_label         
  movzwl %bx, %ebx                                #  5     0x14  3      OPC=movzwl_r32_r16      
  retq                                            #  6     0x17  1      OPC=retq                
                                                                                                
.size target, .-target
