  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vmovmskpd %xmm8, %r8d                           #  2     0x5   5      OPC=vmovmskpd_r32_xmm       
  vminpd %xmm11, %xmm11, %xmm5                    #  3     0xa   5      OPC=vminpd_xmm_xmm_xmm      
  vcvtsi2sdl %r8d, %xmm11, %xmm2                  #  4     0xf   5      OPC=vcvtsi2sdl_xmm_xmm_r32  
  vpbroadcastq %xmm8, %ymm11                      #  5     0x14  5      OPC=vpbroadcastq_ymm_xmm    
  vaddpd %xmm9, %xmm2, %xmm8                      #  6     0x19  5      OPC=vaddpd_xmm_xmm_xmm      
  movhlps %xmm11, %xmm10                          #  7     0x1e  4      OPC=movhlps_xmm_xmm         
  vaddss %xmm5, %xmm10, %xmm1                     #  8     0x22  4      OPC=vaddss_xmm_xmm_xmm      
  vbroadcastss %xmm9, %xmm10                      #  9     0x26  5      OPC=vbroadcastss_xmm_xmm    
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  10    0x2b  5      OPC=callq_label             
  retq                                            #  11    0x30  1      OPC=retq                    
                                                                                                    
.size target, .-target
