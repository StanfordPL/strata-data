  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  vmovsldup %xmm1, %xmm4                        #  1     0     4      OPC=vmovsldup_xmm_xmm  
  vpmovzxwd %xmm4, %xmm9                        #  2     0x4   5      OPC=vpmovzxwd_xmm_xmm  
  vmovshdup %xmm9, %xmm3                        #  3     0x9   5      OPC=vmovshdup_xmm_xmm  
  xorl %ebx, %ebx                               #  4     0xe   2      OPC=xorl_r32_r32       
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d  #  5     0x10  5      OPC=callq_label        
  addw %r10w, %bx                               #  6     0x15  4      OPC=addw_r16_r16       
  retq                                          #  7     0x19  1      OPC=retq               
                                                                                             
.size target, .-target
