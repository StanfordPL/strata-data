  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label            
  vpbroadcastd %xmm6, %ymm10                    #  2     0x5   5      OPC=vpbroadcastd_ymm_xmm   
  vpmovzxwd %xmm10, %ymm7                       #  3     0xa   5      OPC=vpmovzxwd_ymm_xmm      
  vunpckhpd %xmm7, %xmm6, %xmm2                 #  4     0xf   4      OPC=vunpckhpd_xmm_xmm_xmm  
  cvtss2sil %xmm2, %ebx                         #  5     0x13  4      OPC=cvtss2sil_r32_xmm      
  callq .move_128_032_xmm2_eax_edx_r8d_r9d      #  6     0x17  5      OPC=callq_label            
  xchgw %bx, %r9w                               #  7     0x1c  4      OPC=xchgw_r16_r16          
  retq                                          #  8     0x20  1      OPC=retq                   
                                                                                                 
.size target, .-target
