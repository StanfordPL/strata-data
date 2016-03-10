  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                       #  Line  RIP  Bytes  Opcode                  
.target:                     #        0    0      OPC=<label>             
  vpxor %xmm0, %xmm0, %xmm5  #  1     0    4      OPC=vpxor_xmm_xmm_xmm   
  cvttsd2sil %xmm5, %r8d     #  2     0x4  5      OPC=cvttsd2sil_r32_xmm  
  movq %r8, %xmm1            #  3     0x9  5      OPC=movq_xmm_r64        
  retq                       #  4     0xe  1      OPC=retq                
                                                                          
.size target, .-target
