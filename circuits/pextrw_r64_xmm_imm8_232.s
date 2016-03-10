  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  vandpd %xmm1, %xmm1, %xmm12       #  1     0     4      OPC=vandpd_xmm_xmm_xmm  
  callq .move_128_064_xmm1_r10_r11  #  2     0x4   5      OPC=callq_label         
  vpmovzxbq %xmm12, %xmm7           #  3     0x9   5      OPC=vpmovzxbq_xmm_xmm   
  cvttsd2sil %xmm7, %ebx            #  4     0xe   4      OPC=cvttsd2sil_r32_xmm  
  xorl %ebx, %ebx                   #  5     0x12  2      OPC=xorl_r32_r32        
  cmovnsw %r10w, %bx                #  6     0x14  5      OPC=cmovnsw_r16_r16     
  retq                              #  7     0x19  1      OPC=retq                
                                                                                  
.size target, .-target
