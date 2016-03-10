  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  vpmovzxwd %xmm1, %xmm3                        #  1     0     5      OPC=vpmovzxwd_xmm_xmm   
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d  #  2     0x5   5      OPC=callq_label         
  callq .move_128_64_xmm3_xmm8_xmm9             #  3     0xa   5      OPC=callq_label         
  cvttsd2sil %xmm9, %ebx                        #  4     0xf   5      OPC=cvttsd2sil_r32_xmm  
  xchgl %ebx, %r13d                             #  5     0x14  3      OPC=xchgl_r32_r32       
  retq                                          #  6     0x17  1      OPC=retq                
                                                                                              
.size target, .-target
