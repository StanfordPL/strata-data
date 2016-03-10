  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                     
.target:                                    #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label            
  movd %r9d, %xmm5                          #  2     0x5   5      OPC=movd_xmm_r32           
  callq .move_128_64_xmm3_xmm12_xmm13       #  3     0xa   5      OPC=callq_label            
  vunpcklps %xmm2, %xmm5, %xmm1             #  4     0xf   4      OPC=vunpcklps_xmm_xmm_xmm  
  unpcklpd %xmm13, %xmm1                    #  5     0x13  5      OPC=unpcklpd_xmm_xmm       
  retq                                      #  6     0x18  1      OPC=retq                   
                                                                                             
.size target, .-target
