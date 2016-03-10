  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label              
  vmovd %r11d, %xmm5                            #  2     0x5   5      OPC=vmovd_xmm_r32            
  movd %r11d, %xmm12                            #  3     0xa   5      OPC=movd_xmm_r32             
  vpunpckhqdq %xmm12, %xmm3, %xmm6              #  4     0xf   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  movd %r13d, %xmm7                             #  5     0x14  5      OPC=movd_xmm_r32             
  vsubsd %xmm7, %xmm3, %xmm3                    #  6     0x19  4      OPC=vsubsd_xmm_xmm_xmm       
  vaddsubpd %xmm3, %xmm3, %xmm1                 #  7     0x1d  4      OPC=vaddsubpd_xmm_xmm_xmm    
  movd %r10d, %xmm4                             #  8     0x21  5      OPC=movd_xmm_r32             
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  9     0x26  5      OPC=callq_label              
  retq                                          #  10    0x2b  1      OPC=retq                     
                                                                                                   
.size target, .-target
