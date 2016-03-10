  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                     
.target:                                    #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label            
  movd %r9d, %xmm12                         #  2     0x5   5      OPC=movd_xmm_r32           
  vpbroadcastd %xmm12, %ymm8                #  3     0xa   5      OPC=vpbroadcastd_ymm_xmm   
  vunpckhpd %xmm8, %xmm8, %xmm1             #  4     0xf   5      OPC=vunpckhpd_xmm_xmm_xmm  
  vunpcklps %xmm8, %xmm2, %xmm11            #  5     0x14  5      OPC=vunpcklps_xmm_xmm_xmm  
  punpckhqdq %xmm11, %xmm1                  #  6     0x19  5      OPC=punpckhqdq_xmm_xmm     
  retq                                      #  7     0x1e  1      OPC=retq                   
                                                                                             
.size target, .-target
