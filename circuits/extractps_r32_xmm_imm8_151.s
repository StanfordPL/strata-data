  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_64_xmm1_xmm10_xmm11           #  1     0     5      OPC=callq_label        
  movq %xmm11, %xmm3                            #  2     0x5   5      OPC=movq_xmm_xmm       
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  3     0xa   5      OPC=callq_label        
  cvtss2sil %xmm4, %ebx                         #  4     0xf   4      OPC=cvtss2sil_r32_xmm  
  movq %xmm5, %r9                               #  5     0x13  5      OPC=movq_r64_xmm       
  xchgl %ebx, %r9d                              #  6     0x18  3      OPC=xchgl_r32_r32      
  retq                                          #  7     0x1b  1      OPC=retq               
                                                                                             
.size target, .-target
