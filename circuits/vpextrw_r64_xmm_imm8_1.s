  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                       
.target:                                    #        0     0      OPC=<label>                  
  minpd %xmm1, %xmm1                        #  1     0     4      OPC=minpd_xmm_xmm            
  vpmovzxbd %xmm1, %xmm5                    #  2     0x4   5      OPC=vpmovzxbd_xmm_xmm        
  xorl %ebx, %ebx                           #  3     0x9   2      OPC=xorl_r32_r32             
  vpunpckhqdq %xmm5, %xmm1, %xmm3           #  4     0xb   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  5     0xf   5      OPC=callq_label              
  callq .move_008_016_r8b_r9b_bx            #  6     0x14  5      OPC=callq_label              
  retq                                      #  7     0x19  1      OPC=retq                     
                                                                                               
.size target, .-target
